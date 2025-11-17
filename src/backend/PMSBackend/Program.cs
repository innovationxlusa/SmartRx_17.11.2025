using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.FileProviders;
using Microsoft.Extensions.Options;
using Microsoft.OpenApi.Models;
using PMSBackend.API;
using PMSBackend.API.Common;
using PMSBackend.Application;
using PMSBackend.Databases;
using PMSBackend.Databases.Data;
using PMSBackend.Domain.Entities;
using Swashbuckle.AspNetCore.Filters;


var builder = WebApplication.CreateBuilder(args);

//var certPath = @"C:\\certs\\lan-test-dev.pfx"; //Path.Combine(builder.Environment.ContentRootPath, "certs", "lan-dev.pfx");
//var certPath = @"C:\\certs\\smartrx-wan.pfx"; //Path.Combine(builder.Environment.ContentRootPath, "certs", "lan-dev.pfx");

//var certPassword = "Abc@1234";
//var certificate = new X509Certificate2(certPath, certPassword, X509KeyStorageFlags.MachineKeySet);

// Log environment information
Console.WriteLine($"========================================");
Console.WriteLine($"Environment: {builder.Environment.EnvironmentName}");
Console.WriteLine($"Loading appsettings.json and appsettings.{builder.Environment.EnvironmentName}.json");
Console.WriteLine($"========================================");

Console.WriteLine($"Connection string: {builder.Configuration.GetConnectionString("PMSDBConnection")}");

builder.WebHost.ConfigureKestrel(options =>
{
    // HTTP listener
    options.ListenAnyIP(7000); // Plain HTTP    
    // HTTPS listener
    //options.ListenAnyIP(8443, listenOptions =>
    //{
    //    listenOptions.UseHttps(certificate);
    //});
});

// Configuration loading hierarchy:
// 1. appsettings.json (base configuration)
// 2. appsettings.{Environment}.json (environment-specific, overrides base)
// 3. Environment variables (highest priority)
builder.Configuration
    .SetBasePath(Directory.GetCurrentDirectory())
    .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
    .AddJsonFile($"appsettings.{builder.Environment.EnvironmentName}.json", optional: true, reloadOnChange: true)
    .AddEnvironmentVariables(); // Also load from environment variables if set

builder.Services
            .AddPresentation()
            .AddApplication()
            .AddInfrastructure(builder.Configuration);

// Add services to the container.
builder.Services.AddControllers()
    .AddJsonOptions(options =>
    {
        options.JsonSerializerOptions.Encoder = System.Text.Encodings.Web.JavaScriptEncoder.UnsafeRelaxedJsonEscaping;
        options.JsonSerializerOptions.ReferenceHandler = System.Text.Json.Serialization.ReferenceHandler.IgnoreCycles;
        options.JsonSerializerOptions.WriteIndented = true;
    });
builder.Services.AddMediatR(config =>
{
    config.RegisterServicesFromAssemblyContaining<Program>();
});
// Add this to dependency injection
builder.Services.Configure<JwtSettings>(builder.Configuration.GetSection("JwtSettings"));
builder.Services.AddSingleton(resolver => resolver.GetRequiredService<IOptions<JwtSettings>>().Value);


// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
//builder.Services.AddSwaggerGen();
builder.Services.AddSwaggerGen(options =>
{
    options.SwaggerDoc("v1", new OpenApiInfo
    {
        Title = "My API",
        Version = "v1",
        Description = "API for My Application",
    });
    options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Type = SecuritySchemeType.Http,
        Scheme = "bearer",
        BearerFormat = "JWT",
        In = ParameterLocation.Header,
        Description = "JWT Authorization header. Example: 'Authorization: Bearer {token}'"
    });
    options.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type = ReferenceType.SecurityScheme,
                    Id = "Bearer"
                }
            },
            Array.Empty<string>()
        }
    });
    //options.AddSecurityDefinition("oauth2", new OpenApiSecurityScheme
    //{
    //    Description = "Standard Authorization header using the Bearer scheme (\"bearer {token}\")",
    //    In = ParameterLocation.Header,
    //    Name = "Authorization",
    //    Type = SecuritySchemeType.ApiKey
    //});

    options.OperationFilter<SecurityRequirementsOperationFilter>();
});

builder.Services.AddCors(options =>
{
    options.AddPolicy("CorsPolicy", policy =>
    {
        policy
            //.AllowAnyOrigin()
            .WithOrigins("http://localhost:3000",
                        "https://localhost:3001",
                        "https://192.168.40.112:3000",
                        "https://localhost:3000",
                        "https://192.168.40.112:3000",
                        "https://192.168.40.112:3001",
                        "https://192.168.40.112:4000",
                        "http://192.168.40.112:3000",
                        "http://192.168.40.112:3001",
                        "http://192.168.40.112:4000",
                        "https://192.168.40.112:5001",
                        "https://182.160.111.50:5001"
                        ) // 👈 specify allowed origins
            .AllowAnyHeader()
            .AllowAnyMethod()
            .WithExposedHeaders("X-Total-Count"); // 👈 allow cookies / auth
    });
});
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.Configure<ApiBehaviorOptions>(options =>
{
    options.InvalidModelStateResponseFactory = context =>
    {
        var errorString = string.Join(" | ",
                context.ModelState
                    .Where(e => e.Value.Errors.Count > 0)
                    .SelectMany(kvp => kvp.Value.Errors.Select(err => $"{kvp.Key.Replace("$.", "")}: {err.ErrorMessage}"))
            );

        var response = new
        {
            StatusCode = 400,
            Status = "Failed",
            Message = errorString
        };
        return new BadRequestObjectResult(response);
    };
});
builder.Logging.ClearProviders();
builder.Logging.AddConsole(); // 👈 log to console
builder.Logging.SetMinimumLevel(LogLevel.Debug); // Optional: set log level

var app = builder.Build();
app.UseMiddleware<ExceptionMiddleware>();

await DataSeeder.SeedAsync(app.Services);
await DataSeeder.SeedRoleDataAsync(app.Services);
await DataSeeder.SeedDataUserRoleAsync(app.Services);

app.UseCors("CorsPolicy");
app.MapGet("/", (ILogger<Program> logger) =>
{
    logger.LogInformation("Hello, this is a console log!");
    return "Hello World!";
});
var jwtSettings = app.Services.GetRequiredService<JwtSettings>();
JwtConfig.Initialize(jwtSettings);

// Log JWT configuration being used
Console.WriteLine($"========================================");
Console.WriteLine($"JWT Configuration Loaded:");
Console.WriteLine($"  Issuer: {jwtSettings.Issuer}");
Console.WriteLine($"  Audience: {jwtSettings.Audience}");
Console.WriteLine($"  Access Token Expiry: {jwtSettings.ExpiryMinutes} minutes");
Console.WriteLine($"  Refresh Token Expiry: {jwtSettings.RefreshTokenExpiryDays} days");
Console.WriteLine($"========================================");


app.Use(async (context, next) =>
{
    if (context.Request.Path.HasValue)
    {
        var originalPath = context.Request.Path.Value!;
        var normalizedPath = originalPath;

        while (normalizedPath.Contains("//", StringComparison.Ordinal))
        {
            normalizedPath = normalizedPath.Replace("//", "/");
        }

        if (!string.Equals(normalizedPath, originalPath, StringComparison.Ordinal))
        {
            context.Request.Path = new PathString(normalizedPath);
        }
    }

    await next();
});

app.UseStaticFiles(new StaticFileOptions
{
    FileProvider = new PhysicalFileProvider(Path.Combine(builder.Environment.ContentRootPath, "Files")),
    RequestPath = "/files"
});
app.UseStaticFiles(new StaticFileOptions
{
    FileProvider = new PhysicalFileProvider(Path.Combine(builder.Environment.ContentRootPath, "Photos")),
    RequestPath = "/photos"
});
app.UseStaticFiles(new StaticFileOptions
{
    FileProvider = new PhysicalFileProvider(Path.Combine(builder.Environment.ContentRootPath, "Logos")),
    RequestPath = "/logos"
});
app.UseDefaultFiles(new DefaultFilesOptions
{
    RequestPath = "/smartrx"
});
app.MapFallbackToFile("/smartrx/{*path:nonfile}", "smartrx/index.html");

app.UseRouting();
app.UseAuthentication();
app.UseAuthorization();
app.MapControllers();

app.Run();
