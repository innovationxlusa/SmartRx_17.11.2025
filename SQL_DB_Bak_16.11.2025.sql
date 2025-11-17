USE [master]
GO
/****** Object:  Database [SmartRxDB3]    Script Date: 11/16/2025 1:35:20 PM ******/

ALTER DATABASE [SmartRxDB3] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartRxDB3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartRxDB3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartRxDB3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartRxDB3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartRxDB3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartRxDB3] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartRxDB3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SmartRxDB3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartRxDB3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartRxDB3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartRxDB3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartRxDB3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartRxDB3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartRxDB3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartRxDB3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartRxDB3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SmartRxDB3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartRxDB3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartRxDB3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartRxDB3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartRxDB3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartRxDB3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmartRxDB3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartRxDB3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SmartRxDB3] SET  MULTI_USER 
GO
ALTER DATABASE [SmartRxDB3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartRxDB3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartRxDB3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartRxDB3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SmartRxDB3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SmartRxDB3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SmartRxDB3] SET QUERY_STORE = ON
GO
ALTER DATABASE [SmartRxDB3] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200)
GO
USE [SmartRxDB3]
GO
/****** Object:  User [shahanaz]    Script Date: 11/16/2025 1:35:20 PM ******/
CREATE USER [shahanaz] FOR LOGIN [shahanaz] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_AdviceFAQ]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_AdviceFAQ](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](1000) NOT NULL,
	[Answer] [nvarchar](4000) NOT NULL,
	[TagSearchKeyword] [nvarchar](4000) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[IconFileExtension] [nvarchar](10) NULL,
	[IconFileName] [nvarchar](300) NULL,
	[IconFilePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Configuration_AdviceFAQ] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_ChiefComplaint]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_ChiefComplaint](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Abbreviation] [nvarchar](100) NOT NULL,
	[FullForm] [nvarchar](100) NOT NULL,
	[Details] [nvarchar](1500) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_ChiefComplaint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_City]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_City](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nchar](5) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[CountryId] [bigint] NULL,
	[DistrictId] [bigint] NULL,
 CONSTRAINT [PK_Configuration_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Country]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Country](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Code] [nchar](3) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[CountryCode] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Configuration_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Department]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Department](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[SectionId] [bigint] NULL,
	[HospitalId] [bigint] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_DepartmentSection]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_DepartmentSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[HospitalId] [bigint] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_DepartmentSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Designation]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Designation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_Designation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_DiagnosisCenterWiseTest]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_DiagnosisCenterWiseTest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TestCenterId] [bigint] NOT NULL,
	[TestId] [bigint] NOT NULL,
	[DiagnosticCenterGivenTestName] [nvarchar](1000) NOT NULL,
	[DiagnosticCenterGivenPrice] [decimal](10, 2) NULL,
	[DiscountByAuthority] [decimal](10, 2) NULL,
	[Schedule] [nvarchar](1000) NULL,
	[ReportDeliveryTime] [nvarchar](1000) NULL,
	[SpecialNote] [nvarchar](1000) NULL,
	[Remarks] [nvarchar](1000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[PriceUnitId] [bigint] NULL,
	[TestCenterBranchId] [bigint] NULL,
 CONSTRAINT [PK_Configuration_DiagnosisCenterWiseTest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_District]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_District](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](2) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[DivisionId] [int] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Doctor]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Doctor](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Code] [nchar](10) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[BMDCRegNo] [nvarchar](max) NULL,
	[ChamberIds] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[EducationDegreeIds] [nvarchar](200) NULL,
	[Experiences] [nvarchar](max) NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[ProfessionalSummary] [nvarchar](max) NULL,
	[Rating] [decimal](18, 2) NULL,
	[SpecializedArea] [nvarchar](200) NULL,
	[YearOfExperiences] [int] NOT NULL,
	[ProfilePhotoName] [nvarchar](200) NULL,
	[ProfilePhotoPath] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Configuration_Doctor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_DoctorChamber]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_DoctorChamber](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[HospitalId] [bigint] NOT NULL,
	[DepartmentSectionId] [bigint] NULL,
	[DepartmentId] [bigint] NOT NULL,
	[CityId] [bigint] NOT NULL,
	[DoctorDesignationInChamberId] [bigint] NULL,
	[VisitingHour] [nvarchar](10) NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[DoctorSpecialization] [nvarchar](500) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[IsMainChamber] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ChamberAddress] [nvarchar](1500) NOT NULL,
	[ChamberCityId] [bigint] NOT NULL,
	[ChamberClosedOnDay] [nvarchar](100) NULL,
	[ChamberDescription] [nvarchar](500) NOT NULL,
	[ChamberEmail] [nvarchar](200) NULL,
	[ChamberEndTime] [nvarchar](6) NULL,
	[ChamberGoogleAddress] [nvarchar](2000) NOT NULL,
	[ChamberGoogleLocationLink] [nvarchar](2000) NOT NULL,
	[ChamberGoogleRating] [nvarchar](5) NULL,
	[ChamberName] [nvarchar](500) NOT NULL,
	[ChamberOtherDoctorsId] [nvarchar](50) NULL,
	[ChamberOverseasCaller] [nvarchar](50) NULL,
	[ChamberPostalCode] [nvarchar](20) NOT NULL,
	[ChamberStartTime] [nvarchar](6) NULL,
	[ChamberType] [nvarchar](max) NOT NULL,
	[ChamberVisitingHours] [nvarchar](10) NULL,
	[ChamberWhatsAppNumber] [nvarchar](25) NULL,
	[DoctorBookingMobileNos] [nvarchar](200) NULL,
	[Helpline_CallCenter] [nvarchar](15) NULL,
	[DoctorVisitingDaysInChamber] [nvarchar](400) NOT NULL,
 CONSTRAINT [PK_Configuration_DoctorChamber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Education]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Education](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[DegreeName] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](1500) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[InstitutionName] [nvarchar](200) NULL,
 CONSTRAINT [PK_Configuration_Education] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Hospital]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Hospital](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Address] [nvarchar](2000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[CityId] [bigint] NULL,
	[CloseDay] [nvarchar](20) NULL,
	[CloseTime] [nvarchar](20) NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[Fax] [nvarchar](300) NULL,
	[GoogleLocation] [nvarchar](3000) NULL,
	[GoogleRating] [nvarchar](10) NULL,
	[Mobile] [nvarchar](300) NULL,
	[OpenDay] [nvarchar](20) NULL,
	[OpenTime] [nvarchar](20) NULL,
	[Phone] [nvarchar](300) NULL,
	[Weekend] [nvarchar](20) NULL,
	[IsActive] [bit] NOT NULL,
	[Remarks] [nvarchar](1000) NULL,
	[WebAddress] [nvarchar](1000) NULL,
	[YearEstablished] [nvarchar](50) NULL,
	[DiagnosticCenterIcon] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](200) NULL,
	[Location] [nvarchar](100) NULL,
	[Branch] [nvarchar](500) NOT NULL,
	[IsMainBranch] [bit] NULL,
	[FileExtension] [nvarchar](10) NULL,
	[FileName] [nvarchar](300) NULL,
	[FilePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Configuration_Hospital] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Investigation]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Investigation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](5) NOT NULL,
	[TestName] [nvarchar](1000) NOT NULL,
	[TestDescription] [nvarchar](4000) NULL,
	[TestFullName] [nvarchar](1000) NULL,
	[TestShortName] [nvarchar](200) NULL,
	[TestNameByDiagnosticCenter] [nvarchar](1000) NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
	[PriceUnitId] [bigint] NULL,
	[NationalUnitPrice] [decimal](10, 2) NOT NULL,
	[NationalPriceUnitId] [bigint] NULL,
	[Speciality] [nvarchar](2000) NULL,
	[Comments] [nvarchar](2000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[Specimen] [nvarchar](500) NULL,
	[TestGenericName] [nvarchar](1000) NULL,
	[NationalPriceReference] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Configuration_Investigation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_InvestigationFAQ]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_InvestigationFAQ](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InvestigationId] [bigint] NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_InvestigationFAQ] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Medicine]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Medicine](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrandId] [bigint] NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[Slug] [nvarchar](400) NULL,
	[DosageFormId] [bigint] NOT NULL,
	[GenericId] [bigint] NOT NULL,
	[Strength] [nvarchar](500) NULL,
	[MeasurementUnitId] [bigint] NULL,
	[UnitPrice] [decimal](5, 2) NULL,
	[PriceInUnitId] [bigint] NULL,
	[PackageType] [nvarchar](300) NULL,
	[PackageSize] [nvarchar](100) NULL,
	[PackageQuantity] [nvarchar](100) NULL,
	[DAR] [nvarchar](300) NULL,
	[Indication] [nvarchar](300) NULL,
	[Pharmacology] [nvarchar](300) NULL,
	[DoseDescription] [nvarchar](500) NULL,
	[Administration] [nvarchar](300) NULL,
	[Contradiction] [nvarchar](300) NULL,
	[SideEffects] [nvarchar](300) NULL,
	[PrecautionsAndWarnings] [nvarchar](500) NULL,
	[PregnencyAndLactation] [nvarchar](500) NULL,
	[ModeOfAction] [nvarchar](1) NULL,
	[Interaction] [nvarchar](100) NULL,
	[OverdoseEffects] [nvarchar](200) NULL,
	[TherapeuticClass] [nvarchar](100) NULL,
	[StorageCondition] [nvarchar](300) NULL,
	[UserFor] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CompanyDiscountPercentage] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Configuration_Medicine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_MedicineBrand]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_MedicineBrand](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ManufacturerId] [bigint] NOT NULL,
	[BrandCode] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[BrandPublicId] [bigint] NOT NULL,
 CONSTRAINT [PK_Configuration_MedicineBrand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_MedicineDosageForm]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_MedicineDosageForm](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[ShortForm] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Configuration_MedicineDosageForm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_MedicineFAQ]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_MedicineFAQ](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[MedicineId] [bigint] NOT NULL,
 CONSTRAINT [PK_Configuration_MedicineFAQ] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_MedicineGeneric]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_MedicineGeneric](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_MedicineGeneric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_MedicineManufactureInfo]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_MedicineManufactureInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[OriginRegion] [nvarchar](100) NULL,
	[Importer] [nvarchar](200) NULL,
	[EstablishedDate] [datetime2](7) NULL,
	[Products] [nvarchar](4000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[CompanyUrl] [nvarchar](200) NULL,
	[FileExtension] [nvarchar](10) NULL,
	[FileName] [nvarchar](300) NULL,
	[FilePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Configuration_MedicineManufactureInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_PoliceStation]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_PoliceStation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CityId] [bigint] NOT NULL,
	[DistrictId] [bigint] NOT NULL,
	[CountryId] [bigint] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_PoliceStation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_PrescriptionSection]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_PrescriptionSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](2) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[HeadlineText] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_PrescriptionSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Reward]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Reward](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Heading] [nvarchar](150) NOT NULL,
	[Details] [nvarchar](500) NULL,
	[IsNegativePointAllowed] [bit] NOT NULL,
	[NonCashablePoints] [int] NOT NULL,
	[IsCashable] [bit] NOT NULL,
	[CashablePoints] [int] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Configuration_Reward] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_RewardBadge]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_RewardBadge](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[IsActive] [bit] NULL,
	[Heirarchy] [int] NOT NULL,
 CONSTRAINT [PK_Configuration_RewardBadge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_RewardBenefit]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_RewardBenefit](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[RewardId] [bigint] NOT NULL,
 CONSTRAINT [PK_Configuration_RewardBenefit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_SmartRxAcronym]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_SmartRxAcronym](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Acronym] [nvarchar](100) NULL,
	[Abbreviation] [nvarchar](500) NULL,
	[Details] [nvarchar](2000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[Elaboration] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Configuration_SmartRxAcronym] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Tags]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Tags](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TagShortName] [nvarchar](200) NOT NULL,
	[TagDescription] [nvarchar](1000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[TagPrescriptionSection] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Configuration_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Unit]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Unit](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](4) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MeasurementUnit] [nvarchar](100) NOT NULL,
	[Details] [nvarchar](500) NULL,
	[Description] [nvarchar](1000) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_Unit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_Vital]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_Vital](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](2) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ApplicableEntity] [nvarchar](200) NULL,
	[UnitId] [bigint] NOT NULL,
	[LowRange] [decimal](5, 2) NULL,
	[LowStatus] [nvarchar](15) NULL,
	[MidRange] [decimal](5, 2) NULL,
	[MidStatus] [nvarchar](15) NULL,
	[MidNextRange] [decimal](5, 2) NULL,
	[MidNextStatus] [nvarchar](15) NULL,
	[HighRange] [decimal](5, 2) NULL,
	[HighStatus] [nvarchar](15) NULL,
	[ExtremeRange] [decimal](5, 2) NULL,
	[ExtremeStatus] [nvarchar](15) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Configuration_Vital] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_VitalFAQ]    Script Date: 11/16/2025 1:35:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_VitalFAQ](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](1000) NOT NULL,
	[Answer] [nvarchar](4000) NOT NULL,
	[TagSearchKeyword] [nvarchar](4000) NOT NULL,
	[IconFileName] [nvarchar](300) NULL,
	[IconFilePath] [nvarchar](1000) NULL,
	[IconFileExtension] [nvarchar](10) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[VitalId] [bigint] NOT NULL,
 CONSTRAINT [PK_Configuration_VitalFAQ] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription_Upload]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription_Upload](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PrescriptionCode] [nchar](20) NOT NULL,
	[PatientId] [bigint] NULL,
	[SmartRxId] [bigint] NULL,
	[IsExistingPatient] [bit] NULL,
	[HasExistingRelative] [bit] NULL,
	[RelativePatientIds] [nvarchar](max) NULL,
	[FileName] [nvarchar](300) NOT NULL,
	[FilePath] [nvarchar](1000) NOT NULL,
	[FileExtension] [nvarchar](10) NOT NULL,
	[NumberOfFilesStoredForThisPrescription] [int] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[FolderId] [bigint] NOT NULL,
	[IsSmartRxRequested] [bit] NULL,
	[IsLocked] [bit] NULL,
	[LockedById] [bigint] NULL,
	[LockedDate] [datetime2](7) NULL,
	[IsReported] [bit] NULL,
	[ReportById] [bigint] NULL,
	[ReportDate] [datetime2](7) NULL,
	[ReportReason] [nvarchar](1000) NULL,
	[ReportDetails] [nvarchar](4000) NULL,
	[IsRecommended] [bit] NULL,
	[RecommendedById] [bigint] NULL,
	[RecommendedDate] [datetime2](7) NULL,
	[IsApproved] [bit] NULL,
	[ApprovedById] [bigint] NULL,
	[ApprovedDate] [datetime2](7) NULL,
	[IsCompleted] [bit] NULL,
	[CompletedById] [bigint] NULL,
	[CompletedDate] [datetime2](7) NULL,
	[Tag1] [nvarchar](50) NULL,
	[Tag2] [nvarchar](50) NULL,
	[Tag3] [nvarchar](50) NULL,
	[Tag4] [nvarchar](50) NULL,
	[Tag5] [nvarchar](50) NULL,
	[NextAppoinmentDate] [datetime2](7) NULL,
	[NextAppoinmentTime] [nvarchar](10) NULL,
	[DiscountPercentageOnMedicineByDoctor] [decimal](5, 2) NULL,
	[DiscountPercentageOnInvestigationByDoctor] [decimal](5, 2) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[PrescriptionDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Prescription_Upload] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription_UserWiseFolder]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription_UserWiseFolder](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentFolderId] [bigint] NULL,
	[FolderHierarchy] [varchar](50) NOT NULL,
	[FolderName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[UserId] [bigint] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[PatientId] [bigint] NULL,
 CONSTRAINT [PK_Prescription_UserWiseFolder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Security_PMSRole]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security_PMSRole](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsSelfService] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Security_PMSRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Security_PMSUser]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security_PMSUser](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserCode] [nvarchar](10) NOT NULL,
	[UserName] [nvarchar](300) NOT NULL,
	[Password] [nvarchar](300) NULL,
	[MobileNo] [nvarchar](50) NOT NULL,
	[GoogleId] [nvarchar](200) NULL,
	[FacebookId] [nvarchar](200) NULL,
	[TwitterId] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[AuthMethod] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[EmployeeCode] [nvarchar](10) NULL,
	[Gender] [int] NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedById] [bigint] NULL,
	[SmartRxUserEntityId] [bigint] NULL,
 CONSTRAINT [PK_Security_PMSUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Security_PMSUserWiseRole]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security_PMSUserWiseRole](
	[UserId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_Security_PMSUserWiseRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Security_RefreshToken]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security_RefreshToken](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Token] [nvarchar](500) NOT NULL,
	[JwtId] [nvarchar](500) NOT NULL,
	[IsUsed] [bit] NOT NULL,
	[IsRevoked] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ExpiryDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Security_RefreshToken] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_Master]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_Master](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[ChiefComplaintIds] [nvarchar](max) NOT NULL,
	[NextAppoinmentDate] [datetime2](7) NULL,
	[NextAppoinmentTime] [varchar](10) NULL,
	[DiscountPercentageOnMedicineByDoctor] [decimal](5, 2) NULL,
	[DiscountPercentageOnInvestigationByDoctor] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](max) NULL,
	[IsLocked] [bit] NULL,
	[LockedById] [bigint] NULL,
	[LockedDate] [datetime2](7) NULL,
	[IsReported] [bit] NULL,
	[ReportById] [bigint] NULL,
	[ReportDate] [datetime2](7) NULL,
	[ReportReason] [varchar](500) NULL,
	[ReportDetails] [varchar](4000) NULL,
	[IsRecommended] [bit] NULL,
	[RecommendedById] [bigint] NULL,
	[RecommendedDate] [datetime2](7) NULL,
	[IsApproved] [bit] NULL,
	[ApprovedById] [bigint] NULL,
	[ApprovedDate] [datetime2](7) NULL,
	[IsCompleted] [bit] NULL,
	[CompletedById] [bigint] NULL,
	[CompletedDate] [datetime2](7) NULL,
	[IsRejected] [bit] NULL,
	[RejectedById] [bigint] NULL,
	[RejectedDate] [datetime2](7) NULL,
	[RejectionRemarks] [nvarchar](max) NULL,
	[IsExistingPatient] [bit] NULL,
	[HasAnyRelative] [bit] NULL,
	[Tag1] [nvarchar](50) NULL,
	[Tag2] [nvarchar](50) NULL,
	[Tag3] [nvarchar](50) NULL,
	[Tag4] [nvarchar](50) NULL,
	[Tag5] [nvarchar](50) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[HasInvestigationFavourite] [bit] NULL,
	[HasMedicineFavourite] [bit] NULL,
	[PrescriptionId] [bigint] NOT NULL,
	[PrescriptionDate] [datetime2](7) NULL,
 CONSTRAINT [PK_SmartRx_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientAdvice]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientAdvice](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[PrescriptionId] [bigint] NOT NULL,
	[Advice] [nvarchar](max) NOT NULL,
	[AdviceKeywordToRecommend] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_SmartRx_PatientAdvice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientChiefComplaint]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientChiefComplaint](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[UploadedPrescriptionId] [bigint] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SmartRx_PatientChiefComplaint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientDoctor]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientDoctor](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[PrescriptionId] [bigint] NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[ChamberFee] [decimal](18, 2) NULL,
	[DoctorRating] [decimal](5, 2) NULL,
	[Comments] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[ActiveChamberId] [bigint] NULL,
	[ChamberFeeMeasurementUnitId] [bigint] NULL,
	[ChamberWaitTimeHour] [nvarchar](50) NULL,
	[ChamberWaitTimeMinute] [int] NULL,
	[ConsultingDurationInMinutes] [int] NULL,
	[OtherExpense] [decimal](18, 2) NULL,
	[TransportExpense] [decimal](18, 2) NULL,
	[TravelTimeMinute] [decimal](18, 2) NULL,
 CONSTRAINT [PK_SmartRx_PatientDoctor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientHistory]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[PrescriptionId] [bigint] NOT NULL,
	[Details] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[Title] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_SmartRx_PatientHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientInvestigation]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientInvestigation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[PrescriptionId] [bigint] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[DiscountByAuthority] [decimal](10, 2) NOT NULL,
	[DiagnosticCenterWiseTestId] [bigint] NULL,
	[IsCompleted] [bit] NOT NULL,
	[Remarks] [nvarchar](1000) NULL,
	[Result] [nvarchar](1000) NULL,
	[TestDate] [datetime2](7) NOT NULL,
	[TestPrice] [decimal](10, 2) NULL,
	[TestId] [bigint] NULL,
	[UserSelectedTestCenterIds] [nvarchar](100) NULL,
	[PriceUnitId] [bigint] NULL,
	[Wishlist] [nvarchar](100) NULL,
	[DoctorRecommendedTestCenterIds] [nvarchar](max) NULL,
 CONSTRAINT [PK_SmartRx_PatientInvestigation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientMedicine]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientMedicine](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[PrescriptionId] [bigint] NOT NULL,
	[DurationOfContinuationCount] [int] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[MedicineId] [bigint] NOT NULL,
	[DescriptionForMoreThanRegularDose] [nvarchar](1000) NULL,
	[Dose10InADay] [decimal](5, 2) NOT NULL,
	[Dose11InADay] [decimal](5, 2) NOT NULL,
	[Dose12InADay] [decimal](5, 2) NOT NULL,
	[Dose1InADay] [decimal](5, 2) NOT NULL,
	[Dose2InADay] [decimal](5, 2) NOT NULL,
	[Dose3InADay] [decimal](5, 2) NOT NULL,
	[Dose4InADay] [decimal](5, 2) NOT NULL,
	[Dose5InADay] [decimal](5, 2) NOT NULL,
	[Dose6InADay] [decimal](5, 2) NOT NULL,
	[Dose7InADay] [decimal](5, 2) NOT NULL,
	[Dose8InADay] [decimal](5, 2) NOT NULL,
	[Dose9InADay] [decimal](5, 2) NOT NULL,
	[DurationOfContinuation] [nvarchar](100) NOT NULL,
	[DurationOfContinuationEndDate] [datetime2](7) NOT NULL,
	[DurationOfContinuationStartDate] [datetime2](7) NOT NULL,
	[FrequencyInADay] [nvarchar](50) NULL,
	[IsBeforeMeal] [bit] NULL,
	[IsMoreThanRegularDose] [bit] NULL,
	[Restrictions] [nvarchar](1000) NULL,
	[Rules] [nvarchar](1000) NULL,
	[Wishlist] [nvarchar](100) NULL,
 CONSTRAINT [PK_SmartRx_PatientMedicine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientOtherExpense]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientOtherExpense](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[PrescriptionId] [bigint] NOT NULL,
	[ExpenseName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[CurrencyUnitId] [bigint] NULL,
	[ExpenseDate] [datetime2](7) NOT NULL,
	[ExpenseNotes] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_SmartRx_PatientOtherExpense] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientProfile]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientProfile](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientCode] [nchar](10) NOT NULL,
	[FirstName] [nvarchar](300) NOT NULL,
	[LastName] [nvarchar](300) NOT NULL,
	[NickName] [nvarchar](200) NULL,
	[Age] [decimal](18, 2) NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[BloodGroup] [int] NULL,
	[Height] [nvarchar](10) NOT NULL,
	[PhoneNumber] [nvarchar](40) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[ProfilePhotoName] [nvarchar](200) NULL,
	[ProfilePhotoPath] [nvarchar](2000) NULL,
	[Address] [nvarchar](2000) NULL,
	[PoliceStationId] [bigint] NULL,
	[CityId] [bigint] NULL,
	[ExistingPatientId] [bigint] NULL,
	[PostalCode] [nvarchar](20) NULL,
	[EmergencyContact] [nvarchar](max) NULL,
	[MaritalStatus] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[IsExistingPatient] [bit] NOT NULL,
	[IsRelative] [bit] NOT NULL,
	[Profession] [nvarchar](max) NULL,
	[RelationToPatient] [nvarchar](max) NULL,
	[RelatedToPatientId] [bigint] NULL,
	[HeightFeet] [int] NULL,
	[HeightInches] [decimal](18, 2) NULL,
	[HeightMeasurementUnitId] [bigint] NULL,
	[Weight] [decimal](18, 2) NOT NULL,
	[WeightMeasurementUnitId] [bigint] NULL,
	[ProfileProgress] [int] NOT NULL,
	[AgeMonth] [int] NULL,
	[AgeYear] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_SmartRx_PatientProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientRelatives]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientRelatives](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[PatientRelativeId] [bigint] NULL,
	[SmartRx_MasterId] [bigint] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_SmartRx_PatientRelatives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientReward]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientReward](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NULL,
	[PrescriptionId] [bigint] NULL,
	[PatientId] [bigint] NOT NULL,
	[BadgeId] [bigint] NOT NULL,
	[EarnedNonCashablePoints] [decimal](18, 2) NOT NULL,
	[ConsumedNonCashablePoints] [decimal](18, 2) NOT NULL,
	[TotalNonCashablePoints] [decimal](18, 2) NOT NULL,
	[EarnedCashablePoints] [decimal](18, 2) NOT NULL,
	[ConsumedCashablePoints] [decimal](18, 2) NOT NULL,
	[TotalCashablePoints] [decimal](18, 2) NOT NULL,
	[ConvertedCashableToMoney] [decimal](18, 2) NULL,
	[TotalMoney] [decimal](18, 2) NULL,
	[EncashedMoney] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[ConvertedCashableToNonCashablePoints] [decimal](18, 2) NOT NULL,
	[ConvertedNonCashableToCashablePoints] [decimal](18, 2) NOT NULL,
	[RewardId] [bigint] NOT NULL,
 CONSTRAINT [PK_SmartRx_PatientReward] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientVitals]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientVitals](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[PrescriptionId] [bigint] NOT NULL,
	[VitalId] [bigint] NOT NULL,
	[VitalValue] [decimal](5, 2) NOT NULL,
	[VitalStatus] [nvarchar](50) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
	[PatientId] [bigint] NOT NULL,
	[HeightFeet] [int] NULL,
	[HeightInches] [decimal](18, 2) NULL,
 CONSTRAINT [PK_SmartRx_PatientVitals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_PatientWishlist]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_PatientWishlist](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[PrescriptionId] [bigint] NOT NULL,
	[WishListType] [nvarchar](50) NOT NULL,
	[PatientMedicineId] [bigint] NULL,
	[PatientTestId] [bigint] NULL,
	[PatientWishlistMedicineId] [bigint] NULL,
	[PatientRecommendedTestCenterId] [bigint] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_SmartRx_PatientWishlist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_ReferredConsultant]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_ReferredConsultant](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SmartRxMasterId] [bigint] NOT NULL,
	[ReferredConsultantId] [bigint] NULL,
	[ReferredBy] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_SmartRx_ReferredConsultant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartRx_RewardPointConversions]    Script Date: 11/16/2025 1:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartRx_RewardPointConversions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FromType] [int] NOT NULL,
	[ToType] [int] NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [bigint] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [bigint] NULL,
 CONSTRAINT [PK_SmartRx_RewardPointConversions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Configuration_AdviceFAQ] ON 
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (2, N'কেন আপনার দাঁত ব্রাশ করা গুরুত্বপূর্ণ?', N'দাঁত পরিষ্কার রাখা এবং গহ্বর প্রতিরোধ করা।', N'দাঁত, দাঁতপরিষ্কার, দাঁতব্রাশ, Teeth, TeethClean, ToothBrush', CAST(N'2025-06-30T15:30:43.1166667' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ToothIcon.svg', N'photos\Advice_FAQ_ToothIcon.svg')
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (3, N'কত ঘন ঘন আমার দাঁত ব্রাশ করা উচিত?', N'দিনে দুবার, সকাল ও রাতে।', N'দাঁত, দাঁতপরিষ্কার, দাঁতব্রাশ, দাঁতপরিষ্কারপুনরাবৃত্তিরহার, Teeth, TeethClean, ToothBrush, ToothCleaningFrequency', CAST(N'2025-06-30T15:30:43.1300000' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ToothIcon.svg', N'photos\Advice_FAQ_ToothIcon.svg')
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (4, N'কেন আমার ফ্লস করা দরকার?', N'ফ্লসিং দাঁতের মধ্যে আটকে থাকা খাবার দূর করে এবং মাড়ির সমস্যা প্রতিরোধ করে।', N'দাঁত, দাঁতপরিষ্কার, দাঁতফ্লস, ফ্লস, Teeth, TeethClean, TeethFloss, Floss, ToothFloss', CAST(N'2025-06-30T15:30:43.1366667' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ToothIcon.svg', N'photos\Advice_FAQ_ToothIcon.svg')
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (5, N'গহ্বরের কারণ কী?', N'মুখের ব্যাকটেরিয়া যা খাবার এবং পানীয় থেকে শর্করা খায়।', N'দাঁত, মুখেরব্যাকটেরিয়া, Teeth, MouthBacteria', CAST(N'2025-06-30T15:30:43.1466667' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ToothIcon.svg', N'photos\Advice_FAQ_ToothIcon.svg')
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (6, N'কত ঘন ঘন আমার ডেন্টিস্টের কাছে যাওয়া উচিত?', N'বছরে অন্তত একবার চেকআপ এবং পরিষ্কারের জন্য। এই প্রশ্নের উত্তর প্রতিটি রোগীর জন্য ভিন্ন। ভাল সামগ্রিক মৌখিক স্বাস্থ্য সহ একটি রোগীর জন্য, প্রতি চার থেকে ছয় মাস ভাল মৌখিক স্বাস্থ্যবিধি বজায় রাখার জন্য যথেষ্ট। যাইহোক, যে সমস্ত রোগীরা পিরিয়ডন্টাল রোগ এবং অন্যান্য মৌখিক স্বাস্থ্য সংক্রান্ত উদ্বেগে ভুগছেন তাদের মুখের স্বাস্থ্যের একটি মানসম্পন্ন অবস্থা অর্জন না হওয়া পর্যন্ত আরও নিয়মিত দাঁতের ডাক্তারের কাছে যেতে হবে। পরের বার চেকআপের জন্য আপনার ডেন্টিস্টের সাথে কথা বলতে ভুলবেন না।', N'দাঁত, ডেন্টিস্ট, মৌখিকস্বাস্থ্য, Teeth, DentalDisease, MouthHealth', CAST(N'2025-06-30T15:30:43.1600000' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ToothIcon.svg', N'photos\Advice_FAQ_ToothIcon.svg')
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (7, N'কিভাবে মাড়ি রোগ প্রতিরোধ করতে পারি?', N'মাড়ির রোগটি অবিশ্বাস্যভাবে উদ্বেগজনক হতে পারে, বিশেষ করে যদি এটি দীর্ঘস্থায়ী হয় এবং সময়মতো চিকিত্সা না করা হয়। পরবর্তীকালে, মাড়ির রোগের সাথে মোকাবিলা করার সর্বোত্তম উপায় হল এটিকে প্রথম স্থানে হওয়া থেকে প্রতিরোধ করা। মাড়ির রোগ প্রতিরোধ করার এবং দাঁতের ভাল স্বাস্থ্য বজায় রাখার সর্বোত্তম উপায় হল ভাল ওরাল হাইজিন অনুশীলন করা, যার মধ্যে রয়েছে দিনে কয়েকবার পুরো মুখ ব্রাশ করা, ফ্লস করা এবং প্রতিদিন মাউথওয়াশ ব্যবহার করা এবং নিয়মিত ডেন্টিস্টের কাছে যাওয়া।', N'দাঁত, মাড়িররোগ, মাড়িরোগ, Teeth, Gumdisease, TeethDiseases, ToothDiseases', CAST(N'2025-06-30T15:30:43.1733333' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ToothIcon.svg', N'photos\Advice_FAQ_ToothIcon.svg')
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (8, N'মুখের ক্যান্সারের লক্ষণ কি?', N'আমাদের বয়স বাড়ার সাথে সাথে মুখের ক্যান্সারের ঝুঁকি বাড়তে পারে, যে কারণে মুখের ক্যান্সারের লক্ষণগুলি বোঝা এবং মাঝে মাঝে তাদের পরীক্ষা করা গুরুত্বপূর্ণ। মুখের ক্যান্সারের সবচেয়ে উল্লেখযোগ্য লক্ষণগুলির মধ্যে রয়েছে ঘা, পিণ্ড বা বাম্প যা মুখের ভিতর বিকশিত হয়, আলগা দাঁত, মুখ বা কানে ব্যথা এবং মুখের ভিতরে বিবর্ণতা। মুখের ক্যান্সার আছে কিনা এমন উদ্বেগ থাকলে একজন ডেন্টিস্টের সাথে কথা বলতে ভুলবেন না।', N'দাঁত, দাঁতপরিষ্কার, মুখেরক্যান্সার, মুখেরক্যান্সারলক্ষণ, মুখেরক্যান্সারেরলক্ষণ, Teeth, TeethClean, ToothBrush, MouthCancer, MouthCancerSymptom', CAST(N'2025-06-30T15:30:43.1900000' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ToothIcon.svg', N'photos\Advice_FAQ_ToothIcon.svg')
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (9, N'পরিবেশগত এলার্জি কি?', N'পরিবেশগত অ্যালার্জি হল আপনার পরিবেশের এমন পদার্থ যা আপনার ইমিউন সিস্টেমকে অতিরিক্ত প্রতিক্রিয়া দেখায়। সাধারণত, এই পদার্থগুলি - যাকে অ্যালার্জেন বলা হয়।', N'এলার্জি, পরিবেশগতঅ্যালার্জি, অ্যালার্জেন, Allergy, EnvironmentalAllergy, Allergen', CAST(N'2025-06-30T15:39:47.4300000' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ColdTherapy.svg', N'photos\Advice_FAQ_ColdTherapy.svg')
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (10, N'পরিবেশগত এলার্জি কাদের প্রভাবিত করে?', N'পরিবেশগত অ্যালার্জি যে কাউকে প্রভাবিত করতে পারে।
আপনার জৈবিক পিতামাতার পরিবেশগত অ্যালার্জি থাকলে আপনার পরিবেশগত অ্যালার্জি হওয়ার বা বিকাশের সম্ভাবনা বেশি।', N'এলার্জি, পরিবেশগতঅ্যালার্জি, অ্যালার্জেন, Allergy, EnvironmentalAllergy, Allergen, AllergyImpact, AllergyAffected, AllergyEffect', CAST(N'2025-06-30T15:39:47.4433333' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ColdTherapy.svg', N'photos\Advice_FAQ_ColdTherapy.svg')
GO
INSERT [dbo].[Configuration_AdviceFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IconFileExtension], [IconFileName], [IconFilePath]) VALUES (11, N'পরিবেশগত এলার্জি শরীরকে কিভাবে প্রভাবিত করে?', N'পরিবেশগত এলার্জি একটি এলার্জি প্রতিক্রিয়া সৃষ্টি করে। অ্যালার্জির প্রতিক্রিয়া হল অ্যালার্জেনের প্রতি আপনার শরীরের প্রতিক্রিয়া। আপনি এক বা একাধিক অ্যালার্জেনের প্রতি সংবেদনশীল হতে পারেন।', N'এলার্জি, পরিবেশগতঅ্যালার্জি, অ্যালার্জেন, এলার্জিপ্রতিক্রিয়া, Allergy, EnvironmentalAllergy, Allergen, AllergyImpact, AllergyAffected, AllergyEffect, AllergyReaction', CAST(N'2025-06-30T15:39:47.4500000' AS DateTime2), 2, NULL, NULL, N'.svg', N'Advice_FAQ_ColdTherapy.svg', N'photos\Advice_FAQ_ColdTherapy.svg')
GO
SET IDENTITY_INSERT [dbo].[Configuration_AdviceFAQ] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_City] ON 
GO
INSERT [dbo].[Configuration_City] ([Id], [Name], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CountryId], [DistrictId]) VALUES (1, N'Dhaka', N'00001', CAST(N'2025-05-29T13:02:21.3800000' AS DateTime2), 2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_City] ([Id], [Name], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CountryId], [DistrictId]) VALUES (2, N'Rajshahi', N'00002', CAST(N'2025-05-29T13:02:36.0600000' AS DateTime2), 2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_City] ([Id], [Name], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CountryId], [DistrictId]) VALUES (3, N'Barishal', N'00003', CAST(N'2025-05-29T13:02:44.5800000' AS DateTime2), 2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_City] ([Id], [Name], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CountryId], [DistrictId]) VALUES (4, N'Chattagram', N'00004', CAST(N'2025-05-29T13:03:02.6500000' AS DateTime2), 2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_City] ([Id], [Name], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CountryId], [DistrictId]) VALUES (5, N'Khulna', N'00005', CAST(N'2025-05-29T13:03:11.6800000' AS DateTime2), 2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_City] ([Id], [Name], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CountryId], [DistrictId]) VALUES (6, N'Nayabazar', N'00006', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_City] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Country] ON 
GO
INSERT [dbo].[Configuration_Country] ([Id], [Name], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CountryCode]) VALUES (1, N'Bangladesh', N'001', CAST(N'2025-05-29T13:00:03.0900000' AS DateTime2), 2, NULL, NULL, N'+880')
GO
INSERT [dbo].[Configuration_Country] ([Id], [Name], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CountryCode]) VALUES (2, N'Chaina', N'002', CAST(N'2025-05-29T13:00:22.5233333' AS DateTime2), 2, NULL, NULL, N'+86')
GO
SET IDENTITY_INSERT [dbo].[Configuration_Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Department] ON 
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, N'00001', N'Emergency Department (ED)', NULL, 11, CAST(N'2025-05-29T13:55:07.9933333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, N'00002', N'Cardiology', NULL, 11, CAST(N'2025-05-29T13:55:08.0200000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, N'00003', N'Neurology', NULL, 11, CAST(N'2025-05-29T13:55:08.0200000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, N'00004', N'Pediatrics', NULL, 11, CAST(N'2025-05-29T13:55:08.0233333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, N'00005', N'Obstetrics and Gynecology', NULL, 11, CAST(N'2025-05-29T13:55:08.0233333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, N'00006', N'Oncology', NULL, 11, CAST(N'2025-05-29T13:55:08.0266667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (7, N'00007', N'Orthopedics', NULL, 11, CAST(N'2025-05-29T13:55:08.0266667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, N'00008', N'Radiology', NULL, 11, CAST(N'2025-05-29T13:55:08.0300000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, N'00009', N'Pathology', NULL, 11, CAST(N'2025-05-29T13:55:08.0300000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, N'00010', N'General Surgery', NULL, 11, CAST(N'2025-05-29T13:55:08.0333333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (11, N'00011', N'Urology', NULL, 11, CAST(N'2025-05-29T13:55:08.0333333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (12, N'00012', N'Dermatology', NULL, 11, CAST(N'2025-05-29T13:55:08.0366667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (13, N'00013', N'Gastroenterology', NULL, 11, CAST(N'2025-05-29T13:55:08.0400000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (14, N'00014', N'Nephrology', NULL, 11, CAST(N'2025-05-29T13:55:08.0400000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (15, N'00015', N'Pulmonology', NULL, 11, CAST(N'2025-05-29T13:55:08.0433333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (16, N'00016', N'Psychiatry', NULL, 11, CAST(N'2025-05-29T13:55:08.0433333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (17, N'00017', N'Endocrinology', NULL, 11, CAST(N'2025-05-29T13:55:08.0433333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (18, N'00018', N'Rheumatology', NULL, 11, CAST(N'2025-05-29T13:55:08.0466667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (19, N'00019', N'Anesthesiology', NULL, 11, CAST(N'2025-05-29T13:55:08.0466667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (20, N'00020', N'Intensive Care Unit (ICU)', NULL, 11, CAST(N'2025-05-29T13:55:08.0466667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (21, N'00021', N'Infectious Diseases', NULL, 11, CAST(N'2025-05-29T13:55:08.0500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (22, N'00022', N'Ophthalmology', NULL, 11, CAST(N'2025-05-29T13:55:08.0500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (23, N'00023', N'ENT (Otorhinolaryngology)', NULL, 11, CAST(N'2025-05-29T13:55:08.0500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (24, N'00024', N'Hematology', NULL, 11, CAST(N'2025-05-29T13:55:08.0500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (25, N'00025', N'Physical Medicine and Rehab', NULL, 11, CAST(N'2025-05-29T13:55:08.0533333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Department] ([Id], [Code], [Name], [SectionId], [HospitalId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (26, N'00026', N'Eye', NULL, 75, CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Designation] ON 
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, N'00001', N'Associate Professor', CAST(N'2025-05-29T14:56:36.8300000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, N'00002', N'Medicine Specialist', CAST(N'2025-05-29T14:56:36.8366667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, N'00003', N'Consultant', CAST(N'2025-05-29T14:56:36.8433333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, N'00004', N'Assistant Professor', CAST(N'2025-05-29T14:56:36.8433333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, N'00005', N'Professor', CAST(N'2025-05-29T14:56:36.8466667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, N'00006', N'Head of the department', CAST(N'2025-05-29T14:56:36.8466667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (7, N'00007', N'Chief', CAST(N'2025-05-29T14:56:36.8466667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, N'00008', N'Medical Officer', CAST(N'2025-05-29T14:56:36.8500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, N'00009', N'Associate Consultant', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Designation] ([Id], [Code], [Name], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, N'00010', N'Sub Asst. Community Medical Officer', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_Designation] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ON 
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (3, 17, 1, N'Complete Blood Count', CAST(500.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), N'10AM', NULL, NULL, NULL, CAST(N'2025-06-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, 15)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (4, 17, 10, N'TC, DC, Hb, ESR,Combined', CAST(1000.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, 15)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (5, 17, 11, N'ESR', CAST(800.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, 15)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (6, 17, 12, N'Haemoglobin', CAST(200.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, 15)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (8, 11, 1, N'CBC', CAST(300.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, CAST(N'2025-07-08T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (10, 11, 10, N'TC, DC, Hb, ESR, Combined', CAST(600.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-08T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (11, 11, 11, N'ESR', CAST(500.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-08T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (12, 11, 12, N'Haemoglobin', CAST(200.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-08T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (13, 46, 1, N'Complete Blood Count', CAST(800.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), N'10AM', NULL, NULL, NULL, CAST(N'2025-06-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (14, 46, 10, N'TC, DC, Hb, ESR,Combined', CAST(1200.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (15, 46, 11, N'ESR', CAST(700.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (16, 46, 12, N'Haemoglobin', CAST(400.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (17, 50, 1, N'Complete Blood Count', CAST(800.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), N'10AM', NULL, NULL, NULL, CAST(N'2025-06-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, 23)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (18, 50, 10, N'TC, DC, Hb, ESR,Combined', CAST(1200.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, 23)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (19, 50, 11, N'ESR', CAST(700.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, 23)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (20, 50, 12, N'Haemoglobin', CAST(400.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, 23)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (21, 50, 13, N'Urine Routine Examination', CAST(1100.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-17T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id], [TestCenterId], [TestId], [DiagnosticCenterGivenTestName], [DiagnosticCenterGivenPrice], [DiscountByAuthority], [Schedule], [ReportDeliveryTime], [SpecialNote], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PriceUnitId], [TestCenterBranchId]) VALUES (22, 50, 14, N'Urine Culture', CAST(460.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-16T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 17, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_DiagnosisCenterWiseTest] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_District] ON 
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, N'43', N'Dinajpur', 1, CAST(N'2025-06-11T23:34:01.2934104' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, N'44', N'Gaibandha', 1, CAST(N'2025-06-11T23:34:01.2934184' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, N'45', N'Kurigram', 1, CAST(N'2025-06-11T23:34:01.2934187' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, N'46', N'Lalmonirhat', 1, CAST(N'2025-06-11T23:34:01.2934189' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, N'47', N'Nilphamari', 1, CAST(N'2025-06-11T23:34:01.2934190' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, N'48', N'Panchagarh', 1, CAST(N'2025-06-11T23:34:01.2934207' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (7, N'49', N'Rangpur', 1, CAST(N'2025-06-11T23:34:01.2934209' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, N'50', N'Thakurgaon', 1, CAST(N'2025-06-11T23:34:01.2934211' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, N'35', N'Bogra', 2, CAST(N'2025-06-11T23:34:01.2934213' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, N'36', N'Joypurhat', 2, CAST(N'2025-06-11T23:34:01.2934216' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (11, N'37', N'Naogaon', 2, CAST(N'2025-06-11T23:34:01.2934218' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (12, N'38', N'Natore', 2, CAST(N'2025-06-11T23:34:01.2934220' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (13, N'39', N'Chapainawabganj', 2, CAST(N'2025-06-11T23:34:01.2934222' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (14, N'40', N'Pabna', 2, CAST(N'2025-06-11T23:34:01.2934237' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (15, N'41', N'Rajshahi', 2, CAST(N'2025-06-11T23:34:01.2934238' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (16, N'42', N'Sirajganj', 2, CAST(N'2025-06-11T23:34:01.2934264' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (17, N'25', N'Bagerhat', 3, CAST(N'2025-06-11T23:34:01.2934266' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (18, N'26', N'Chuadanga', 3, CAST(N'2025-06-11T23:34:01.2934269' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (19, N'27', N'Jashore', 3, CAST(N'2025-06-11T23:34:01.2934271' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (20, N'28', N'Jhenaidah', 3, CAST(N'2025-06-11T23:34:01.2934273' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (21, N'29', N'Khulna', 3, CAST(N'2025-06-11T23:34:01.2934275' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (22, N'30', N'Kushtia', 3, CAST(N'2025-06-11T23:34:01.2934277' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (23, N'31', N'Magura', 3, CAST(N'2025-06-11T23:34:01.2934278' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (24, N'32', N'Meherpur', 3, CAST(N'2025-06-11T23:34:01.2934284' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (25, N'33', N'Narail', 3, CAST(N'2025-06-11T23:34:01.2934285' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (26, N'34', N'Satkhira', 3, CAST(N'2025-06-11T23:34:01.2934287' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (27, N'55', N'Barguna', 4, CAST(N'2025-06-11T23:34:01.2934302' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (28, N'56', N'Barishal', 4, CAST(N'2025-06-11T23:34:01.2934304' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (29, N'57', N'Bhola', 4, CAST(N'2025-06-11T23:34:01.2934306' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (30, N'58', N'Jhalokati', 4, CAST(N'2025-06-11T23:34:01.2934307' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (31, N'59', N'Patuakhali', 4, CAST(N'2025-06-11T23:34:01.2934309' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (32, N'60', N'Pirojpur', 4, CAST(N'2025-06-11T23:34:01.2934311' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (33, N'61', N'Jamalpur', 5, CAST(N'2025-06-11T23:34:01.2934313' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (34, N'62', N'Mymensingh', 5, CAST(N'2025-06-11T23:34:01.2934317' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (35, N'63', N'Netrokona', 5, CAST(N'2025-06-11T23:34:01.2934319' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (36, N'64', N'Sherpur', 5, CAST(N'2025-06-11T23:34:01.2934321' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (37, N'01', N'Dhaka', 6, CAST(N'2025-06-11T23:34:01.2934323' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (38, N'02', N'Faridpur', 6, CAST(N'2025-06-11T23:34:01.2934325' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (39, N'03', N'Gazipur', 6, CAST(N'2025-06-11T23:34:01.2934341' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (40, N'04', N'Gopalganj', 6, CAST(N'2025-06-11T23:34:01.2934343' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (41, N'05', N'Kishoreganj', 6, CAST(N'2025-06-11T23:34:01.2934345' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (42, N'06', N'Madaripur', 6, CAST(N'2025-06-11T23:34:01.2934347' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (43, N'07', N'Manikganj', 6, CAST(N'2025-06-11T23:34:01.2934349' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (44, N'08', N'Munshiganj', 6, CAST(N'2025-06-11T23:34:01.2934351' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (45, N'09', N'Narayanganj', 6, CAST(N'2025-06-11T23:34:01.2934353' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (46, N'10', N'Narsingdi', 6, CAST(N'2025-06-11T23:34:01.2934355' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (47, N'11', N'Rajbari', 6, CAST(N'2025-06-11T23:34:01.2934356' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (48, N'12', N'Shariatpur', 6, CAST(N'2025-06-11T23:34:01.2934358' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (49, N'13', N'Tangail', 6, CAST(N'2025-06-11T23:34:01.2934360' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (50, N'51', N'Habiganj', 7, CAST(N'2025-06-11T23:34:01.2934362' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (51, N'52', N'Moulvibazar', 7, CAST(N'2025-06-11T23:34:01.2934364' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (52, N'53', N'Sunamganj', 7, CAST(N'2025-06-11T23:34:01.2934379' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (53, N'54', N'Sylhet', 7, CAST(N'2025-06-11T23:34:01.2934381' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (54, N'14', N'Bandarban', 8, CAST(N'2025-06-11T23:34:01.2934383' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (55, N'15', N'Brahmanbaria', 8, CAST(N'2025-06-11T23:34:01.2934384' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (56, N'16', N'Chandpur', 8, CAST(N'2025-06-11T23:34:01.2934386' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (57, N'17', N'Chattogram', 8, CAST(N'2025-06-11T23:34:01.2934388' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (58, N'18', N'Cumilla', 8, CAST(N'2025-06-11T23:34:01.2934390' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (59, N'19', N'Cox''s Bazar', 8, CAST(N'2025-06-11T23:34:01.2934392' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (60, N'20', N'Feni', 8, CAST(N'2025-06-11T23:34:01.2934394' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (61, N'21', N'Khagrachhari', 8, CAST(N'2025-06-11T23:34:01.2934396' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (62, N'22', N'Lakshmipur', 8, CAST(N'2025-06-11T23:34:01.2934398' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (63, N'23', N'Noakhali', 8, CAST(N'2025-06-11T23:34:01.2934400' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_District] ([Id], [Code], [Name], [DivisionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (64, N'24', N'Rangamati', 8, CAST(N'2025-06-11T23:34:01.2934402' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_District] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Doctor] ON 
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (1, N'Dr. Md. Samidur Rahman', N'0000000001', CAST(N'2025-05-29T15:57:04.1933333' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (2, N'Dr. Zannatul Ferdous Peu', N'0000000002', CAST(N'2025-05-29T15:57:04.2000000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (3, N'Professor Dr.', N'0000000003', CAST(N'2025-05-29T15:57:04.2033333' AS DateTime2), 2, NULL, NULL, N'A12345', N'5,3', N'Test data', N'1,2,3,4', NULL, N'A H M', N'Abdul Hai', N'Dr. A. M. Shafique is a Cardiologist in Dhaka. His MD 
(Cardiology). He is employed with United cardiologist
specialist. He treats his patients at Un regular basis. For 
appointments or additional us at: 09611530530.', CAST(3.90 AS Decimal(18, 2)), N'Neuromedicine', 20, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (4, N'Lt. Col. Dr. Md. Abdullah Al Mamun', N'0000000004', CAST(N'2025-05-29T15:57:04.2033333' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (5, N'Dr. Mohammed Astefchar Hussain', N'0000000005', CAST(N'2025-05-29T15:57:04.2066667' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (6, N'Dr. Ahmad Abdullah Jami', N'0000000006', CAST(N'2025-05-29T15:57:04.2100000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (7, N'Dr. Md. Tangil Ahmed', N'0000000007', CAST(N'2025-05-29T15:57:04.2133333' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (8, N'Prof. Dr. Col. Mohammad Abdul Quader', N'0000000008', CAST(N'2025-05-29T15:57:04.2133333' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (9, N'Dr. Tanzila Halim', N'0000000009', CAST(N'2025-05-29T15:57:04.2166667' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (10, N'Dr. S.M. Zakir Khaled', N'0000000010', CAST(N'2025-05-29T15:57:04.2166667' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (12, N'Dr. Nizam Uddin Ahmed Chowdhury', N'0000000011', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, N'MBBS, MD (Nephrology)', 0, NULL, NULL)
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (13, N'Dr.', N'0000000012', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'', N'8', N'', N'', N'', N'Kazi Ali', N'Hassan', N'MBBS, Mphil (Clinical Endocrinology), MRCP (UK), FRCP (EDIN)', NULL, N'Diabetes, Thyroid, Hormone Specialist & Endocrinologist', 0, N'', N'')
GO
INSERT [dbo].[Configuration_Doctor] ([Id], [Title], [Code], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BMDCRegNo], [ChamberIds], [Comments], [EducationDegreeIds], [Experiences], [FirstName], [LastName], [ProfessionalSummary], [Rating], [SpecializedArea], [YearOfExperiences], [ProfilePhotoName], [ProfilePhotoPath]) VALUES (14, N'Dr. ', N'0000000014', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'', N'', N'', N'', N'', N'Humayun', N'Ahmed (Sohel)', N'MPH', NULL, N'', 0, N'', N'')
GO
SET IDENTITY_INSERT [dbo].[Configuration_Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_DoctorChamber] ON 
GO
INSERT [dbo].[Configuration_DoctorChamber] ([Id], [DoctorId], [HospitalId], [DepartmentSectionId], [DepartmentId], [CityId], [DoctorDesignationInChamberId], [VisitingHour], [Remarks], [DoctorSpecialization], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsMainChamber], [IsActive], [ChamberAddress], [ChamberCityId], [ChamberClosedOnDay], [ChamberDescription], [ChamberEmail], [ChamberEndTime], [ChamberGoogleAddress], [ChamberGoogleLocationLink], [ChamberGoogleRating], [ChamberName], [ChamberOtherDoctorsId], [ChamberOverseasCaller], [ChamberPostalCode], [ChamberStartTime], [ChamberType], [ChamberVisitingHours], [ChamberWhatsAppNumber], [DoctorBookingMobileNos], [Helpline_CallCenter], [DoctorVisitingDaysInChamber]) VALUES (1, 1, 2, NULL, 2, 2, 3, N'10AM-4PM', N'Dhaka', N'Cardiothoracic Surgeon(Heart Bypass, Valve Replacement, Ventricular Septal Defect, Varicose Vein)', CAST(N'2025-05-29T16:43:47.2400000' AS DateTime2), 2, NULL, NULL, 0, 0, N'House 48 Rd No 9A, Dhaka 1209', 0, NULL, N'', NULL, NULL, N'', N'', NULL, N'', NULL, NULL, N'', NULL, N'', NULL, NULL, N'+8801765439876', NULL, N'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday')
GO
INSERT [dbo].[Configuration_DoctorChamber] ([Id], [DoctorId], [HospitalId], [DepartmentSectionId], [DepartmentId], [CityId], [DoctorDesignationInChamberId], [VisitingHour], [Remarks], [DoctorSpecialization], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsMainChamber], [IsActive], [ChamberAddress], [ChamberCityId], [ChamberClosedOnDay], [ChamberDescription], [ChamberEmail], [ChamberEndTime], [ChamberGoogleAddress], [ChamberGoogleLocationLink], [ChamberGoogleRating], [ChamberName], [ChamberOtherDoctorsId], [ChamberOverseasCaller], [ChamberPostalCode], [ChamberStartTime], [ChamberType], [ChamberVisitingHours], [ChamberWhatsAppNumber], [DoctorBookingMobileNos], [Helpline_CallCenter], [DoctorVisitingDaysInChamber]) VALUES (2, 2, 3, NULL, 3, 4, 3, N'10AM-4PM', N'Dhaka', N'Cardiothoracic Surgeon(Heart Bypass, Valve Replacement, Ventricular Septal Defect, Varicose Vein)', CAST(N'2025-05-29T16:43:47.2533333' AS DateTime2), 2, NULL, NULL, 0, 1, N'House 48 Rd No 9A, Dhaka 1209', 0, NULL, N'', NULL, NULL, N'', N'', NULL, N'', NULL, NULL, N'', NULL, N'', NULL, NULL, N'+8801765439876', NULL, N'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday')
GO
INSERT [dbo].[Configuration_DoctorChamber] ([Id], [DoctorId], [HospitalId], [DepartmentSectionId], [DepartmentId], [CityId], [DoctorDesignationInChamberId], [VisitingHour], [Remarks], [DoctorSpecialization], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsMainChamber], [IsActive], [ChamberAddress], [ChamberCityId], [ChamberClosedOnDay], [ChamberDescription], [ChamberEmail], [ChamberEndTime], [ChamberGoogleAddress], [ChamberGoogleLocationLink], [ChamberGoogleRating], [ChamberName], [ChamberOtherDoctorsId], [ChamberOverseasCaller], [ChamberPostalCode], [ChamberStartTime], [ChamberType], [ChamberVisitingHours], [ChamberWhatsAppNumber], [DoctorBookingMobileNos], [Helpline_CallCenter], [DoctorVisitingDaysInChamber]) VALUES (3, 3, 11, NULL, 3, 4, 3, N'10AM-4PM', N'Dhaka', N'Cardiologist, Cardiac Surgeon', CAST(N'2025-05-29T16:43:47.2533333' AS DateTime2), 2, NULL, NULL, 1, 1, N'House 48 Rd No 9A, Dhaka 1209', 0, NULL, N'', NULL, NULL, N'', N'', NULL, N'', NULL, NULL, N'', NULL, N'', NULL, NULL, N'+8801765439876', NULL, N'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday')
GO
INSERT [dbo].[Configuration_DoctorChamber] ([Id], [DoctorId], [HospitalId], [DepartmentSectionId], [DepartmentId], [CityId], [DoctorDesignationInChamberId], [VisitingHour], [Remarks], [DoctorSpecialization], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsMainChamber], [IsActive], [ChamberAddress], [ChamberCityId], [ChamberClosedOnDay], [ChamberDescription], [ChamberEmail], [ChamberEndTime], [ChamberGoogleAddress], [ChamberGoogleLocationLink], [ChamberGoogleRating], [ChamberName], [ChamberOtherDoctorsId], [ChamberOverseasCaller], [ChamberPostalCode], [ChamberStartTime], [ChamberType], [ChamberVisitingHours], [ChamberWhatsAppNumber], [DoctorBookingMobileNos], [Helpline_CallCenter], [DoctorVisitingDaysInChamber]) VALUES (4, 1, 2, NULL, 2, 5, 3, N'10AM-4PM', N'Dhaka', N'Cardiothoracic Surgeon(Heart Bypass, Valve Replacement, Ventricular Septal Defect, Varicose Vein)', CAST(N'2025-05-29T16:43:47.2400000' AS DateTime2), 2, NULL, NULL, 0, 1, N'House 48 Rd No 9A, Dhaka 1209', 0, NULL, N'', NULL, NULL, N'', N'', NULL, N'', NULL, NULL, N'', NULL, N'', NULL, NULL, N'+8801765439876', NULL, N'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday')
GO
INSERT [dbo].[Configuration_DoctorChamber] ([Id], [DoctorId], [HospitalId], [DepartmentSectionId], [DepartmentId], [CityId], [DoctorDesignationInChamberId], [VisitingHour], [Remarks], [DoctorSpecialization], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsMainChamber], [IsActive], [ChamberAddress], [ChamberCityId], [ChamberClosedOnDay], [ChamberDescription], [ChamberEmail], [ChamberEndTime], [ChamberGoogleAddress], [ChamberGoogleLocationLink], [ChamberGoogleRating], [ChamberName], [ChamberOtherDoctorsId], [ChamberOverseasCaller], [ChamberPostalCode], [ChamberStartTime], [ChamberType], [ChamberVisitingHours], [ChamberWhatsAppNumber], [DoctorBookingMobileNos], [Helpline_CallCenter], [DoctorVisitingDaysInChamber]) VALUES (5, 2, 3, NULL, 3, 4, 3, N'10AM-4PM', N'Dhaka', N'Cardiothoracic Surgeon(Heart Bypass, Valve Replacement, Ventricular Septal Defect, Varicose Vein)', CAST(N'2025-05-29T16:43:47.2533333' AS DateTime2), 2, NULL, NULL, 0, 1, N'House 48 Rd No 9A, Dhaka 1209', 0, NULL, N'', NULL, NULL, N'', N'', NULL, N'', NULL, NULL, N'', NULL, N'', NULL, NULL, N'+8801765439876', NULL, N'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday')
GO
INSERT [dbo].[Configuration_DoctorChamber] ([Id], [DoctorId], [HospitalId], [DepartmentSectionId], [DepartmentId], [CityId], [DoctorDesignationInChamberId], [VisitingHour], [Remarks], [DoctorSpecialization], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsMainChamber], [IsActive], [ChamberAddress], [ChamberCityId], [ChamberClosedOnDay], [ChamberDescription], [ChamberEmail], [ChamberEndTime], [ChamberGoogleAddress], [ChamberGoogleLocationLink], [ChamberGoogleRating], [ChamberName], [ChamberOtherDoctorsId], [ChamberOverseasCaller], [ChamberPostalCode], [ChamberStartTime], [ChamberType], [ChamberVisitingHours], [ChamberWhatsAppNumber], [DoctorBookingMobileNos], [Helpline_CallCenter], [DoctorVisitingDaysInChamber]) VALUES (6, 3, 48, NULL, 3, 4, 3, N'10AM-4PM', N'Dhaka', N'Cardiothoracic Surgeon(Heart Bypass, Valve Replacement, Ventricular Septal Defect, Varicose Vein)', CAST(N'2025-05-29T16:43:47.2533333' AS DateTime2), 2, NULL, NULL, 0, 1, N'House 48 Rd No 9A, Dhaka 1209', 0, NULL, N'', NULL, NULL, N'', N'', NULL, N'', NULL, NULL, N'', NULL, N'', NULL, NULL, N'+8801765439876', NULL, N'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday')
GO
INSERT [dbo].[Configuration_DoctorChamber] ([Id], [DoctorId], [HospitalId], [DepartmentSectionId], [DepartmentId], [CityId], [DoctorDesignationInChamberId], [VisitingHour], [Remarks], [DoctorSpecialization], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsMainChamber], [IsActive], [ChamberAddress], [ChamberCityId], [ChamberClosedOnDay], [ChamberDescription], [ChamberEmail], [ChamberEndTime], [ChamberGoogleAddress], [ChamberGoogleLocationLink], [ChamberGoogleRating], [ChamberName], [ChamberOtherDoctorsId], [ChamberOverseasCaller], [ChamberPostalCode], [ChamberStartTime], [ChamberType], [ChamberVisitingHours], [ChamberWhatsAppNumber], [DoctorBookingMobileNos], [Helpline_CallCenter], [DoctorVisitingDaysInChamber]) VALUES (7, 12, 73, NULL, 14, 1, 9, N'06PM-12AM', N'Dhaka', N'MBBS, MD (Nephrology)', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 0, 1, N'Nafi Tower, Level-3 (2nd Floor), 53 Gulshan Avenue, Gulshan-1, Dhaka', 1, N'12AM', N'', NULL, NULL, N'', N'', NULL, N'', NULL, NULL, N'', NULL, N'', NULL, NULL, NULL, NULL, N'')
GO
INSERT [dbo].[Configuration_DoctorChamber] ([Id], [DoctorId], [HospitalId], [DepartmentSectionId], [DepartmentId], [CityId], [DoctorDesignationInChamberId], [VisitingHour], [Remarks], [DoctorSpecialization], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsMainChamber], [IsActive], [ChamberAddress], [ChamberCityId], [ChamberClosedOnDay], [ChamberDescription], [ChamberEmail], [ChamberEndTime], [ChamberGoogleAddress], [ChamberGoogleLocationLink], [ChamberGoogleRating], [ChamberName], [ChamberOtherDoctorsId], [ChamberOverseasCaller], [ChamberPostalCode], [ChamberStartTime], [ChamberType], [ChamberVisitingHours], [ChamberWhatsAppNumber], [DoctorBookingMobileNos], [Helpline_CallCenter], [DoctorVisitingDaysInChamber]) VALUES (8, 13, 74, NULL, 17, 1, NULL, N'', N'Dhaka', N'Diabetes, Thyroid, Hormone Specialist & Endocrinologist', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, 1, N'Plot - 15, Road - 71, Gulshan, Dhaka', 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[Configuration_DoctorChamber] ([Id], [DoctorId], [HospitalId], [DepartmentSectionId], [DepartmentId], [CityId], [DoctorDesignationInChamberId], [VisitingHour], [Remarks], [DoctorSpecialization], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsMainChamber], [IsActive], [ChamberAddress], [ChamberCityId], [ChamberClosedOnDay], [ChamberDescription], [ChamberEmail], [ChamberEndTime], [ChamberGoogleAddress], [ChamberGoogleLocationLink], [ChamberGoogleRating], [ChamberName], [ChamberOtherDoctorsId], [ChamberOverseasCaller], [ChamberPostalCode], [ChamberStartTime], [ChamberType], [ChamberVisitingHours], [ChamberWhatsAppNumber], [DoctorBookingMobileNos], [Helpline_CallCenter], [DoctorVisitingDaysInChamber]) VALUES (9, 14, 75, NULL, 26, 6, 10, N'09AM-02PM', N'Sylhet', N'Eye', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, 0, N'Uttar Bvaluchar, Nayabazar, Sylhet', 6, N'Gov. Holiday', N'', N'', N'', N'', N'', N'', N'Insaf Pharma', N'', N'', N'', N'', N'', N'09AM-02PM', N'8801714039553', N'8801714039553', N'', N'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday')
GO
SET IDENTITY_INSERT [dbo].[Configuration_DoctorChamber] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Education] ON 
GO
INSERT [dbo].[Configuration_Education] ([Id], [Code], [DegreeName], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [InstitutionName]) VALUES (1, N'00001', N'MBBS', N'Bachelor of Medicine and Bachelor of Surgery (MBBS)', CAST(N'2025-08-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Dhaka Medical College')
GO
INSERT [dbo].[Configuration_Education] ([Id], [Code], [DegreeName], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [InstitutionName]) VALUES (2, N'00002', N'MD', N'Doctor of Medicine', CAST(N'2025-08-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Dhaka Medical College')
GO
INSERT [dbo].[Configuration_Education] ([Id], [Code], [DegreeName], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [InstitutionName]) VALUES (3, N'00003', N'MS', N'Master of Surgery', CAST(N'2025-08-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'University of Cambridge')
GO
INSERT [dbo].[Configuration_Education] ([Id], [Code], [DegreeName], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [InstitutionName]) VALUES (4, N'00004', N'PhD', N'Doctor of Philosophy', CAST(N'2025-08-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'University of Oxford')
GO
SET IDENTITY_INSERT [dbo].[Configuration_Education] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Hospital] ON 
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (1, N'00001', N'Shahid Suhrawardy Hospital', N'Ser-e-Banglanagar, Collegegate', CAST(N'2025-05-29T13:31:35.2800000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'1980', N'', NULL, NULL, N'', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (2, N'00002', N'Ad-Din Hospital', N'Moghbazar, Dhaka', CAST(N'2025-05-29T13:31:35.2900000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'1990', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (3, N'00003', N'Ahmed Medical Centre Ltd', N'House # 71, Road # 15-A, (New), Dhanmondi C/A', CAST(N'2025-05-29T13:31:35.2900000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'2000', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (4, N'00004', N'Aichi Hospital', N'House # 13, Eshakha Avenue Sector # 6, utttara Dhaka', CAST(N'2025-05-29T13:31:35.2933333' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'2001', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (5, N'00005', N'Al Anaiet Adhunik Hospital', N'House # 36, Road # 3, Dhanmondi', CAST(N'2025-05-29T13:31:35.2933333' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'1978', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (6, N'00006', N'Al- Helal Speacialist Hospital', N'150,Rokeya Sarani Senpara ParbataMirpur-10, Dhaka', CAST(N'2025-05-29T13:31:35.2933333' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'1988', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (7, N'00007', N'Al Jebel-E-Nur Heart Ltd', N'House # 21, Road # 9/A (New),Dhanmondi', CAST(N'2025-05-29T13:31:35.2966667' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'1989', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (8, N'00008', N'Al- Rajhi Hospital', N'12, Farmgate-1215, Dhaka', CAST(N'2025-05-29T13:31:35.2966667' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'2007', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (9, N'00009', N'Al-Ahsraf General Hospital', N'House # 12 Road # 21,Sector # 4,Uttara Dhaka', CAST(N'2025-05-29T13:31:35.3000000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'2010', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (10, N'00010', N'Al-Biruni Hospital', N'23/1, Khilzee Road, Shyamoli', CAST(N'2025-05-29T13:31:35.3000000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in the private sector of the country. It is been a pioneer in introducing the world’s latest medical equipment and advanced technology to provide round-the-clock medical investigations and consultancy services.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'1999', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (11, N'00011', N'Dhaka Medical College & Hospital', N'সচিবালয় রোড, ঢাকা 1000', CAST(N'2025-05-29T13:31:35.3000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in the private sector of the country. It is been a pioneer in introducing the world’s latest medical equipment and advanced technology to provide round-the-clock medical investigations and consultancy services.', NULL, N'https://www.google.com/maps/dir//%E0%A6%A2%E0%A6%BE%E0%A6%95%E0%A6%BE+%E0%A6%AE%E0%A7%87%E0%A6%A1%E0%A6%BF%E0%A6%95%E0%A7%87%E0%A6%B2+%E0%A6%95%E0%A6%B2%E0%A7%87%E0%A6%9C+%E0%A6%B9%E0%A6%BE%E0%A6%B8%E0%A6%AA%E0%A6%BE%E0%A6%A4%E0%A6%BE%E0%A6%B2,+%E0%A6%B8%E0%A6%9A%E0%A6%BF%E0%A6%AC%E0%A6%BE%E0%A6%B2%E0%A7%9F+%E0%A6%B0%E0%A7%8B%E0%A6%A1,+%E0%A6%A2%E0%A6%BE%E0%A6%95%E0%A6%BE+1000/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3755b8e6474187cf:0xb3d3783755659522?sa=X&ved=1t:57443&ictx=111', N'4.3', N'0255165001', N'Everyday', N'Always', N'0255165001', NULL, 0, NULL, NULL, N'1956', N'photos\DhakaMedicalLogo.svg', NULL, N'সচিবালয় রোড', N'', 1, N'.svg', N'DhakaMedicalLogo.svg', N'logos\DhakaMedicalLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (12, N'00012', N'Delta Medical Centre Ltd', N'House # 20, Raod # 4, Dhanmondi R/A', CAST(N'2025-05-29T13:31:35.3033333' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in the private sector of the country. It is been a pioneer in introducing the world’s latest medical equipment and advanced technology to provide round-the-clock medical investigations and consultancy services.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'1982', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (13, N'00013', N'Bangladesh Medical College', N'House # 35, Road # 14/A, Dhanmondi', CAST(N'2025-05-29T13:31:35.3033333' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in the private sector of the country. It is been a pioneer in introducing the world’s latest medical equipment and advanced technology to provide round-the-clock medical investigations and consultancy services.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'1986', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (14, N'00014', N'Central Hospital Ltd', N'House # 2, Road # 5, Green Road, Dhanmondi', CAST(N'2025-05-29T13:31:35.3066667' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in the private sector of the country. It is been a pioneer in introducing the world’s latest medical equipment and advanced technology to provide round-the-clock medical investigations and consultancy services.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'2003', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (15, N'00015', N'China-Bangla Hospital (Jv) Ltd', N'Plot # 1, Road # 7, Sector # 1, Uttara', CAST(N'2025-05-29T13:31:35.3100000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in the private sector of the country. It is been a pioneer in introducing the world’s latest medical equipment and advanced technology to provide round-the-clock medical investigations and consultancy services.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'2002', N'', NULL, NULL, N'', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (16, N'00016', N'CMH (Dhaka Cantonment)', N'Dhaka Cantonment, Dhaka', CAST(N'2025-05-29T13:31:35.3100000' AS DateTime2), 2, NULL, NULL, NULL, NULL, NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in the private sector of the country. It is been a pioneer in introducing the world’s latest medical equipment and advanced technology to provide round-the-clock medical investigations and consultancy services.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'2007', N'', NULL, NULL, N'', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (17, N'00017', N'Ibn Sina Hospital', N'House#68, Road#15/A, Dhanmondi, Dhaka-1209
', CAST(N'2025-05-29T13:31:35.3100000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://www.google.com/maps/dir//%E0%A6%87%E0%A6%AC%E0%A6%A8%E0%A7%87+%E0%A6%B8%E0%A6%BF%E0%A6%A8%E0%A6%BE+%E0%A6%A1%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%97%E0%A6%A8%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A6%BF%E0%A6%95+%E0%A6%93+%E0%A6%AA%E0%A6%B0%E0%A6%BE%E0%A6%AE%E0%A6%B0%E0%A7%8D%E0%A6%B6+%E0%A6%95%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%A6%E0%A7%8D%E0%A6%B0,+%E0%A6%AE%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%AC%E0%A6%BE%E0%A6%97,+House+%23+479,+DIT+Road,+(Near+Malibagh+Rail+Gate,+W+Malibagh,+%E0%A6%A2%E0%A6%BE%E0%A6%95%E0%A6%BE+1217/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3755b8629fe03d83:0x831553a3f462e777?sa=X&ved=1t:57443&ictx=111', N'4.3', N'09610-009616', N'Everyday', N'Always', N'09610-009616', N'N/A', 0, NULL, NULL, N'2008', N'photos\IbnSinaLogo.svg', NULL, N'Dhanmondi', N'Ibn Sina Specialized Hospital
', 0, N'.svg', N'IbnSinaIcon.svg', N'logos\IbnSinaIcon.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (19, N'00018', N'Ibn Sina Hospital', N'1/1, Mirpur Road, Kallyanpur, Dhaka-1216
', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in the private sector of the country. It is been a pioneer in introducing the world’s latest medical equipment and advanced technology to provide round-the-clock medical investigations and consultancy services.', NULL, N'https://g.co/kgs/BChrK9A', N'3.7', N'09666-710606', N'Everyday', N'Always', N'09666-710606', N'N/A', 0, NULL, NULL, N'2009', N'photos\LabAidLogo.svg', NULL, N'Dhanmondi', N'Ibn Sina Medical College Hospital', 0, N'.svg', N'IbnSinaIcon.svg', N'logos\IbnSinaIcon.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (20, N'00019', N'Ibn Sina Hospital', N'House#58, Road#2/A, Dhaka-1209
', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. Popular Diagnostic Centre Ltd. is the largest diagnostic services provider organization in the private sector of the country. It is been a pioneer in introducing the world’s latest medical equipment and advanced technology to provide round-the-clock medical investigations and consultancy services.', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N' 09666-787801', N'Everyday', N'07:00AM', N' 09666-787801', N'N/A', 0, NULL, NULL, N'2015', N'photos\PopularDiagnosticLogo.svg', NULL, N'N/A', N'Ibn Sina Medical Imaging Center
', 0, N'.svg', N'IbnSinaIcon.svg', N'logos\IbnSinaIcon.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (43, N'00020', N'Ibn Sina Hospital', N'28, Doyagonj (Hut lane), Gandaria, Dhaka-1204
', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 3, NULL, NULL, 2, N'N/A', NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://www.google.com/maps/dir//%E0%A6%87%E0%A6%AC%E0%A6%A8%E0%A7%87+%E0%A6%B8%E0%A6%BF%E0%A6%A8%E0%A6%BE+%E0%A6%A1%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%97%E0%A6%A8%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A6%BF%E0%A6%95+%E0%A6%93+%E0%A6%AA%E0%A6%B0%E0%A6%BE%E0%A6%AE%E0%A6%B0%E0%A7%8D%E0%A6%B6+%E0%A6%95%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%A6%E0%A7%8D%E0%A6%B0,+%E0%A6%AE%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%AC%E0%A6%BE%E0%A6%97,+House+%23+479,+DIT+Road,+(Near+Malibagh+Rail+Gate,+W+Malibagh,+%E0%A6%A2%E0%A6%BE%E0%A6%95%E0%A6%BE+1217/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3755b8629fe03d83:0x831553a3f462e777?sa=X&ved=1t:57443&ictx=111', N'5.3', N'09610-009617', N'Everyday', N'Always', N'09610-009617', N'N/A', 0, NULL, NULL, N'20004', N'photos\IbnSinaLogo.svg', NULL, N'N/A', N'Ibn Sina D.Lab & Consultation Center, Doyagonj
', 0, N'.svg', N'IbnSinaIcon.svg', N'logos\IbnSinaIcon.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (44, N'00021', N'LABAID', N'House # 01 & 03, Road-04, Dhanmondi, Dhaka-1205 ', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 6, NULL, NULL, 5, N'N/A', NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://www.google.com/maps/dir//%E0%A6%87%E0%A6%AC%E0%A6%A8%E0%A7%87+%E0%A6%B8%E0%A6%BF%E0%A6%A8%E0%A6%BE+%E0%A6%A1%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%97%E0%A6%A8%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A6%BF%E0%A6%95+%E0%A6%93+%E0%A6%AA%E0%A6%B0%E0%A6%BE%E0%A6%AE%E0%A6%B0%E0%A7%8D%E0%A6%B6+%E0%A6%95%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%A6%E0%A7%8D%E0%A6%B0,+%E0%A6%AE%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%AC%E0%A6%BE%E0%A6%97,+House+%23+479,+DIT+Road,+(Near+Malibagh+Rail+Gate,+W+Malibagh,+%E0%A6%A2%E0%A6%BE%E0%A6%95%E0%A6%BE+1217/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3755b8629fe03d83:0x831553a3f462e777?sa=X&ved=1t:57443&ictx=111', N'8.3', N'09610-009620', N'Everyday', N'Always', N'09610-009620', N'N/A', 0, NULL, NULL, N'2001', N'photos\IbnSinaLogo.svg', NULL, N'Dhanmondi', N'LABAID Cardiac Hospital', 0, N'.svg', N'LabaidLogo.svg', N'logos\LabaidLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (46, N'00023', N'LABAID', N'26 গ্রীন রোড, ঢাকা 1205', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/BChrK9A', N'3.7', N'09666-710606', N'Everyday', N'Always', N'09666-710606', N'N/A', 0, NULL, NULL, N'2002', N'photos\LabAidLogo.svg', NULL, N'Green Road', N'LABAID Specialized Hospital', 0, N'.svg', N'LabaidLogo.svg', N'logos\LabaidLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (47, N'00024', N'LABAID', N'House-01 & 03, রোড-০৪, ঢাকা 1205', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', NULL, N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/BChrK9A', N'3.8', N'09666-710606', N'Everyday', N'Always', N'09666-710606', N'N/A', 0, NULL, NULL, N'2003', N'photos\LabAidLogo.svg', NULL, N'Dhanmondi', N'LABAID Cardiac Hospital', 0, N'.svg', N'LabaidLogo.svg', N'logos\LabaidLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (48, N'00025', N'Popular Diagnostic Centre Ltd.', N'House # 16, Road # 2, Dhanmondi, Dhaka-1205', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2007', N'photos\PopularDiagnosticLogo.svg', NULL, N'Dhanmondi', N'DHANMONDI Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (49, N'00026', N'Popular Diagnostic Centre Ltd.', N'House # 2, English Road, Dhaka', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2009', N'photos\PopularDiagnosticLogo.svg', NULL, N'English Road', N'ENGLISH ROAD Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (50, N'00027', N'Popular Diagnostic Centre Ltd.', N'11, Shantinagar, Motijheel, Dhaka', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2000', N'photos\PopularDiagnosticLogo.svg', NULL, N'Shantinagar 1', N'SHANTINAGAR, Unit-1 Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (51, N'00028', N'Popular Diagnostic Centre Ltd.', N'Level – 4, Building # 15, Shantinagar, Motijheel, Dhaka', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787802, 09613 787802', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2000', N'photos\PopularDiagnosticLogo.svg', NULL, N'Shantinagar 2', N'SHANTINAGAR, Unit-2 Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (52, N'00029', N'Popular Diagnostic Centre Ltd.', N'231/4, Bangabandhu Road, Balur Math, Chashara, Narayangonj', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2001', N'photos\PopularDiagnosticLogo.svg', NULL, N'Narayanganj', N'NARAYANGONJ Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (53, N'00030', N'Popular Diagnostic Centre Ltd.', N'E/22, Talbagh, Anandapur, Savar, Dhaka', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2002', N'photos\PopularDiagnosticLogo.svg', NULL, N'Savar', N'SAVAR Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (54, N'00031', N'Popular Diagnostic Centre Ltd.', N'House # 21, Road # 7, Sector # 4, Jashim Uddin More, Uttara, Dhaka-1230', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2003', N'photos\PopularDiagnosticLogo.svg', NULL, N'Uttara 1', N'UTTARA Unit-1 Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (55, N'00032', N'Popular Diagnostic Centre Ltd.', N'House # 25, Road # 7, Sector # 4, Jashim Uddin Moar, Uttara, Dhaka', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2004', N'photos\PopularDiagnosticLogo.svg', NULL, N'Uttara 2', N'UTTARA Unit-2 Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (56, N'00033', N'Popular Diagnostic Centre Ltd.', N'22/7 A S M Nuruzzaman Road, Block-B, Babor Road, Mohammadpur, Dhaka-1207', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2005', N'photos\PopularDiagnosticLogo.svg', NULL, N'Shaymoli', N'SHYAMOLI Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (57, N'00034', N'Popular Diagnostic Centre Ltd.', N'House # 67, Avenue # 5, Block # C, Section-6 Mirpur, (Original-10), Pallabi, Dhaka', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2006', N'photos\PopularDiagnosticLogo.svg', NULL, N'Mirpur Unit 1', N'MIRPUR Unit-1 Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (58, N'00035', N'Popular Diagnostic Centre Ltd.', N'House # 02, Avenue # 01, Block # A, Section-10 (Bnaroshi Polli Gate-01), Pallabi, Mirpur, Dhaka', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2007', N'photos\PopularDiagnosticLogo.svg', NULL, N'Mirpur Unit 2', N'MIRPUR Unit-2 Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (59, N'00036', N'Popular Diagnostic Centre Ltd.', N'Cha-90/2, North Badda (Pragoti Sharoni), Dhaka-1212', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2008', N'photos\PopularDiagnosticLogo.svg', NULL, N'Badda', N'BADDA Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (60, N'00037', N'Popular Diagnostic Centre Ltd.', N'Gazipur Shibbari More (Near VIP Bus Terminal and Walton Show Room)', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2008', N'photos\PopularDiagnosticLogo.svg', NULL, N'Gazipur', N'GAZIPUR Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (61, N'00038', N'Popular Diagnostic Centre Ltd.', N'House #1222, New Bus stand (Near Shaheed Bhulu Stadium) Maijdee Court, Noakhali', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2009', N'photos\PopularDiagnosticLogo.svg', NULL, N'Noakhali', N'NOAKHALI Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (62, N'00039', N'Popular Diagnostic Centre Ltd.', N'20/B. K. B. Fazlul Kader Road, Panchlaish, Chattogram', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'2010', N'photos\PopularDiagnosticLogo.svg', NULL, N'Chattogram', N'CHATTOGRAM Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (63, N'00040', N'Popular Diagnostic Centre Ltd.', N'House # 474, Chowdhury Tower, Laxmipur, Rajshahi', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'1999', N'photos\PopularDiagnosticLogo.svg', NULL, N'Rajshahi', N'RAJSHAHI Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (64, N'00041', N'Popular Diagnostic Centre Ltd.', N'77/1, Road No-1, Dhap, Jail Road, Rangpur', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'1998', N'photos\PopularDiagnosticLogo.svg', NULL, N'Rangpur Unit 1', N'RANGPUR Unit-1 Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (65, N'00042', N'Popular Diagnostic Centre Ltd.', N'77/1, Road No-1, Dhap, Jail Road, Rangpur', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'1997', N'photos\PopularDiagnosticLogo.svg', NULL, N'Rangpur Unit 2', N'RANGPUR Unit-2 Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (66, N'00043', N'Popular Diagnostic Centre Ltd.', N'House #44, 1 No. Upashahar, Fulbari Bus stand, Dinajpur', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'N/A', N'11:00PM', N'POPULAR DIAGNOSTIC CENTRE LTD | DHANMONDI is an advanced Centre for diagnostic and medical services. It is one of the prestigious diagnostic complexes of Bangladesh which started its activities in 1983. ', NULL, N'https://g.co/kgs/CJ9vCMX', N'3.6', N'09666 787801', N'Everyday', N'07:00AM', N'09666-787801', N'N/A', 0, NULL, NULL, N'1996', N'photos\PopularDiagnosticLogo.svg', NULL, N'Dinajpur', N'DINAJPUR Branch', 0, N'.svg', N'PopularLogo.svg', N'logos\PopularLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (73, N'00044', N'Square Hosptials Ltd.', N'18/F, Bir Uttam
Qazi Nuruzzaman Sarak,
West Panthapath,Dhaka 1205', CAST(N'2025-11-09T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, N'12:00AM', N'Clinical excellence must be the priority for any health care service provider. SQUARE Hospital ensures the best healthcare service comprise of professional (clinical) service excellence with outstanding personal service.', NULL, N'https://squarehospital.com/', N'4.1', N'09610-010616', N'Everyday', N'07:00AM', N'09610-010616', N'N/A', 1, NULL, NULL, N'2001', N'logos\SquareLogo.svg', NULL, N'Dhaka', N'Dhaka', 1, N'.svg', N'SquareLogo.svg', N'logos\SquareLogo.svg')
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (74, N'00045', N'United Hospital', N'Plot - 15, Road - 71, Gulshan, Dhaka', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, N'', N'', N'', N'', N'https://uhlbd.com/', N'3.9', N'01914-001234', N'Everyday', N'', N'01914-001234', N'', 0, N'', N'', N'2006', N'', N'', N'Dhaka1', N'Dhaka', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Hospital] ([Id], [Code], [Name], [Address], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CityId], [CloseDay], [CloseTime], [Description], [Fax], [GoogleLocation], [GoogleRating], [Mobile], [OpenDay], [OpenTime], [Phone], [Weekend], [IsActive], [Remarks], [WebAddress], [YearEstablished], [DiagnosticCenterIcon], [Email], [Location], [Branch], [IsMainBranch], [FileExtension], [FileName], [FilePath]) VALUES (75, N'00046', N'Insaf Pharma', N'Uttar Baluchar, Nayabazar, Sylhet', NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'', N'3.8', N'01714 039553', N'Everyday', N'9:00 AM', N'01714 039553', N'Govt Holidays', 0, N'', N'', N'2005', N'', N'', N'Sylhet', N'Sylhet', 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_Hospital] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Investigation] ON 
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (1, N'00001', N'Complete Blood Count', N'A Complete Blood Count (CBC) is a common blood test that provides information about the different types of cells in your blood.', N'Complete Blood Count,  Hemogram Test', N'CBC', N'Complete Blood Count', CAST(500.00 AS Decimal(10, 2)), 17, CAST(300.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-06-29T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (10, N'00002', N'TC, DC, Hb, ESR,Combined', N'The combined tests TC, DC, Hb, and ESR are all part of a standard blood test called a complete blood count (CBC) with differential and ESR. These tests provide valuable information about different aspects of your blood and overall health. ', N'TC, DC, Hb, ESR,Combined', N'N/A', N'TC, DC, Hb, ESR,Combined', CAST(1000.00 AS Decimal(10, 2)), 17, CAST(900.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-06-29T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (11, N'00003', N'ESR', N'ESR stands for erythrocyte sedimentation rate, also known as a sed rate. It''s a blood test that indirectly measures inflammation in the body.', N'Erythrocyte Sedimentation Rate', N'ESR', N'ESR', CAST(800.00 AS Decimal(10, 2)), 17, CAST(800.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-06-29T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (12, N'00004', N'Haemoglobin', N'Haemoglobin (also spelled hemoglobin) is a protein in red blood cells that carries oxygen from the lungs to the rest of the body.', N'Haemoglobin', N'ESR', N'Haemoglobin', CAST(200.00 AS Decimal(10, 2)), 17, CAST(200.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-06-29T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (13, N'00005', N'Urine Routine Examination', N'A urine routine examination, also known as urinalysis or urine R/E, is a common test that analyzes the physical, chemical, and microscopic characteristics of urine to assess overall health and detect various conditions.', N'Urine Routine Examination', N'Urine RE', N'Urine Routine Examination', CAST(1200.00 AS Decimal(10, 2)), 17, CAST(1100.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-06-29T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (14, N'00006', N'Urine Culture', N'A urine culture is a laboratory test used to detect and identify bacteria or other microorganisms in a urine sample, typically to diagnose a urinary tract infection (UTI).', N'Urine Culture Sensitivity Test', N'Urine CS', N'Urine Culture', CAST(1200.00 AS Decimal(10, 2)), 17, CAST(1100.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-06-29T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (15, N'00007', N'Stool Routine Examination', N'A stool routine examination, also known as a stool R/E or stool analysis, is a diagnostic test that analyzes a stool sample to identify potential gastrointestinal issues. ', N'Stool Routine Examination', N'Stool RE', N'Stool Routine Examination', CAST(1200.00 AS Decimal(10, 2)), 17, CAST(1100.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-06-29T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (16, N'00008', N'Lipid Profile', N'A lipid profile is a blood test that measures the different types of fats (lipids) in your blood, including total cholesterol, LDL ("bad") cholesterol, HDL ("good") cholesterol, and triglycerides.', N'Lipid Profile', N'TC, LDL-C, HDL-C, VLDL-C, TG', N'Lipid Profile', CAST(1400.00 AS Decimal(10, 2)), 17, CAST(1200.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (17, N'00009', N'ECG', N'A lipid profile is a blood test that measures the different types of fats (lipids) in your blood, including total cholesterol, LDL ("bad") cholesterol, HDL ("good") cholesterol, and triglycerides.', N'Lipid Profile', N'TC, LDL-C, HDL-C, VLDL-C, TG', N'Lipid Profile', CAST(1400.00 AS Decimal(10, 2)), 17, CAST(1200.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (18, N'00009', N'Urine R/E', N'A lipid profile is a blood test that measures the different types of fats (lipids) in your blood, including total cholesterol, LDL ("bad") cholesterol, HDL ("good") cholesterol, and triglycerides.', N'Lipid Profile', N'TC, LDL-C, HDL-C, VLDL-C, TG', N'Lipid Profile', CAST(1400.00 AS Decimal(10, 2)), 17, CAST(1200.00 AS Decimal(10, 2)), 17, NULL, NULL, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 1, NULL, NULL, N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (19, N'00010', N'Fasting Blood Sugar', N'A stool routine examination, also known as a stool R/E or stool analysis, is a diagnostic test that analyzes a stool sample to identify potential gastrointestinal issues. ', N'Fasting Blood Sugar', N'FBS', N'Fasting Blood Sugar', CAST(300.00 AS Decimal(10, 2)), 17, CAST(150.00 AS Decimal(10, 2)), 17, N'', N'', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 0, N'', N'', N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (20, N'00011', N'Glucose Tolerance Test', N'A stool routine examination, also known as a stool R/E or stool analysis, is a diagnostic test that analyzes a stool sample to identify potential gastrointestinal issues. ', N'Glucose Tolerance Test', N'GT', N'Glucose Tolerance Test', CAST(500.00 AS Decimal(10, 2)), 17, CAST(250.00 AS Decimal(10, 2)), 17, N'', N'', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 0, N'', N'', N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (21, N'00012', N'BT CT', N'The BT/CT test, or Bleeding Time/Clotting Time test, is a medical test that assesses how well a person''s blood clots.', N'Bleeding Time/Clotting Time test', N'BT CT', N'BT CT', CAST(500.00 AS Decimal(10, 2)), 17, CAST(400.00 AS Decimal(10, 2)), 17, N'', N'', NULL, 2, NULL, NULL, 0, N'', N'', N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
INSERT [dbo].[Configuration_Investigation] ([Id], [Code], [TestName], [TestDescription], [TestFullName], [TestShortName], [TestNameByDiagnosticCenter], [UnitPrice], [PriceUnitId], [NationalUnitPrice], [NationalPriceUnitId], [Speciality], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Specimen], [TestGenericName], [NationalPriceReference]) VALUES (22, N'00013', N'OCT (Double Protocol) - B', N'The "OCT double protocol test" (also known as the dual-angle protocol) is an advanced optical coherence tomography (OCT) scanning method used primarily in research to measure absolute retinal blood flow more accurately.', N'Optical Coherence Tomography', N'OCT (Double Protocol) - B', N'OCT (Double Protocol) - B', CAST(450.00 AS Decimal(10, 2)), 17, CAST(400.00 AS Decimal(10, 2)), 17, N'', N'', NULL, 2, NULL, NULL, 0, N'', N'', N'https://www.dgdagov.info/index.php/registered-products/allopathic')
GO
SET IDENTITY_INSERT [dbo].[Configuration_Investigation] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_InvestigationFAQ] ON 
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, 1, N'পরীক্ষাটি কি?', N'ইউরিন কালচার সেনসিটিভিটি টেস্ট প্রস্রাবের নমুনায় ব্যাকটেরিয়ার উপস্থিতি পরীক্ষা করে এবং কোন অ্যান্টিবায়োটিক সংক্রমণের চিকিৎসা করতে পারে তা নির্ধারণ করে।', CAST(N'2025-07-23T18:36:08.8400000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, 1, N'পরীক্ষা কেন করা হয়?', N'এটি মূত্রনালীর সংক্রমণ (ইউটিআই) নির্ণয় করতে এবং উপযুক্ত অ্যান্টিবায়োটিক চিকিত্সার নির্দেশনা দেওয়ার জন্য করা হয়।', CAST(N'2025-07-23T18:36:08.8566667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, 1, N'পরীক্ষার জন্য কেমন প্রস্তুতি লাগে?', N'সাধারণত, এই পরীক্ষার জন্য কোন বিশেষ প্রস্তুতির প্রয়োজন হয় না।', CAST(N'2025-07-23T18:36:08.8633333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, 1, N'পরীক্ষা কেমন হয়?', N'আপনি ল্যাব দ্বারা প্রদত্ত একটি পাত্রে একটি প্রস্রাবের নমুনা প্রদান করেন।', CAST(N'2025-07-23T18:36:08.8700000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, 1, N'পরীক্ষার ফলাফল থেকে কি বোঝা যায়?', N'ফলাফলটি সনাক্ত করে যে ব্যাকটেরিয়া সংক্রমণের কারণ এবং কোন অ্যান্টিবায়োটিকগুলি এর বিরুদ্ধে কার্যকর।', CAST(N'2025-07-23T18:36:08.8766667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, 1, N'পরীক্ষার ফলাফল পেতে সাধারণত কেমন সময় লাগতে পারে?', N'পরীক্ষার ফলাফল পেতে কয়েকদিন সময় লাগতে পারে।', CAST(N'2025-07-23T18:36:08.8833333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (7, 1, N'পরীক্ষায় কোন ঝুঁকি আছে কি?', N'সাধারণত একটি প্রস্রাব সংস্কৃতি সংবেদনশীলতা পরীক্ষার সাথে সম্পর্কিত কোন ঝুঁকি নেই।', CAST(N'2025-07-23T18:36:08.8900000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, 1, N'এই পরীক্ষার সাথে আরো কি কি পরীক্ষা করতে হতে পারে?', N'ক্লিনিকাল পরিস্থিতির উপর ভিত্তি করে কিডনির কার্যকারিতা বা মূত্রাশয়ের ব্যাধিগুলির মতো অন্যান্য অবস্থার জন্য সম্পর্কিত তদন্তগুলি প্রস্রাব পরীক্ষা অন্তর্ভুক্ত করতে পারে।', CAST(N'2025-07-23T18:36:08.8966667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, 10, N'পরীক্ষাটি কি?', N'ইউরিন কালচার সেনসিটিভিটি টেস্ট প্রস্রাবের নমুনায় ব্যাকটেরিয়ার উপস্থিতি পরীক্ষা করে এবং কোন অ্যান্টিবায়োটিক সংক্রমণের চিকিৎসা করতে পারে তা নির্ধারণ করে।', CAST(N'2025-07-23T18:36:31.3400000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, 10, N'পরীক্ষা কেন করা হয়?', N'এটি মূত্রনালীর সংক্রমণ (ইউটিআই) নির্ণয় করতে এবং উপযুক্ত অ্যান্টিবায়োটিক চিকিত্সার নির্দেশনা দেওয়ার জন্য করা হয়।', CAST(N'2025-07-23T18:36:31.3533333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (11, 10, N'পরীক্ষার জন্য কেমন প্রস্তুতি লাগে?', N'সাধারণত, এই পরীক্ষার জন্য কোন বিশেষ প্রস্তুতির প্রয়োজন হয় না।', CAST(N'2025-07-23T18:36:31.3600000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (12, 10, N'পরীক্ষা কেমন হয়?', N'আপনি ল্যাব দ্বারা প্রদত্ত একটি পাত্রে একটি প্রস্রাবের নমুনা প্রদান করেন।', CAST(N'2025-07-23T18:36:31.3700000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (13, 10, N'পরীক্ষার ফলাফল থেকে কি বোঝা যায়?', N'ফলাফলটি সনাক্ত করে যে ব্যাকটেরিয়া সংক্রমণের কারণ এবং কোন অ্যান্টিবায়োটিকগুলি এর বিরুদ্ধে কার্যকর।', CAST(N'2025-07-23T18:36:31.3766667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (14, 10, N'পরীক্ষার ফলাফল পেতে সাধারণত কেমন সময় লাগতে পারে?', N'পরীক্ষার ফলাফল পেতে কয়েকদিন সময় লাগতে পারে।', CAST(N'2025-07-23T18:36:31.3833333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (15, 10, N'পরীক্ষায় কোন ঝুঁকি আছে কি?', N'সাধারণত একটি প্রস্রাব সংস্কৃতি সংবেদনশীলতা পরীক্ষার সাথে সম্পর্কিত কোন ঝুঁকি নেই।', CAST(N'2025-07-23T18:36:31.3933333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (16, 10, N'এই পরীক্ষার সাথে আরো কি কি পরীক্ষা করতে হতে পারে?', N'ক্লিনিকাল পরিস্থিতির উপর ভিত্তি করে কিডনির কার্যকারিতা বা মূত্রাশয়ের ব্যাধিগুলির মতো অন্যান্য অবস্থার জন্য সম্পর্কিত তদন্তগুলি প্রস্রাব পরীক্ষা অন্তর্ভুক্ত করতে পারে।', CAST(N'2025-07-23T18:36:31.4000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (17, 11, N'পরীক্ষাটি কি?', N'ইউরিন কালচার সেনসিটিভিটি টেস্ট প্রস্রাবের নমুনায় ব্যাকটেরিয়ার উপস্থিতি পরীক্ষা করে এবং কোন অ্যান্টিবায়োটিক সংক্রমণের চিকিৎসা করতে পারে তা নির্ধারণ করে।', CAST(N'2025-07-23T18:36:57.0633333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (18, 11, N'পরীক্ষা কেন করা হয়?', N'এটি মূত্রনালীর সংক্রমণ (ইউটিআই) নির্ণয় করতে এবং উপযুক্ত অ্যান্টিবায়োটিক চিকিত্সার নির্দেশনা দেওয়ার জন্য করা হয়।', CAST(N'2025-07-23T18:36:57.0700000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (19, 11, N'পরীক্ষার জন্য কেমন প্রস্তুতি লাগে?', N'সাধারণত, এই পরীক্ষার জন্য কোন বিশেষ প্রস্তুতির প্রয়োজন হয় না।', CAST(N'2025-07-23T18:36:57.0800000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (20, 11, N'পরীক্ষা কেমন হয়?', N'আপনি ল্যাব দ্বারা প্রদত্ত একটি পাত্রে একটি প্রস্রাবের নমুনা প্রদান করেন।', CAST(N'2025-07-23T18:36:57.0866667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (21, 11, N'পরীক্ষার ফলাফল থেকে কি বোঝা যায়?', N'ফলাফলটি সনাক্ত করে যে ব্যাকটেরিয়া সংক্রমণের কারণ এবং কোন অ্যান্টিবায়োটিকগুলি এর বিরুদ্ধে কার্যকর।', CAST(N'2025-07-23T18:36:57.0966667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (22, 11, N'পরীক্ষার ফলাফল পেতে সাধারণত কেমন সময় লাগতে পারে?', N'পরীক্ষার ফলাফল পেতে কয়েকদিন সময় লাগতে পারে।', CAST(N'2025-07-23T18:36:57.1066667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (23, 11, N'পরীক্ষায় কোন ঝুঁকি আছে কি?', N'সাধারণত একটি প্রস্রাব সংস্কৃতি সংবেদনশীলতা পরীক্ষার সাথে সম্পর্কিত কোন ঝুঁকি নেই।', CAST(N'2025-07-23T18:36:57.1166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (24, 11, N'এই পরীক্ষার সাথে আরো কি কি পরীক্ষা করতে হতে পারে?', N'ক্লিনিকাল পরিস্থিতির উপর ভিত্তি করে কিডনির কার্যকারিতা বা মূত্রাশয়ের ব্যাধিগুলির মতো অন্যান্য অবস্থার জন্য সম্পর্কিত তদন্তগুলি প্রস্রাব পরীক্ষা অন্তর্ভুক্ত করতে পারে।', CAST(N'2025-07-23T18:36:57.1233333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (25, 12, N'পরীক্ষাটি কি?', N'ইউরিন কালচার সেনসিটিভিটি টেস্ট প্রস্রাবের নমুনায় ব্যাকটেরিয়ার উপস্থিতি পরীক্ষা করে এবং কোন অ্যান্টিবায়োটিক সংক্রমণের চিকিৎসা করতে পারে তা নির্ধারণ করে।', CAST(N'2025-07-23T18:37:20.4800000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (26, 12, N'পরীক্ষা কেন করা হয়?', N'এটি মূত্রনালীর সংক্রমণ (ইউটিআই) নির্ণয় করতে এবং উপযুক্ত অ্যান্টিবায়োটিক চিকিত্সার নির্দেশনা দেওয়ার জন্য করা হয়।', CAST(N'2025-07-23T18:37:20.4900000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (27, 12, N'পরীক্ষার জন্য কেমন প্রস্তুতি লাগে?', N'সাধারণত, এই পরীক্ষার জন্য কোন বিশেষ প্রস্তুতির প্রয়োজন হয় না।', CAST(N'2025-07-23T18:37:20.4966667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (28, 12, N'পরীক্ষা কেমন হয়?', N'আপনি ল্যাব দ্বারা প্রদত্ত একটি পাত্রে একটি প্রস্রাবের নমুনা প্রদান করেন।', CAST(N'2025-07-23T18:37:20.5033333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (29, 12, N'পরীক্ষার ফলাফল থেকে কি বোঝা যায়?', N'ফলাফলটি সনাক্ত করে যে ব্যাকটেরিয়া সংক্রমণের কারণ এবং কোন অ্যান্টিবায়োটিকগুলি এর বিরুদ্ধে কার্যকর।', CAST(N'2025-07-23T18:37:20.5066667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (30, 12, N'পরীক্ষার ফলাফল পেতে সাধারণত কেমন সময় লাগতে পারে?', N'পরীক্ষার ফলাফল পেতে কয়েকদিন সময় লাগতে পারে।', CAST(N'2025-07-23T18:37:20.5100000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (31, 12, N'পরীক্ষায় কোন ঝুঁকি আছে কি?', N'সাধারণত একটি প্রস্রাব সংস্কৃতি সংবেদনশীলতা পরীক্ষার সাথে সম্পর্কিত কোন ঝুঁকি নেই।', CAST(N'2025-07-23T18:37:20.5200000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (32, 12, N'এই পরীক্ষার সাথে আরো কি কি পরীক্ষা করতে হতে পারে?', N'ক্লিনিকাল পরিস্থিতির উপর ভিত্তি করে কিডনির কার্যকারিতা বা মূত্রাশয়ের ব্যাধিগুলির মতো অন্যান্য অবস্থার জন্য সম্পর্কিত তদন্তগুলি প্রস্রাব পরীক্ষা অন্তর্ভুক্ত করতে পারে।', CAST(N'2025-07-23T18:37:20.5233333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (33, 13, N'পরীক্ষাটি কি?', N'ইউরিন কালচার সেনসিটিভিটি টেস্ট প্রস্রাবের নমুনায় ব্যাকটেরিয়ার উপস্থিতি পরীক্ষা করে এবং কোন অ্যান্টিবায়োটিক সংক্রমণের চিকিৎসা করতে পারে তা নির্ধারণ করে।', CAST(N'2025-07-23T18:37:44.2933333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (34, 13, N'পরীক্ষা কেন করা হয়?', N'এটি মূত্রনালীর সংক্রমণ (ইউটিআই) নির্ণয় করতে এবং উপযুক্ত অ্যান্টিবায়োটিক চিকিত্সার নির্দেশনা দেওয়ার জন্য করা হয়।', CAST(N'2025-07-23T18:37:44.3033333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (35, 13, N'পরীক্ষার জন্য কেমন প্রস্তুতি লাগে?', N'সাধারণত, এই পরীক্ষার জন্য কোন বিশেষ প্রস্তুতির প্রয়োজন হয় না।', CAST(N'2025-07-23T18:37:44.3100000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (36, 13, N'পরীক্ষা কেমন হয়?', N'আপনি ল্যাব দ্বারা প্রদত্ত একটি পাত্রে একটি প্রস্রাবের নমুনা প্রদান করেন।', CAST(N'2025-07-23T18:37:44.3133333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (37, 13, N'পরীক্ষার ফলাফল থেকে কি বোঝা যায়?', N'ফলাফলটি সনাক্ত করে যে ব্যাকটেরিয়া সংক্রমণের কারণ এবং কোন অ্যান্টিবায়োটিকগুলি এর বিরুদ্ধে কার্যকর।', CAST(N'2025-07-23T18:37:44.3166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (38, 13, N'পরীক্ষার ফলাফল পেতে সাধারণত কেমন সময় লাগতে পারে?', N'পরীক্ষার ফলাফল পেতে কয়েকদিন সময় লাগতে পারে।', CAST(N'2025-07-23T18:37:44.3233333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (39, 13, N'পরীক্ষায় কোন ঝুঁকি আছে কি?', N'সাধারণত একটি প্রস্রাব সংস্কৃতি সংবেদনশীলতা পরীক্ষার সাথে সম্পর্কিত কোন ঝুঁকি নেই।', CAST(N'2025-07-23T18:37:44.3266667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (40, 13, N'এই পরীক্ষার সাথে আরো কি কি পরীক্ষা করতে হতে পারে?', N'ক্লিনিকাল পরিস্থিতির উপর ভিত্তি করে কিডনির কার্যকারিতা বা মূত্রাশয়ের ব্যাধিগুলির মতো অন্যান্য অবস্থার জন্য সম্পর্কিত তদন্তগুলি প্রস্রাব পরীক্ষা অন্তর্ভুক্ত করতে পারে।', CAST(N'2025-07-23T18:37:44.3300000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (41, 14, N'পরীক্ষাটি কি?', N'ইউরিন কালচার সেনসিটিভিটি টেস্ট প্রস্রাবের নমুনায় ব্যাকটেরিয়ার উপস্থিতি পরীক্ষা করে এবং কোন অ্যান্টিবায়োটিক সংক্রমণের চিকিৎসা করতে পারে তা নির্ধারণ করে।', CAST(N'2025-07-23T18:38:07.6066667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (42, 14, N'পরীক্ষা কেন করা হয়?', N'এটি মূত্রনালীর সংক্রমণ (ইউটিআই) নির্ণয় করতে এবং উপযুক্ত অ্যান্টিবায়োটিক চিকিত্সার নির্দেশনা দেওয়ার জন্য করা হয়।', CAST(N'2025-07-23T18:38:07.6166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (43, 14, N'পরীক্ষার জন্য কেমন প্রস্তুতি লাগে?', N'সাধারণত, এই পরীক্ষার জন্য কোন বিশেষ প্রস্তুতির প্রয়োজন হয় না।', CAST(N'2025-07-23T18:38:07.6233333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (44, 14, N'পরীক্ষা কেমন হয়?', N'আপনি ল্যাব দ্বারা প্রদত্ত একটি পাত্রে একটি প্রস্রাবের নমুনা প্রদান করেন।', CAST(N'2025-07-23T18:38:07.6300000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (45, 14, N'পরীক্ষার ফলাফল থেকে কি বোঝা যায়?', N'ফলাফলটি সনাক্ত করে যে ব্যাকটেরিয়া সংক্রমণের কারণ এবং কোন অ্যান্টিবায়োটিকগুলি এর বিরুদ্ধে কার্যকর।', CAST(N'2025-07-23T18:38:07.6333333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (46, 14, N'পরীক্ষার ফলাফল পেতে সাধারণত কেমন সময় লাগতে পারে?', N'পরীক্ষার ফলাফল পেতে কয়েকদিন সময় লাগতে পারে।', CAST(N'2025-07-23T18:38:07.6400000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (47, 14, N'পরীক্ষায় কোন ঝুঁকি আছে কি?', N'সাধারণত একটি প্রস্রাব সংস্কৃতি সংবেদনশীলতা পরীক্ষার সাথে সম্পর্কিত কোন ঝুঁকি নেই।', CAST(N'2025-07-23T18:38:07.6433333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (48, 14, N'এই পরীক্ষার সাথে আরো কি কি পরীক্ষা করতে হতে পারে?', N'ক্লিনিকাল পরিস্থিতির উপর ভিত্তি করে কিডনির কার্যকারিতা বা মূত্রাশয়ের ব্যাধিগুলির মতো অন্যান্য অবস্থার জন্য সম্পর্কিত তদন্তগুলি প্রস্রাব পরীক্ষা অন্তর্ভুক্ত করতে পারে।', CAST(N'2025-07-23T18:38:07.6500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (49, 16, N'পরীক্ষাটি কি?', N'লিপিড প্রোফাইল পরীক্ষা রক্তে কোলেস্টেরল এবং চর্বির মাত্রা পরিমাপ করে।', CAST(N'2025-10-11T18:38:07.6500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (50, 16, N'পরীক্ষা কেন করা হয়?', N'এই পরীক্ষাটি হৃদরোগের ঝুঁকি মূল্যায়ন, কোলেস্টেরলের মাত্রা নিরীক্ষণ এবং চিকিত্সার সিদ্ধান্তগুলি নির্দেশ করতে করা হয়।', CAST(N'2025-10-11T18:38:07.6500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (51, 16, N'পরীক্ষার জন্য কেমন প্রস্তুতি লাগে?', N'পরীক্ষার আগে, রোগীদের জল ছাড়া কিছু না খেয়ে বা পান না করে সারারাত (সাধারণত 9-12 ঘন্টা) উপবাস করতে বলা যেতে পারে।', CAST(N'2025-10-11T18:38:07.6500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (52, 16, N'পরীক্ষা কেমন হয়?', N'লিপিড প্রোফাইল পরীক্ষার জন্য আপনার হাতের শিরা থেকে রক্তের নমুনা নেওয়া হয়।', CAST(N'2025-10-11T18:38:07.6500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (53, 16, N'পরীক্ষার ফলাফল থেকে কি বোঝা যায়?', N'পরীক্ষার ফলাফল বিভিন্ন ধরনের কোলেস্টেরল এবং ট্রাইগ্লিসারাইডের মাত্রা নির্দেশ করে। অস্বাভাবিক ফলাফল হৃদরোগের উচ্চ ঝুঁকির পরামর্শ দিতে পারে।', CAST(N'2025-10-11T18:38:07.6500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (54, 16, N'পরীক্ষার ফলাফল পেতে সাধারণত কেমন সময় লাগতে পারে?', N'লিপিড প্রোফাইল পরীক্ষার ফলাফল সাধারণত এক বা দুই দিনের মধ্যে পাওয়া যায়।', CAST(N'2025-10-11T18:38:07.6500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (55, 16, N'পরীক্ষায় কোন ঝুঁকি আছে কি?', N'সাধারণত লিপিড প্রোফাইল পরীক্ষার সাথে যুক্ত কোন উল্লেখযোগ্য ঝুঁকি নেই।', CAST(N'2025-10-11T18:38:07.6500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_InvestigationFAQ] ([Id], [InvestigationId], [Question], [Answer], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (56, 16, N'পরীক্ষার সাথে আরো কি কি পরীক্ষা করতে হতে পারে?', N'সংশ্লিষ্ট তদন্তে অতিরিক্ত কার্ডিওভাসকুলার ঝুঁকি মূল্যায়ন বা প্রয়োজনে আরও বিস্তারিত কোলেস্টেরল প্রোফাইলিং অন্তর্ভুক্ত থাকতে পারে।', CAST(N'2025-10-11T18:38:07.6500000' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_InvestigationFAQ] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Medicine] ON 
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (9, 2, N'Allopathic', N'tivizidtablet300-mg150-mg300-mg', 3, 5, N'300 mg', 19, CAST(140.53 AS Decimal(5, 2)), 17, N'PackAGE', N'10', N'10', N'334-0009-064', NULL, NULL, NULL, NULL, NULL, NULL, N'Keep in cold places', NULL, NULL, NULL, NULL, NULL, N'In cold place', N'Human', 1, CAST(N'2025-06-15T02:04:14.6033333' AS DateTime2), 2, NULL, NULL, N'Technofen', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (10, 3, N'Allopathic', N'tivizidtablet300-mg150-mg300-mg', 2, 5, N'200 mg', 19, CAST(140.53 AS Decimal(5, 2)), 17, N'PackAGE', N'10', N'10', N'143-0415-007', NULL, NULL, N'Suspension', NULL, NULL, NULL, N'Take with warm water', NULL, NULL, NULL, NULL, NULL, N'In cold place', N'Human', 1, CAST(N'2025-06-15T02:08:56.9266667' AS DateTime2), 2, NULL, NULL, N'Viscotin 200', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (16, 10, N'Allopathic', NULL, 2, 2, N'150 mg', 19, CAST(5.00 AS Decimal(5, 2)), 17, N'Package', N'5', N'50', N'341-0560-010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Human', 1, CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Abenix 150', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (18, 11, N'Allopathic', NULL, 2, 2, N'200mg', 19, CAST(7.00 AS Decimal(5, 2)), 17, N'Package', N'10', N'100', N'341-0561-010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Human', 1, CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Abenix 200', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (20, 12, N'Allopathic', NULL, 2, 2, N'200 mg', 19, CAST(6.00 AS Decimal(5, 2)), 17, N'Package', N'10', N'100', N'387-0118-010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Human', 1, CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Abeclib 200', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (21, 13, N'Allopathic', NULL, 2, 2, N'150mg', 19, CAST(4.00 AS Decimal(5, 2)), 17, N'Package', N'10', N'100', N'387-0118-010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Human', 1, CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Abeclib 150', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (22, 16, N'Allopathic', NULL, 2, 11, N'500mg', 19, CAST(1.20 AS Decimal(5, 2)), 17, N'Package', N'51', N'510', N'472-8947-234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Human', 1, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Napa 500', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (23, 17, N'Allopathic', NULL, 2, 12, N'20mg', 19, CAST(6.00 AS Decimal(5, 2)), 17, N'Package', N'12', N'200', N'827-469-781', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Human', 1, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Seclo 20', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (24, 18, N'Allopathic', NULL, 3, 13, N'(20 mg+10 mg+2.5 mg)/5 ml', 20, CAST(110.00 AS Decimal(5, 2)), 17, N'Pcs', N'1', N'1', N'298-194-284', NULL, NULL, N'Syrup', NULL, NULL, NULL, N'Keep in cold place', NULL, NULL, NULL, NULL, NULL, N'In cold place', N'Human', 1, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Dexpoten Plus', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (29, 19, N'Allopathic', N'', 2, 14, N'500mg', 19, CAST(50.00 AS Decimal(5, 2)), 17, N'Package', N'12', N'120', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, N'Comet 500mg', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (30, 20, N'Allopathic', N'', 2, 15, N'30mg', 19, CAST(22.00 AS Decimal(5, 2)), 17, N'Package', N'15', N'150', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, N'Diamicron MR 30mg', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (31, 13, N'Allopathic', N'', 2, 16, N'', 19, CAST(65.00 AS Decimal(5, 2)), 17, N'Package', N'1', N'1', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, N'Sodicrom Eye Drop', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (32, 22, N'Allopathic', N'', 35, 17, N'10mg', 19, CAST(12.00 AS Decimal(5, 2)), 17, N'Package', N'4', N'14', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, N'Rolac 10', NULL)
GO
INSERT [dbo].[Configuration_Medicine] ([Id], [BrandId], [Type], [Slug], [DosageFormId], [GenericId], [Strength], [MeasurementUnitId], [UnitPrice], [PriceInUnitId], [PackageType], [PackageSize], [PackageQuantity], [DAR], [Indication], [Pharmacology], [DoseDescription], [Administration], [Contradiction], [SideEffects], [PrecautionsAndWarnings], [PregnencyAndLactation], [ModeOfAction], [Interaction], [OverdoseEffects], [TherapeuticClass], [StorageCondition], [UserFor], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Name], [CompanyDiscountPercentage]) VALUES (33, 23, N'Allopathic', N'', 2, 18, N'', 19, CAST(10.00 AS Decimal(5, 2)), 17, N'Package', N'1', N'60', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, N'Neuro-B', NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_Medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineBrand] ON 
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (1, 1, N'00001', N'Acedol', N'Acedol is indicated for the relief of pain and inflammation in osteoarthritis, rheumatoid arthritis, ankylosing spondylitis, toothache, trauma and lumbago.', CAST(N'2025-06-15T01:21:17.5100000' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8200000' AS DateTime2), 8, 15)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (2, 2, N'00002', N'Technofen', N'Technofen is indicated for the relief of pain and inflammation in osteoarthritis, rheumatoid arthritis, ankylosing spondylitis, toothache, trauma and lumbago.', CAST(N'2025-06-15T01:21:17.5333333' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8300000' AS DateTime2), 8, 17398)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (3, 3, N'00003', N'Viscotin 200', N'Viscotin is indicated as an adjuvant treatment in certain clinical condition characterized by the presence of thick and viscous mucoid or mucopurulent secretions such as: Chronic bronchopulmonary diseases', CAST(N'2025-06-15T01:21:17.5333333' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8333333' AS DateTime2), 8, 15)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (4, 1, N'00004', N'Novirax-400', N'The treatment of viral infections due to Herpes simplex virus (type I & II) and Varicella zoster virus (herpes zoster & chicken pox).', CAST(N'2025-06-15T01:21:17.5366667' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8366667' AS DateTime2), 8, 15)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (5, 2, N'00005', N'Virux', N'The treatment of viral infections due to Herpes simplex virus (type I & II) and Varicella zoster virus (herpes zoster & chicken pox).', CAST(N'2025-06-15T01:21:17.5366667' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8366667' AS DateTime2), 8, 15)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (6, 2, N'00006', N'Napa EXTRA', N'This is a combination of Paracetamol and Caffeine. Paracetamol has analgesic and antipyretic properties with weak anti-inflammatory activity.', CAST(N'2025-06-15T02:11:06.0966667' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8400000' AS DateTime2), 8, 15)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (7, 2, N'00007', N'Antacyd', N'An antacid is a medication used to neutralize stomach acid and relieve symptoms like heartburn, indigestion, and sour stomach.', CAST(N'2025-06-15T02:11:26.5966667' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8400000' AS DateTime2), 8, 15)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (10, 14, N'00008', N'Abenix 150', N'Abemaciclib is an inhibitor of cyclin-dependent kinases 4 and 6 (CDK4 and CDK6). These kinases are activated upon binding to D-cyclins. In estrogen receptor-positive (ER+) breast cancer cell lines, cyclin D1 and CDK4/6 promote phosphorylation of the retinoblastoma protein (Rb), cell cycle progression, and cell proliferation. ', CAST(N'2025-06-15T02:11:26.5966667' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8433333' AS DateTime2), 8, 5022)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (11, 14, N'00009', N'Abenix 200', N'Abemaciclib is an inhibitor of cyclin-dependent kinases 4 and 6 (CDK4 and CDK6). These kinases are activated upon binding to D-cyclins. In estrogen receptor-positive (ER+) breast cancer cell lines, cyclin D1 and CDK4/6 promote phosphorylation of the retinoblastoma protein (Rb), cell cycle progression, and cell proliferation.', CAST(N'2025-06-15T02:11:26.5966667' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8466667' AS DateTime2), 8, 5023)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (12, 6, N'00010', N'Abeclib 200', N'Abemaciclib is an inhibitor of cyclin-dependent kinases 4 and 6 (CDK4 and CDK6). These kinases are activated upon binding to D-cyclins. In estrogen receptor-positive (ER+) breast cancer cell lines, cyclin D1 and CDK4/6 promote phosphorylation of the retinoblastoma protein (Rb), cell cycle progression, and cell proliferation.', CAST(N'2025-06-15T02:11:26.5966667' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8466667' AS DateTime2), 8, 10978)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (13, 6, N'00011', N'Abeclib 150', N'Abemaciclib is an inhibitor of cyclin-dependent kinases 4 and 6 (CDK4 and CDK6). These kinases are activated upon binding to D-cyclins. In estrogen receptor-positive (ER+) breast cancer cell lines, cyclin D1 and CDK4/6 promote phosphorylation of the retinoblastoma protein (Rb), cell cycle progression, and cell proliferation.', CAST(N'2025-06-15T02:11:26.5966667' AS DateTime2), 2, CAST(N'2025-11-01T22:35:57.8500000' AS DateTime2), 8, 10987)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (14, 6, N'00012', N'Abezino 150', N'Abemaciclib is an inhibitor of cyclin-dependent kinases 4 and 6 (CDK4 and CDK6). These kinases are activated upon binding to D-cyclins. In estrogen receptor-positive (ER+) breast cancer cell lines, cyclin D1 and CDK4/6 promote phosphorylation of the retinoblastoma protein (Rb), cell cycle progression, and cell proliferation.', CAST(N'2025-06-15T02:11:26.5966667' AS DateTime2), 2, NULL, NULL, 15315)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (15, 6, N'00013', N'Abezino 200', N'Abemaciclib is an inhibitor of cyclin-dependent kinases 4 and 6 (CDK4 and CDK6). These kinases are activated upon binding to D-cyclins. In estrogen receptor-positive (ER+) breast cancer cell lines, cyclin D1 and CDK4/6 promote phosphorylation of the retinoblastoma protein (Rb), cell cycle progression, and cell proliferation.', CAST(N'2025-06-15T02:11:26.5966667' AS DateTime2), 2, NULL, NULL, 15316)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (16, 3, N'00014', N'Napa 500', N'Napa is a widely used and top-selling over-the-counter medication for fever and various types of pain in Bangladesh. ', CAST(N'2025-10-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 4567)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (17, 2, N'00015', N'Seclo 500', N'Omeprazole, a substituted benzimidazole, is an inhibitor of gastric acid secretion. It inhibits gastric acid secretion by blocking hydrogen-potassium-adenosine triphosphatase (H+/K+ ATPase) enzyme system in the gastric parietal cell. ', CAST(N'2025-10-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 6758)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (18, 6, N'00016', N'Dexpoten Plus', N'This preparation is a mixture of antitussive, decongestant and antihistamine agent. Dextromethorphan is a safe, effective, non-narcotic antitussive agent which has a central action on the cough centre in the medulla. ', CAST(N'2025-10-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 6922)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (19, 1, N'00017', N'Comet 500', N'Metformin is a biguanide type oral antihyperglycemic drug used in the management of type 2 diabetes. It lowers both basal and postprandial plasma glucose. Its mechanism of action is different from those of sulfonylureas and it does not produce hypoglycemia. Metformin decreases hepatic glucose production, decreases intestinal absorption of glucose and improves insulin sensitivity by an increase in peripheral glucose uptake and utilization.', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 0)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (20, 16, N'00018', N'Diamicron MR 30', N'Diamicron MR is a medicine that reduces blood sugar levels (oral antidiabetic medicine belonging to the sulphonylurea group). Diamicron MR is used in a certain form of diabetes (type 2 diabetes Mellitus) in adults, when diet, exercise and weight loss alone do not have an adequate effect on keeping blood sugar at the correct level.', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 0)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (21, 13, N'00019', N'Sodicrom Eye Drop', N'Sodicrom Cromoglycate 2% Eye Drops is used for the prophylaxis and symptomatic treatment of certain allergic ocular disorders including vernal kerato conjunctivitis', NULL, 2, NULL, NULL, 0)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (22, 5, N'00020', N'Rolac 10', N'Rolac is indicated for the short-term management of moderate to severe acute post-operative pain', NULL, 2, NULL, NULL, 0)
GO
INSERT [dbo].[Configuration_MedicineBrand] ([Id], [ManufacturerId], [BrandCode], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [BrandPublicId]) VALUES (23, 1, N'00021', N'Neuro-B', N'Neuro-B is indicated where a deficiency of the relevant vitamins exists.', NULL, 2, NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineBrand] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineDosageForm] ON 
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (2, N'Tablet', NULL, CAST(N'2025-06-15T00:34:16.2600000' AS DateTime2), 2, NULL, NULL, N'Tab')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (3, N'Syrup', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Syr')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (4, N'Injection', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Inj')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (5, N'Capsule', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Cap')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (6, N'Tablet (Sustained Release)', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Tab SR
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (7, N'Scalp Solution', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Sc Sol
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (8, N'Chewable Tablet', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Tab Chew
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (9, N'Oral Powder', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Oral Pow
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (10, N'Oral Suspension', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Oral Susp
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (11, N'Ointment', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Oint
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (12, N'Effervescent Powder', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Eff Pow
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (13, N'Powder for Suspension', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Pow Susp
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (14, N'Effervescent Granules', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Eff Gran
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (15, N'Liquid', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Liq
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (16, N'Muscle Rub', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Mus Rub
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (17, N'Cream', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Crm
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (18, N'Dialysis Solution', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Dial Sol
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (19, N'Dispersible Tablet', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Tab Disp
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (20, N'Effervescent Tablet', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Tab Eff
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (21, N'IV Infusion', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'IV Inf
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (22, N'Ophthalmic Ointment', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Oph Oint
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (23, N'SC Injection', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'SC Inj
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (24, N'Gel', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Gel')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (25, N'Topical Gel', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Top Gel
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (26, N'Retard Tablet', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Tab Ret
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (27, N'Tablet (Extended Release)', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Tab ER
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (28, N'Topical Solution', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Top Sol
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (29, N'Topical Spray', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Top Spray
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (30, N'Pediatric Drops', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Ped Drops
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (31, N'IM/IV Injection', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'IM/IV Inj
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (32, N'Oral Paste', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Oral Paste
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (33, N'Nail Lacquer', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Nail Lacq
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (34, N'IV Injection', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'IV Inj
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (35, N'Ophthalmic Solution', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Oph Sol
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (36, N'Nebuliser Solution', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Neb Sol
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (37, N'Tablet (Enteric Coated)', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Tab EC
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (38, N'Capsule (Extended Release)', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Cap ER
')
GO
INSERT [dbo].[Configuration_MedicineDosageForm] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ShortForm]) VALUES (39, N'Nasal Spray', NULL, CAST(N'2025-06-15T00:34:16.2800000' AS DateTime2), 2, NULL, NULL, N'Nas Spray
')
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineDosageForm] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineFAQ] ON 
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (1, CAST(N'2025-06-24T15:59:59.1600000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে?', N'উদরাময়, বদহজম অথবা চামড়ায় ফুসকুড়ি হতে পারে।', 9)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (2, CAST(N'2025-06-24T15:59:59.1700000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারে বিশেষ যে সতর্কতা অবলম্বন করতে হবে?', N' বৃক্কের অকার্যকারিতার ক্ষেত্রে শরীর থেকে এন্টিবায়োটিক নির্গমণ বিলম্বিত হয় বলে ঔষধটির দৈনিক মাত্রা কমানোর প্রয়োজন হতে পারে।', 9)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (3, CAST(N'2025-06-24T15:59:59.1766667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সাথে অন্য ওষুধের কি পাশ্ব প্রতিক্রিয়া আছে?', N'প্রাবেনিসিড। 
', 9)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (4, CAST(N'2025-06-24T15:59:59.1800000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির একটি ডোজ বাদ গেলে কি করবেন?', N'ওষুধটি নির্ধারিত সময়ে নিতে ভুলে গেলে মনে পড়ার সাথে সাথে গ্রহণ করতে হবে।  তবে পরবর্তী নির্ধারিত ডোজ গ্রহণের সময় হয়ে গেলে ভুলে যাওয়া ডোজ গ্রহণ করা যাবে না। ওষুধটি ডাবল ডোজ নেয়া যাবে না।
', 9)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (5, CAST(N'2025-06-24T15:59:59.1866667' AS DateTime2), 2, NULL, NULL, N'ওষুধটি সংক্ষণের উপায়', N'হালকা থেকে সুরক্ষিত একটি শীতল ও শুকনো জায়গায় সঞ্চয় করুন। অ্যামোক্সিসিলিন সাসপেনশন এবং ড্রপগুলি তাজা প্রস্তুত করা উচিত, একটি শীতল শুকনো স্থানে একটি ফ্রিজে সংরক্ষণ করা উচিত। পুনর্গঠিত স্থগিতাদেশ এবং ড্রপগুলি ঘরের তাপমাত্রায় রাখলে 5 দিনের মধ্যে বা ফ্রিজে রাখলে 7 দিনের মধ্যে ব্যবহার করতে হবে।', 9)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (6, CAST(N'2025-06-24T15:59:59.1900000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সক্রিয় উপাদানগুলি কি?', N'এটি একটি অ্যামিনো-পেনিসিলিন, অ্যান্টিমাইক্রোবিয়াল প্রতিরোধের জন্য পেনিসিলিনের সাথে একটি অতিরিক্ত অ্যামিনো গ্রুপ যোগ করে তৈরি করা হয়।', 9)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (7, CAST(N'2025-06-24T15:59:59.1933333' AS DateTime2), 2, NULL, NULL, N'ওষুধটি অন্য কি নামে পরিচিত?
', N'দয়া করে বিকল্প তালিকা চেক করুন - লিঙ্কে ক্লিক করুন
', 9)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (8, CAST(N'2025-06-24T15:59:59.2000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি কোন উদ্দেশ্যে ব্যবহার করা হয়?', N'নাক-কান-গলা এর সংক্রমণ, যৌন ও মূত্রনালীর সংক্রমণ, ত্বক ও ত্বকের কাঠামাের সংক্রমণ, নিম্ন শ্বাসনালীর সংক্রমণ, গনােরিয়া এবং দাঁতের অস্ত্রোপচার এর পরবর্তীতে এন্ডােকার্ডিয়ামের প্রদাহের প্রতিরােধে ব্যবহার করা হয়। *** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।', 9)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (9, CAST(N'2025-06-24T15:59:59.2066667' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারের নিয়ম?', N'অ্যামোক্সিল খাওয়ার নিয়ম / ব্যবহারের নিয়ম
o   মৃদু ও মাঝারি ধরণের সংক্রমণের ক্ষেত্রে প্রাপ্ত বয়স্ক : ৫০০ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ২৫০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ২৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ২০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
o   তীব্র সংক্রমণের ক্ষেত্রে : প্রাপ্তবয়স্ক : ৮৭৫ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ৫০০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ৪৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ৪০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
*** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।
', 9)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (10, CAST(N'2025-06-24T16:01:05.5766667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে?
', N'উদরাময়, বদহজম অথবা চামড়ায় ফুসকুড়ি হতে পারে।', 10)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (11, CAST(N'2025-06-24T16:01:05.5866667' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারে বিশেষ যে সতর্কতা অবলম্বন করতে হবে?', N' বৃক্কের অকার্যকারিতার ক্ষেত্রে শরীর থেকে এন্টিবায়োটিক নির্গমণ বিলম্বিত হয় বলে ঔষধটির দৈনিক মাত্রা কমানোর প্রয়োজন হতে পারে।', 10)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (12, CAST(N'2025-06-24T16:01:05.5933333' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সাথে অন্য ওষুধের কি পাশ্ব প্রতিক্রিয়া আছে?', N'প্রাবেনিসিড। ', 10)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (13, CAST(N'2025-06-24T16:01:05.5966667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে?', N'উদরাময়, বদহজম অথবা চামড়ায় ফুসকুড়ি হতে পারে।', 10)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (14, CAST(N'2025-06-24T16:01:05.6033333' AS DateTime2), 2, NULL, NULL, N'ওষুধটি সংক্ষণের উপায়
', N'বৃক্কের অকার্যকারিতার ক্ষেত্রে শরীর থেকে এন্টিবায়োটিক নির্গমণ বিলম্বিত হয় বলে ঔষধটির দৈনিক মাত্রা কমানোর প্রয়োজন হতে পারে।
', 10)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (15, CAST(N'2025-06-24T16:01:05.6100000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সক্রিয় উপাদানগুলি কি?', N'এটি একটি অ্যামিনো-পেনিসিলিন, অ্যান্টিমাইক্রোবিয়াল প্রতিরোধের জন্য পেনিসিলিনের সাথে একটি অতিরিক্ত অ্যামিনো গ্রুপ যোগ করে তৈরি করা হয়।', 10)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (16, CAST(N'2025-06-24T16:01:05.6133333' AS DateTime2), 2, NULL, NULL, N'ওষুধটি অন্য কি নামে পরিচিত?
', N'দয়া করে বিকল্প তালিকা চেক করুন - লিঙ্কে ক্লিক করুন', 10)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (17, CAST(N'2025-06-24T16:01:05.6200000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি কোন উদ্দেশ্যে ব্যবহার করা হয়?
', N'নাক-কান-গলা এর সংক্রমণ, যৌন ও মূত্রনালীর সংক্রমণ, ত্বক ও ত্বকের কাঠামাের সংক্রমণ, নিম্ন শ্বাসনালীর সংক্রমণ, গনােরিয়া এবং দাঁতের অস্ত্রোপচার এর পরবর্তীতে এন্ডােকার্ডিয়ামের প্রদাহের প্রতিরােধে ব্যবহার করা হয়। 
*** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।
', 10)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (18, CAST(N'2025-06-24T16:01:05.6233333' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারের নিয়ম?
', N'অ্যামোক্সিল খাওয়ার নিয়ম / ব্যবহারের নিয়ম
o   মৃদু ও মাঝারি ধরণের সংক্রমণের ক্ষেত্রে প্রাপ্ত বয়স্ক : ৫০০ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ২৫০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ২৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ২০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
o   তীব্র সংক্রমণের ক্ষেত্রে : প্রাপ্তবয়স্ক : ৮৭৫ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ৫০০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ৪৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ৪০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
*** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।
', 10)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (19, CAST(N'2025-06-24T16:01:37.5933333' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে?
', N'উদরাময়, বদহজম অথবা চামড়ায় ফুসকুড়ি হতে পারে।', 16)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (20, CAST(N'2025-06-24T16:01:37.6000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারে বিশেষ যে সতর্কতা অবলম্বন করতে হবে?', N'বৃক্কের অকার্যকারিতার ক্ষেত্রে শরীর থেকে এন্টিবায়োটিক নির্গমণ বিলম্বিত হয় বলে ঔষধটির দৈনিক মাত্রা কমানোর প্রয়োজন হতে পারে।
', 16)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (21, CAST(N'2025-06-24T16:01:37.6066667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সাথে অন্য ওষুধের কি পাশ্ব প্রতিক্রিয়া আছে?
', N'প্রাবেনিসিড।', 16)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (22, CAST(N'2025-06-24T16:01:37.6133333' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে?', N'উদরাময়, বদহজম অথবা চামড়ায় ফুসকুড়ি হতে পারে।', 16)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (23, CAST(N'2025-06-24T16:01:37.6200000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারে বিশেষ যে সতর্কতা অবলম্বন করতে হবে?
', N'বৃক্কের অকার্যকারিতার ক্ষেত্রে শরীর থেকে এন্টিবায়োটিক নির্গমণ বিলম্বিত হয় বলে ঔষধটির দৈনিক মাত্রা কমানোর প্রয়োজন হতে পারে।', 16)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (24, CAST(N'2025-06-24T16:01:37.6233333' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সাথে অন্য ওষুধের কি পাশ্ব প্রতিক্রিয়া আছে?', N'প্রাবেনিসিড।', 16)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (25, CAST(N'2025-06-24T16:01:37.6300000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির একটি ডোজ বাদ গেলে কি করবেন?', N'ওষুধটি নির্ধারিত সময়ে নিতে ভুলে গেলে মনে পড়ার সাথে সাথে গ্রহণ করতে হবে।  তবে পরবর্তী নির্ধারিত ডোজ গ্রহণের সময় হয়ে গেলে ভুলে যাওয়া ডোজ গ্রহণ করা যাবে না। ওষুধটি ডাবল ডোজ নেয়া যাবে না।', 16)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (26, CAST(N'2025-06-24T16:01:37.6366667' AS DateTime2), 2, NULL, NULL, N'ওষুধটি সংক্ষণের উপায়', N'হালকা থেকে সুরক্ষিত একটি শীতল ও শুকনো জায়গায় সঞ্চয় করুন। অ্যামোক্সিসিলিন সাসপেনশন এবং ড্রপগুলি তাজা প্রস্তুত করা উচিত, একটি শীতল শুকনো স্থানে একটি ফ্রিজে সংরক্ষণ করা উচিত। পুনর্গঠিত স্থগিতাদেশ এবং ড্রপগুলি ঘরের তাপমাত্রায় রাখলে 5 দিনের মধ্যে বা ফ্রিজে রাখলে 7 দিনের মধ্যে ব্যবহার করতে হবে।', 16)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (27, CAST(N'2025-06-24T16:01:37.6400000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সক্রিয় উপাদানগুলি কি?
', N'এটি একটি অ্যামিনো-পেনিসিলিন, অ্যান্টিমাইক্রোবিয়াল প্রতিরোধের জন্য পেনিসিলিনের সাথে একটি অতিরিক্ত অ্যামিনো গ্রুপ যোগ করে তৈরি করা হয়।', 16)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (28, CAST(N'2025-06-24T16:02:03.5166667' AS DateTime2), 2, NULL, NULL, N'ওষুধটি অন্য কি নামে পরিচিত?', N'দয়া করে বিকল্প তালিকা চেক করুন - লিঙ্কে ক্লিক করুন', 18)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (29, CAST(N'2025-06-24T16:02:03.5233333' AS DateTime2), 2, NULL, NULL, N'ওষুধটি কোন উদ্দেশ্যে ব্যবহার করা হয়?', N'নাক-কান-গলা এর সংক্রমণ, যৌন ও মূত্রনালীর সংক্রমণ, ত্বক ও ত্বকের কাঠামাের সংক্রমণ, নিম্ন শ্বাসনালীর সংক্রমণ, গনােরিয়া এবং দাঁতের অস্ত্রোপচার এর পরবর্তীতে এন্ডােকার্ডিয়ামের প্রদাহের প্রতিরােধে ব্যবহার করা হয়। 
*** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।
', 18)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (30, CAST(N'2025-06-24T16:02:03.5333333' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারের নিয়ম?
', N'অ্যামোক্সিল খাওয়ার নিয়ম / ব্যবহারের নিয়ম
o   মৃদু ও মাঝারি ধরণের সংক্রমণের ক্ষেত্রে প্রাপ্ত বয়স্ক : ৫০০ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ২৫০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ২৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ২০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
o   তীব্র সংক্রমণের ক্ষেত্রে : প্রাপ্তবয়স্ক : ৮৭৫ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ৫০০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ৪৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ৪০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
*** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।
', 18)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (31, CAST(N'2025-06-24T16:02:03.5466667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে?', N'উদরাময়, বদহজম অথবা চামড়ায় ফুসকুড়ি হতে পারে।', 18)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (32, CAST(N'2025-06-24T16:02:03.5533333' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারে বিশেষ যে সতর্কতা অবলম্বন করতে হবে?', N'বৃক্কের অকার্যকারিতার ক্ষেত্রে শরীর থেকে এন্টিবায়োটিক নির্গমণ বিলম্বিত হয় বলে ঔষধটির দৈনিক মাত্রা কমানোর প্রয়োজন হতে পারে।', 18)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (33, CAST(N'2025-06-24T16:02:03.5566667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সাথে অন্য ওষুধের কি পাশ্ব প্রতিক্রিয়া আছে?', N'প্রাবেনিসিড। 
', 18)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (34, CAST(N'2025-06-24T16:02:03.5666667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির একটি ডোজ বাদ গেলে কি করবেন?
', N'ওষুধটি নির্ধারিত সময়ে নিতে ভুলে গেলে মনে পড়ার সাথে সাথে গ্রহণ করতে হবে।  তবে পরবর্তী নির্ধারিত ডোজ গ্রহণের সময় হয়ে গেলে ভুলে যাওয়া ডোজ গ্রহণ করা যাবে না। ওষুধটি ডাবল ডোজ নেয়া যাবে না।
', 18)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (35, CAST(N'2025-06-24T16:02:03.5700000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি সংক্ষণের উপায়
', N'হালকা থেকে সুরক্ষিত একটি শীতল ও শুকনো জায়গায় সঞ্চয় করুন। অ্যামোক্সিসিলিন সাসপেনশন এবং ড্রপগুলি তাজা প্রস্তুত করা উচিত, একটি শীতল শুকনো স্থানে একটি ফ্রিজে সংরক্ষণ করা উচিত। পুনর্গঠিত স্থগিতাদেশ এবং ড্রপগুলি ঘরের তাপমাত্রায় রাখলে 5 দিনের মধ্যে বা ফ্রিজে রাখলে 7 দিনের মধ্যে ব্যবহার করতে হবে।
', 18)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (36, CAST(N'2025-06-24T16:02:03.5766667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সক্রিয় উপাদানগুলি কি?
', N'এটি একটি অ্যামিনো-পেনিসিলিন, অ্যান্টিমাইক্রোবিয়াল প্রতিরোধের জন্য পেনিসিলিনের সাথে একটি অতিরিক্ত অ্যামিনো গ্রুপ যোগ করে তৈরি করা হয়।', 18)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (37, CAST(N'2025-06-24T16:02:29.2833333' AS DateTime2), 2, NULL, NULL, N'ওষুধটি অন্য কি নামে পরিচিত?', N'দয়া করে বিকল্প তালিকা চেক করুন - লিঙ্কে ক্লিক করুন', 20)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (38, CAST(N'2025-06-24T16:02:29.2900000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি কোন উদ্দেশ্যে ব্যবহার করা হয়?', N'নাক-কান-গলা এর সংক্রমণ, যৌন ও মূত্রনালীর সংক্রমণ, ত্বক ও ত্বকের কাঠামাের সংক্রমণ, নিম্ন শ্বাসনালীর সংক্রমণ, গনােরিয়া এবং দাঁতের অস্ত্রোপচার এর পরবর্তীতে এন্ডােকার্ডিয়ামের প্রদাহের প্রতিরােধে ব্যবহার করা হয়। 
*** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।
', 20)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (39, CAST(N'2025-06-24T16:02:29.2966667' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারের নিয়ম?
', N'অ্যামোক্সিল খাওয়ার নিয়ম / ব্যবহারের নিয়ম
o   মৃদু ও মাঝারি ধরণের সংক্রমণের ক্ষেত্রে প্রাপ্ত বয়স্ক : ৫০০ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ২৫০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ২৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ২০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
o   তীব্র সংক্রমণের ক্ষেত্রে : প্রাপ্তবয়স্ক : ৮৭৫ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ৫০০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ৪৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ৪০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
*** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।
', 20)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (40, CAST(N'2025-06-24T16:02:29.3066667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে?
', N'উদরাময়, বদহজম অথবা চামড়ায় ফুসকুড়ি হতে পারে।
', 20)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (41, CAST(N'2025-06-24T16:02:29.3100000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারে বিশেষ যে সতর্কতা অবলম্বন করতে হবে?', N' বৃক্কের অকার্যকারিতার ক্ষেত্রে শরীর থেকে এন্টিবায়োটিক নির্গমণ বিলম্বিত হয় বলে ঔষধটির দৈনিক মাত্রা কমানোর প্রয়োজন হতে পারে।', 20)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (42, CAST(N'2025-06-24T16:02:29.3200000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সাথে অন্য ওষুধের কি পাশ্ব প্রতিক্রিয়া আছে?
', N'প্রাবেনিসিড। 
', 20)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (43, CAST(N'2025-06-24T16:02:29.3233333' AS DateTime2), 2, NULL, NULL, N'ওষুধটির একটি ডোজ বাদ গেলে কি করবেন?
', N'ওষুধটি নির্ধারিত সময়ে নিতে ভুলে গেলে মনে পড়ার সাথে সাথে গ্রহণ করতে হবে।  তবে পরবর্তী নির্ধারিত ডোজ গ্রহণের সময় হয়ে গেলে ভুলে যাওয়া ডোজ গ্রহণ করা যাবে না। ওষুধটি ডাবল ডোজ নেয়া যাবে না।', 20)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (44, CAST(N'2025-06-24T16:02:29.3300000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি সংক্ষণের উপায়
', N'হালকা থেকে সুরক্ষিত একটি শীতল ও শুকনো জায়গায় সঞ্চয় করুন। অ্যামোক্সিসিলিন সাসপেনশন এবং ড্রপগুলি তাজা প্রস্তুত করা উচিত, একটি শীতল শুকনো স্থানে একটি ফ্রিজে সংরক্ষণ করা উচিত। পুনর্গঠিত স্থগিতাদেশ এবং ড্রপগুলি ঘরের তাপমাত্রায় রাখলে 5 দিনের মধ্যে বা ফ্রিজে রাখলে 7 দিনের মধ্যে ব্যবহার করতে হবে।
', 20)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (45, CAST(N'2025-06-24T16:02:29.3333333' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সক্রিয় উপাদানগুলি কি?', N'এটি একটি অ্যামিনো-পেনিসিলিন, অ্যান্টিমাইক্রোবিয়াল প্রতিরোধের জন্য পেনিসিলিনের সাথে একটি অতিরিক্ত অ্যামিনো গ্রুপ যোগ করে তৈরি করা হয়।', 20)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (46, CAST(N'2025-06-24T16:02:56.0300000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি অন্য কি নামে পরিচিত?
', N'দয়া করে বিকল্প তালিকা চেক করুন - লিঙ্কে ক্লিক করুন
', 21)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (47, CAST(N'2025-06-24T16:02:56.0400000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি কোন উদ্দেশ্যে ব্যবহার করা হয়?
', N'নাক-কান-গলা এর সংক্রমণ, যৌন ও মূত্রনালীর সংক্রমণ, ত্বক ও ত্বকের কাঠামাের সংক্রমণ, নিম্ন শ্বাসনালীর সংক্রমণ, গনােরিয়া এবং দাঁতের অস্ত্রোপচার এর পরবর্তীতে এন্ডােকার্ডিয়ামের প্রদাহের প্রতিরােধে ব্যবহার করা হয়। 
*** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।
', 21)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (48, CAST(N'2025-06-24T16:02:56.0466667' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারের নিয়ম?
', N'অ্যামোক্সিল খাওয়ার নিয়ম / ব্যবহারের নিয়ম
o   মৃদু ও মাঝারি ধরণের সংক্রমণের ক্ষেত্রে প্রাপ্ত বয়স্ক : ৫০০ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ২৫০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ২৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ২০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
o   তীব্র সংক্রমণের ক্ষেত্রে : প্রাপ্তবয়স্ক : ৮৭৫ মি.গ্রা. প্রতি ১২ ঘন্টা অন্তর অথবা ৫০০ মি.গ্রা. প্রতি ৮ ঘন্টা অন্তর । 
o   শিশু : ৪৫ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ১২ ঘন্টা অন্তর অথবা ৪০ মি.গ্রা./কেজি দৈহিক ওজন/দিন প্রতি ৮ ঘন্টা অন্তর। 
*** চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবন করলে দীর্ঘমেয়াদি সমস্যা দেখা দিতে পারে।
', 21)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (49, CAST(N'2025-06-24T16:02:56.0500000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে?', N'উদরাময়, বদহজম অথবা চামড়ায় ফুসকুড়ি হতে পারে।
', 21)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (50, CAST(N'2025-06-24T16:02:56.0566667' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারে বিশেষ যে সতর্কতা অবলম্বন করতে হবে?', N' বৃক্কের অকার্যকারিতার ক্ষেত্রে শরীর থেকে এন্টিবায়োটিক নির্গমণ বিলম্বিত হয় বলে ঔষধটির দৈনিক মাত্রা কমানোর প্রয়োজন হতে পারে।', 21)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (51, CAST(N'2025-06-24T16:02:56.0600000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সাথে অন্য ওষুধের কি পাশ্ব প্রতিক্রিয়া আছে?
', N'প্রাবেনিসিড। 
', 21)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (52, CAST(N'2025-06-24T16:02:56.0666667' AS DateTime2), 2, NULL, NULL, N'ওষুধটির একটি ডোজ বাদ গেলে কি করবেন?', N'ওষুধটি নির্ধারিত সময়ে নিতে ভুলে গেলে মনে পড়ার সাথে সাথে গ্রহণ করতে হবে।  তবে পরবর্তী নির্ধারিত ডোজ গ্রহণের সময় হয়ে গেলে ভুলে যাওয়া ডোজ গ্রহণ করা যাবে না। ওষুধটি ডাবল ডোজ নেয়া যাবে না।
', 21)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (53, CAST(N'2025-06-24T16:02:56.0700000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি সংক্ষণের উপায়
', N'হালকা থেকে সুরক্ষিত একটি শীতল ও শুকনো জায়গায় সঞ্চয় করুন। অ্যামোক্সিসিলিন সাসপেনশন এবং ড্রপগুলি তাজা প্রস্তুত করা উচিত, একটি শীতল শুকনো স্থানে একটি ফ্রিজে সংরক্ষণ করা উচিত। পুনর্গঠিত স্থগিতাদেশ এবং ড্রপগুলি ঘরের তাপমাত্রায় রাখলে 5 দিনের মধ্যে বা ফ্রিজে রাখলে 7 দিনের মধ্যে ব্যবহার করতে হবে।', 21)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (54, CAST(N'2025-06-24T16:02:56.0800000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সক্রিয় উপাদানগুলি কি?
', N'এটি একটি অ্যামিনো-পেনিসিলিন, অ্যান্টিমাইক্রোবিয়াল প্রতিরোধের জন্য পেনিসিলিনের সাথে একটি অতিরিক্ত অ্যামিনো গ্রুপ যোগ করে তৈরি করা হয়।
', 21)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (55, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সক্রিয় উপাদানগুলি কি?', N'অ্যাসিটামিনোফেন', 22)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (56, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি অন্য কি নামে পরিচিত? ', N'দয়া করে বিকল্প তালিকা চেক করুন - লিঙ্কে ক্লিক করুন', 22)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (57, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি কোন উদ্দেশ্যে ব্যবহার করা হয়?', N'জ্বর, সাধারণ সর্দি এবং ইনফ্লুয়েঞ্জা, মাথাব্যথা, দাঁতের ব্যথা, কানের ব্যথা, শরীরে ব্যথা, মায়ালজিয়া, নিউরালজিয়া, ডিসমেনোরিয়া, মচকে যাওয়া, কোলিক ব্যথা, পিঠে ব্যথা, অপারেশন পরবর্তী ব্যথা, প্রসবোত্তর ব্যথা, প্রদাহজনিত ব্যথা এবং শিশুদের টিকা দেওয়ার পর ব্যথা। এটি বাত এবং অস্টিওআর্থারিক ব্যথা এবং জয়েন্টগুলির শক্ত হওয়ার জন্যও নির্দেশিত', 22)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (58, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারের নিয়ম?', N'প্রাপ্তবয়স্কদের জন্য: প্রতিদিন ৪ থেকে ৬ ঘন্টা পরপর ১-২ টি ট্যাবলেট। একদিনে ৪ গ্রাম ট্যাবলেট সর্বোচ্চ ৮টি নেয়া যাবে। 
 
৬-১২ বছরের শিশুদের জন্য: ১/২ থেকে ১ টি ট্যাবলেট প্রতিদিন ৩ থেকে ৪ বার। দীর্ঘমেয়াদী চিকিৎসায় ২.৬ গ্রামের বেশি দেয়া যাবে না। 
', 22)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (59, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে? ', N'ওষুধটি গ্রহনের ফলে কিছু পাশ্ব প্রতিক্রিয়া হতে পারে। যার মধ্যে বমি বমি ভাব, জ্বর, ত্বকে অ্যালার্জি, গ্যাস্ট্রিক/মুখে আলসার, রক্তস্বল্পতা, ক্লান্তি ইত্যাদি।', 22)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (60, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারে বিশেষ যে সতর্কতা অবলম্বন করতে হবে?', N'লিভারে সমস্যা থাকলে এই ওষুধটি গ্রহণে বিশেষ সাবধানতা রাখা উচিত।   ', 22)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (61, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সাথে অন্য ওষুধের কি পাশ্ব প্রতিক্রিয়া আছে?', N'কার্বা‌মাজেপিন, ফিনাইটোয়িন, লেফ্লুনুমাইড ইত্যাদি ওষুধের সাথে পাশ্ব প্রতিক্রিয়া হতে পারে। ', 22)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (62, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির একটি ডোজ বাদ গেলে কি করবেন? ', N'প্যারাসিটামল সাধারণত যখন প্রয়োজন তা হিসেবে নেয়া হয়। যদি ওষুধটি নিয়মিত ভিত্তিতে নেয়া হয়, তবে ভুলে যাওয়া ডোজ যত তাড়াতাড়ি সম্ভব গ্রহণ করা উচিত। পরবর্তী নির্ধারিত ডোজ গ্রহণের সময় ভুলে যাওয়া ডোজ গ্রহণ করা যাবে না।', 22)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (63, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি সংক্ষণের উপায় ', N'আলো ও তাপ থেকে দূরে এবং শুষ্ক স্থানে রাখুন। ', 22)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (64, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সক্রিয় উপাদানগুলি কি?', N'ওমেপ্রাজল বা Omeprazole', 23)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (65, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি অন্য কি নামে পরিচিত? ', N'বিকল্প তালিকা চেক করুন-লিংকে ক্লিক করুন', 23)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (66, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি কোন উদ্দেশ্যে ব্যবহার করা হয়?', N'ডুওডেনাল এবং গ্যাস্ট্রিক আলসার, এনএসএআইডি-প্ররোচিত গ্যাস্ট্রিক এবং ডুওডেনাল আলসার, রিফ্লাক্স ইসোফ্যাগাইটিস, জিইআরডি (গ্যাস্ট্রোইসোফেজিয়াল রিফ্লাক্স ডিজিজ), উপযুক্ত অ্যান্টিবায়োটিক দিয়ে এইচ পাইলোরি নির্মূল, জোলিংগার-এলিসন সিনড্রোম', 23)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (67, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারের নিয়ম?', N'খাবার আগে বা পরে ট্যাবলেট নিন.ওষুধটি একটানা 4 সপ্তাহ কোর্স হিসেবে চিকিৎসক দিয়ে থাকেন। সিরাপ খেলে ভাল ভাবে ঝাঁকিয়ে নিতে হবে। আর পাউডার জাতীয় হলে অল্প পানির মধ্যে পুরোটা মিশিয়ে খেতে হবে।   ', 23)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (68, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির কি কি পাশ্ব প্রতিক্রিয়া আছে? ', N'ওষুধটি গ্রহনের ফলে কিছু পাশ্ব প্রতিক্রিয়া হতে পারে। যার মধ্যে কোষ্ঠকাঠিন্য, গ্যাস, বমি বমি ভাব, ডায়রিয়া, বমি বমি ভাব, মাথাব্যথা ইত্যাদি। ', 23)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (69, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি ব্যবহারে বিশেষ যে সতর্কতা অবলম্বন করতে হবে?', N'কিডনি সমস্যা থাকলে এটির ব্যবহারে সতর্কতা অবলম্বন করা উচিত। ', 23)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (70, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির সাথে অন্য ওষুধের কি পাশ্ব প্রতিক্রিয়া আছে?', N'অন্য ওষুধ ব্যবহারের সাথে এর পাশ্ব প্রতিক্রিয়া হতে পারে। ডিগক্সিন, ক্লোপিডোগ্রেল, মেথোট্রেক্সাটে,  এমন এন্টিবায়োটিক যেমন এমোক্সিসিলিন, ক্লারিথ্রোমাইসিন এর পাশ্ব প্রতিক্রিয়া হতে পারে।  ', 23)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (71, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটির একটি ডোজ বাদ গেলে কি করবেন? ', N'ওষুধের একটি ডোজ ভুলে বাদ গেলে মনে পড়ার সাথে সাথে তা গ্রহণ করুন। তবে পরবর্তী ডোজ গ্রহণের কাছাকাছি সময় হয়ে গেলে বাদ পড়া ডোজটি এড়িয়ে যান। তখন আপনার ডোজ গ্রহণের আগের সময় সূচিটি চালিয়ে যেতে হবে। বাদ পড়া ডোজ পূর্ণের জন্য কোন ভাবেই ডাবল ডোজ নেয়া যাবে না। ', 23)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (72, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'ওষুধটি সংক্ষণের উপায় ', N'আলো ও তাপ থেকে দূরে এবং শুষ্ক স্থানে রাখুন। শিশুদের নাগালের বাইরে রাখুন।    ', 23)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (73, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'পরীক্ষাটি কি?', N'লিপিড প্রোফাইল পরীক্ষা রক্তে কোলেস্টেরল এবং চর্বির মাত্রা পরিমাপ করে।', 24)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (74, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'পরীক্ষা কেন করা হয়?', N'এই পরীক্ষাটি হৃদরোগের ঝুঁকি মূল্যায়ন, কোলেস্টেরলের মাত্রা নিরীক্ষণ এবং চিকিত্সার সিদ্ধান্তগুলি নির্দেশ করতে করা হয়।', 24)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (75, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'পরীক্ষার জন্য কেমন প্রস্তুতি লাগে?', N'পরীক্ষার আগে, রোগীদের জল ছাড়া কিছু না খেয়ে বা পান না করে সারারাত (সাধারণত 9-12 ঘন্টা) উপবাস করতে বলা যেতে পারে।', 24)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (76, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'পরীক্ষা কেমন হয়?', N'লিপিড প্রোফাইল পরীক্ষার জন্য আপনার হাতের শিরা থেকে রক্তের নমুনা নেওয়া হয়।', 24)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (77, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'পরীক্ষার ফলাফল থেকে কি বোঝা যায়?', N'পরীক্ষার ফলাফল বিভিন্ন ধরনের কোলেস্টেরল এবং ট্রাইগ্লিসারাইডের মাত্রা নির্দেশ করে। অস্বাভাবিক ফলাফল হৃদরোগের উচ্চ ঝুঁকির পরামর্শ দিতে পারে।', 24)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (78, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'পরীক্ষার ফলাফল পেতে সাধারণত কেমন সময় লাগতে পারে?', N'লিপিড প্রোফাইল পরীক্ষার ফলাফল সাধারণত এক বা দুই দিনের মধ্যে পাওয়া যায়।', 24)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (79, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'পরীক্ষায় কোন ঝুঁকি আছে কি?', N'সাধারণত লিপিড প্রোফাইল পরীক্ষার সাথে যুক্ত কোন উল্লেখযোগ্য ঝুঁকি নেই।', 24)
GO
INSERT [dbo].[Configuration_MedicineFAQ] ([Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Question], [Answer], [MedicineId]) VALUES (80, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'পরীক্ষার সাথে আরো কি কি পরীক্ষা করতে হতে পারে?', N'সংশ্লিষ্ট তদন্তে অতিরিক্ত কার্ডিওভাসকুলার ঝুঁকি মূল্যায়ন বা প্রয়োজনে আরও বিস্তারিত কোলেস্টেরল প্রোফাইলিং অন্তর্ভুক্ত থাকতে পারে।', 24)
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineFAQ] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineGeneric] ON 
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, N'Abacavir + Lamivudine + Zidovudine', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, N'Abemaciclib', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, N'Abiraterone Acetate', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, N'Acalabrutinib', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, N'Acarbose', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, N'Aceclofenac', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (7, N'Nabayas Louha Herbal Haematinic', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, N'Aravindasav', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, N'Arjunarista', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, N'Malus sylvestris', NULL, CAST(N'2025-06-15T00:28:01.0166667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (11, N'Paracetamol', NULL, CAST(N'2025-10-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (12, N'Omeprazole', NULL, CAST(N'2025-10-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (13, N'Dextromethorphan + Phenylephrine + Triprolidine', NULL, CAST(N'2025-10-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (14, N'Metformin Hydrochloride', N'', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (15, N'Gliclazide', N'', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (16, N'Sodium Cromoglicate [2%]', N'', CAST(N'2025-11-12T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (17, N'Ketorolac Tromethamine', N'', CAST(N'2025-11-12T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineGeneric] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (18, N'Vitamin B1, B6 & B12', N'', CAST(N'2025-11-12T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineGeneric] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineManufactureInfo] ON 
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (1, N'Square Pharmaceuticals Ltd.', N'Bangladesh', N'N/A', CAST(N'1985-01-01T00:00:00.0000000' AS DateTime2), N'577 generics, 959 brand names', CAST(N'2025-06-15T00:26:06.7033333' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (2, N'Incepta Pharmaceuticals Ltd.', N'Bangladesh', N'N/A', CAST(N'1999-01-01T00:00:00.0000000' AS DateTime2), N'768 generics, 1357 brand names', CAST(N'2025-06-15T00:26:06.7100000' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', N'.svg', N'InceptaLogo.svg', N'logos\InceptaLogo.svg')
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (3, N'Beximco Pharmaceuticals Ltd.', N'Bangladesh', N'N/A', CAST(N'1980-01-01T00:00:00.0000000' AS DateTime2), N'398 generics, 734 brand names', CAST(N'2025-06-15T00:26:06.7233333' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', N'.svg', N'BeximcoLogo.svg', N'logos\BeximcoLogo.svg')
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (4, N'Opsonin Pharma Limited', N'Bangladesh', N'N/A', CAST(N'1956-01-01T00:00:00.0000000' AS DateTime2), N'501 generics, 1006 brand names', CAST(N'2025-06-15T00:26:06.7233333' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (5, N'Renata Limited', N'Bangladesh', N'N/A', CAST(N'1993-01-01T00:00:00.0000000' AS DateTime2), N'314 generics, 597 brand names', CAST(N'2025-06-15T00:26:06.7266667' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (6, N'Eskayef Pharmaceuticals Limited', N'Bangladesh', N'N/A', CAST(N'1990-01-01T00:00:00.0000000' AS DateTime2), N'395 generics, 710 brand names', CAST(N'2025-06-15T00:26:06.7266667' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', N'.svg', N'SkfLogo.svg', N'logos\SkfLogo.svg')
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (7, N'ACI Pharmaceuticals', N'Bangladesh', N'N/A', CAST(N'1992-01-01T00:00:00.0000000' AS DateTime2), N'379 generics, 730 brand names', CAST(N'2025-06-15T00:26:06.7300000' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (8, N'ACME Laboratories Ltd.', N'Bangladesh', N'N/A', CAST(N'1954-01-01T00:00:00.0000000' AS DateTime2), N'432 generics, 735 brand names', CAST(N'2025-06-15T00:26:06.7300000' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (9, N'Aristopharma Ltd.', N'Bangladesh', N'N/A', CAST(N'1986-01-01T00:00:00.0000000' AS DateTime2), N'336 generics, 558 brand names', CAST(N'2025-06-15T00:26:06.7333333' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (10, N'Drug International Limited', N'Bangladesh', N'N/A', CAST(N'1974-01-01T00:00:00.0000000' AS DateTime2), N'460 generics, 751 brand names', CAST(N'2025-06-15T00:26:06.7333333' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (11, N'Healthcare Pharma', N'Bangladesh', N'N/A', CAST(N'1988-01-01T00:00:00.0000000' AS DateTime2), N'334 generics, 605 brand names', CAST(N'2025-06-15T00:26:06.7366667' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (12, N'Radiant Pharmaceuticals Ltd.', N'Bangladesh', N'N/A', CAST(N'2005-01-01T00:00:00.0000000' AS DateTime2), N'123 generics, 209 brand names', CAST(N'2025-06-15T00:26:06.7400000' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (13, N'Popular Pharmaceuticals Ltd.', N'Bangladesh', N'N/A', CAST(N'2002-01-01T00:00:00.0000000' AS DateTime2), N'311 generics, 501 brand names', CAST(N'2025-06-15T00:26:06.7400000' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (14, N'Beacon Pharmaceuticals PLC', N'Bangladesh', NULL, CAST(N'2002-01-01T00:00:00.0000000' AS DateTime2), N'311 generics, 501 brand names', CAST(N'2025-06-15T00:26:06.7400000' AS DateTime2), 2, NULL, NULL, N'https://www.google.com/', NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (15, N'National', N'Bangladsh', NULL, NULL, N'5000 generic', CAST(N'2025-11-09T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL, N'.svg', N'NationalIcon.svg', N'logos\NationalIcon.svg')
GO
INSERT [dbo].[Configuration_MedicineManufactureInfo] ([Id], [Name], [OriginRegion], [Importer], [EstablishedDate], [Products], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [CompanyUrl], [FileExtension], [FileName], [FilePath]) VALUES (16, N'Servier Bangladesh Operation', N'Bangladesh', N'', NULL, N'311 generics, 501 brand names', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'https://servier.com/en/servier/', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_MedicineManufactureInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_PoliceStation] ON 
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, N'0000000001', N'Adabor Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9133333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, N'0000000002', N'Badda Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9233333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, N'0000000003', N'Banani Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9266667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, N'0000000004', N'Bangshal Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9266667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, N'0000000005', N'Bimanbondor Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9300000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, N'0000000006', N'Cantonment Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9333333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (7, N'0000000007', N'Chalkbazar Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9366667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, N'0000000008', N'Dakshinkhan Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9400000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, N'0000000009', N'Darus-Salam Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9400000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, N'0000000010', N'Demra Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9433333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (11, N'0000000011', N'Dhanmondi Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9466667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (12, N'0000000012', N'Gandaria Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (13, N'0000000013', N'Gulshan Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (14, N'0000000014', N'Hazaribag Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9500000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (15, N'0000000015', N'Jatrabari Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9533333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (16, N'0000000016', N'Kafrul Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9533333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (17, N'0000000017', N'Kalabagan Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9566667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (18, N'0000000018', N'Kamrangirchar Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9566667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (19, N'0000000019', N'Khilgaon Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9566667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (20, N'0000000020', N'Khilkhet Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9600000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (21, N'0000000021', N'Kadamtoli Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9600000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (22, N'0000000022', N'Kotwali Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9633333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (23, N'0000000023', N'Lalbagh Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9633333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (24, N'0000000024', N'Mirpur Model Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9633333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (25, N'0000000025', N'Mohammadpur Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9666667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (26, N'0000000026', N'Motijheel Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9666667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (27, N'0000000027', N'Mugda Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9700000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_PoliceStation] ([Id], [Code], [Name], [CityId], [DistrictId], [CountryId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (28, N'0000000028', N'New Market Police Station', 1, 37, 2, CAST(N'2025-05-29T17:08:33.9700000' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_PoliceStation] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Reward] ON 
GO
INSERT [dbo].[Configuration_Reward] ([Id], [Heading], [Details], [IsNegativePointAllowed], [NonCashablePoints], [IsCashable], [CashablePoints], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive]) VALUES (3, N'Get point by uploading prescription', N'Upload a prescription and get reward point. You can use that point to get access to the system', 0, 300, 0, NULL, CAST(N'2025-10-13T05:48:58.2750432' AS DateTime2), 2, NULL, NULL, 1)
GO
INSERT [dbo].[Configuration_Reward] ([Id], [Heading], [Details], [IsNegativePointAllowed], [NonCashablePoints], [IsCashable], [CashablePoints], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive]) VALUES (4, N'Convert Prescription into SmartRx and Reedem 400 point', N'Upload a prescription and get reward point. You can use that point to get access to the system', 0, 400, 0, NULL, CAST(N'2025-10-13T05:49:53.3064203' AS DateTime2), 2, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Configuration_Reward] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_RewardBadge] ON 
GO
INSERT [dbo].[Configuration_RewardBadge] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Heirarchy]) VALUES (6, N'Medium Plus', N'Start your journey', CAST(N'2025-10-12T10:59:56.1010182' AS DateTime2), 2, NULL, NULL, 1, 2)
GO
INSERT [dbo].[Configuration_RewardBadge] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Heirarchy]) VALUES (7, N'Super Plus', N'Start your journey', CAST(N'2025-10-12T11:08:24.0225801' AS DateTime2), 2, NULL, NULL, 1, 3)
GO
INSERT [dbo].[Configuration_RewardBadge] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Heirarchy]) VALUES (8, N'Premium Plus', N'Your are at pick point of your journey. Enjoy the facility', CAST(N'2025-10-12T11:08:31.7891887' AS DateTime2), 2, CAST(N'2025-10-13T04:37:53.6910274' AS DateTime2), 2, 1, 4)
GO
INSERT [dbo].[Configuration_RewardBadge] ([Id], [Name], [Description], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsActive], [Heirarchy]) VALUES (9, N'Basic Plus', N'Start your journey', CAST(N'2025-10-13T05:55:16.9244465' AS DateTime2), 2, NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Configuration_RewardBadge] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_RewardBenefit] ON 
GO
INSERT [dbo].[Configuration_RewardBenefit] ([Id], [Title], [Description], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [RewardId]) VALUES (1, N'Get discount for multiple lab test in Lab Aid Hospital', N'Do multiple test and earn reward point', 1, CAST(N'2025-10-14T10:48:23.8112653' AS DateTime2), 8, CAST(N'2025-10-14T11:14:52.8222700' AS DateTime2), 8, 3)
GO
INSERT [dbo].[Configuration_RewardBenefit] ([Id], [Title], [Description], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [RewardId]) VALUES (2, N'Earn 200 points by uploading 5 prescriptions', N'Earn 200 points by uploading 5 prescriptions', 1, CAST(N'2025-10-14T10:54:09.7956561' AS DateTime2), 8, NULL, NULL, 3)
GO
SET IDENTITY_INSERT [dbo].[Configuration_RewardBenefit] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_SmartRxAcronym] ON 
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (1, N'', N'A1A', N'', NULL, NULL, NULL, NULL, N'Alpha-1 Antitrypsin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (2, N'', N'A1c', N'', NULL, NULL, NULL, NULL, N'Hemoglobin A1c')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (3, N'', N'AB', N'', NULL, NULL, NULL, NULL, N'Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (4, N'', N'ABG', N'', NULL, NULL, NULL, NULL, N'Arterial Blood Gas')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (5, N'', N'ABRH', N'', NULL, NULL, NULL, NULL, N'ABO Group and Rh Type')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (6, N'', N'ABT', N'', NULL, NULL, NULL, NULL, N'Antibody Titer')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (7, N'', N'ACA', N'', NULL, NULL, NULL, NULL, N'Anti-Cardiolipin Antibodies')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (8, N'', N'ACE', N'', NULL, NULL, NULL, NULL, N'Angiotensin Converting Enzyme')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (9, N'', N'ACID PHOS', N'', NULL, NULL, NULL, NULL, N'Acid Phosphatase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (10, N'', N'ACP', N'', NULL, NULL, NULL, NULL, N'Acid Phosphatase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (11, N'', N'ACT', N'', NULL, NULL, NULL, NULL, N'Activated Clotting Time')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (12, N'', N'ACTH', N'', NULL, NULL, NULL, NULL, N'Adrenocorticotropic Hormone')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (13, N'', N'ADA', N'', NULL, NULL, NULL, NULL, N'Adenosine Deaminase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (14, N'', N'AFB', N'', NULL, NULL, NULL, NULL, N'Acid-Fast Bacillus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (15, N'', N'AFLM', N'', NULL, NULL, NULL, NULL, N'Amniostat')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (16, N'', N'AFP', N'', NULL, NULL, NULL, NULL, N'Alpha Fetoprotein')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (17, N'', N'AG', N'', NULL, NULL, NULL, NULL, N'Antigen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (18, N'', N'ALA', N'', NULL, NULL, NULL, NULL, N'Aminolevulinic Acid')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (19, N'', N'Alb', N'', NULL, NULL, NULL, NULL, N'Albumin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (20, N'', N'Alk Phos', N'', NULL, NULL, NULL, NULL, N'Alkaline Phosphatase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (21, N'', N'ALP', N'', NULL, NULL, NULL, NULL, N'Alkaline Phosphatase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (22, N'', N'ANA', N'', NULL, NULL, NULL, NULL, N'Antinuclear Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (23, N'', N'Anti-HBc', N'', NULL, NULL, NULL, NULL, N'Hepatitis B Core Antibodies')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (24, N'', N'Anti-HBe', N'', NULL, NULL, NULL, NULL, N'Hepatitis Be Virus Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (25, N'', N'Anti-HBs', N'', NULL, NULL, NULL, NULL, N'Hepatitis B Surface Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (26, N'', N'Anti-HCV', N'', NULL, NULL, NULL, NULL, N'Hepatitis C Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (27, N'', N'APT', N'', NULL, NULL, NULL, NULL, N'APT – Stool for Fetal Hemoglobin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (28, N'', N'aPTT', N'', NULL, NULL, NULL, NULL, N'Activated Partial Thrombin Time')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (29, N'', N'ASN', N'', NULL, NULL, NULL, NULL, N'Antibody Screen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (30, N'', N'ASO', N'', NULL, NULL, NULL, NULL, N'Antistreptolysin-O')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (31, N'', N'AT III', N'', NULL, NULL, NULL, NULL, N'Antithrombin-III Activity')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (32, N'', N'B12', N'', NULL, NULL, NULL, NULL, N'Vitamin B12')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (33, N'', N'BMP', N'', NULL, NULL, NULL, NULL, N'Basic Metabolic Profile')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (34, N'', N'BNP', N'', NULL, NULL, NULL, NULL, N'Brain Natriuretic Peptide')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (35, NULL, N'BP', NULL, NULL, NULL, NULL, NULL, N'Blood Pressure')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (36, N'', N'BUN', N'', NULL, NULL, NULL, NULL, N'Blood Urea Nitrogen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (37, N'', N'C1', N'', NULL, NULL, NULL, NULL, N'Complement C1, Functional')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (38, N'', N'C1Q', N'', NULL, NULL, NULL, NULL, N'C1Q Binding Assay')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (39, N'', N'C2', N'', NULL, NULL, NULL, NULL, N'Complement C2')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (40, N'', N'C3', N'', NULL, NULL, NULL, NULL, N'Complement C3')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (41, N'', N'C4', N'', NULL, NULL, NULL, NULL, N'Complement C4')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (42, N'', N'Ca', N'', NULL, NULL, NULL, NULL, N'Calcium')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (43, N'', N'CBC', N'', NULL, NULL, NULL, NULL, N'Complete Blood Count')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (44, N'', N'CBCD', N'', NULL, NULL, NULL, NULL, N'Complete Blood Count with Automated Differential')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (45, N'', N'CEA', N'', NULL, NULL, NULL, NULL, N'Carcinoembryonic Antigen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (46, N'', N'CH50', N'', NULL, NULL, NULL, NULL, N'Complement Immunoassay, Total')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (47, N'', N'CK', N'', NULL, NULL, NULL, NULL, N'Creatine Kinase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (48, N'', N'Cl', N'', NULL, NULL, NULL, NULL, N'Chloride')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (49, N'', N'CMB', N'', NULL, NULL, NULL, NULL, N'CKMB Panel')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (50, N'', N'CMP', N'', NULL, NULL, NULL, NULL, N'Comprehensive Metabolic Panel')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (51, N'', N'CMV', N'', NULL, NULL, NULL, NULL, N'Cytomegalovirus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (52, N'', N'CMV Ag', N'', NULL, NULL, NULL, NULL, N'CMV Antigenemia')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (53, NULL, N'CO', NULL, NULL, NULL, NULL, NULL, N'Carbon Monoxide')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (54, N'', N'COHB', N'', NULL, NULL, NULL, NULL, N'Carboxyhemoglobin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (55, N'', N'CONABO', N'', NULL, NULL, NULL, NULL, N'Confirmatory Type')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (56, N'', N'CPK', N'', NULL, NULL, NULL, NULL, N'Creatine Phosphokinase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (57, N'', N'CRCL, CrCl', N'', NULL, NULL, NULL, NULL, N'Creatinine Clearance')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (58, N'', N'CRD', N'', NULL, NULL, NULL, NULL, N'Cord Type and DAT')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (59, N'', N'CREAT, Cr', N'Creatinine is a waste product from muscle and protein metabolism, released steadily by the body.', NULL, NULL, NULL, NULL, N'Creatinine')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (60, N'', N'CRP', N'', NULL, NULL, NULL, NULL, N'C-Reactive Protein')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (61, N'', N'Cu', N'', NULL, NULL, NULL, NULL, N'Copper')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (62, N'', N'D Bil', N'', NULL, NULL, NULL, NULL, N'Direct Bilirubin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (63, N'', N'DAT', N'', NULL, NULL, NULL, NULL, N'Direct Antiglobulin (Coombs) Test')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (64, N'', N'DCAS', N'', NULL, NULL, NULL, NULL, N'DAT and AB Screen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (65, N'', N'DHEA', N'', NULL, NULL, NULL, NULL, N'Dehydroepiandrosterone')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (66, N'', N'DHEAS', N'', NULL, NULL, NULL, NULL, N'Dehydroepiandrosterone-Sulfate')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (67, N'', N'DIFM', N'', NULL, NULL, NULL, NULL, N'Differential')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (68, N'', N'Dig', N'', NULL, NULL, NULL, NULL, N'Digoxin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (69, N'', N'EOS', N'', NULL, NULL, NULL, NULL, N'Eosinophils')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (70, N'', N'EPO', N'', NULL, NULL, NULL, NULL, N'Erythropoietin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (71, N'', N'ERA', N'', NULL, NULL, NULL, NULL, N'Estrogen Receptor Assay')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (72, N'', N'ESR', N'', NULL, NULL, NULL, NULL, N'Erythrocyte Sedimentation Rate')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (73, N'', N'ETOH', N'', NULL, NULL, NULL, NULL, N'Ethanol')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (74, N'', N'FBS', N'', NULL, NULL, NULL, NULL, N'Fasting Blood Sugar (Glucose)')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (75, N'', N'Fe', N'', NULL, NULL, NULL, NULL, N'Total Iron')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (76, N'', N'FEP', N'', NULL, NULL, NULL, NULL, N'Free Erythrocyte Protoporphyrin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (77, N'', N'FFN', N'', NULL, NULL, NULL, NULL, N'Fetal Fibronectin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (78, N'', N'Fol', N'', NULL, NULL, NULL, NULL, N'Folate')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (79, N'', N'FSH/LH', N'', NULL, NULL, NULL, NULL, N'FSH/LH Evaluation')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (80, N'', N'FT3', N'', NULL, NULL, NULL, NULL, N'Free T3')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (81, N'', N'FT4', N'', NULL, NULL, NULL, NULL, N'Free Thyroxine')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (82, N'', N'G2PP', N'', NULL, NULL, NULL, NULL, N'2 Hour Postprandial Glucose')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (83, N'', N'G-6-PD', N'', NULL, NULL, NULL, NULL, N'Glucose-6-Phosphate Dehydrogenase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (84, N'', N'Gamma GT', N'', NULL, NULL, NULL, NULL, N'Gamma Glutamyl Transferase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (85, N'', N'GCT', N'', NULL, NULL, NULL, NULL, N'Glucose Challenge Test')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (86, N'', N'GDS', N'', NULL, NULL, NULL, NULL, N'Gestational Diabetes Screen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (87, N'', N'GGT', N'', NULL, NULL, NULL, NULL, N'Gamma Glutamyl Transferase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (88, N'', N'GH', N'', NULL, NULL, NULL, NULL, N'Growth Hormone')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (89, N'', N'Glu', N'', NULL, NULL, NULL, NULL, N'Glucose')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (90, N'', N'H&H (or H/H)', N'', NULL, NULL, NULL, NULL, N'Hemoglobin and Hematocrit')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (91, N'', N'Hapto', N'', NULL, NULL, NULL, NULL, N'Haptoglobin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (92, N'', N'HbA1c', N'', NULL, NULL, NULL, NULL, N'Hemoglobin A1c')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (93, N'', N'HBeAb', N'', NULL, NULL, NULL, NULL, N'Hepatitis Be Virus Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (94, N'', N'HBeAg', N'', NULL, NULL, NULL, NULL, N'Hepatitis Be Virus Antigen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (95, N'', N'HBsAb', N'', NULL, NULL, NULL, NULL, N'Hepatitis B Surface Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (96, N'', N'HBsAg', N'', NULL, NULL, NULL, NULL, N'Hepatitis B Surface Antigen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (97, N'', N'HBV titers', N'', NULL, NULL, NULL, NULL, N'Hepatitis B Surface Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (98, N'', N'hCG', N'', NULL, NULL, NULL, NULL, N'Human Chorionic Gonadotropin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (99, N'', N'hCG (urine)', N'', NULL, NULL, NULL, NULL, N'Urine Pregnancy')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (100, N'', N'HCT', N'', NULL, NULL, NULL, NULL, N'Hematocrit')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (101, N'', N'HDL', N'', NULL, NULL, NULL, NULL, N'High Density Lipoprotein')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (102, N'', N'HFP', N'', NULL, NULL, NULL, NULL, N'Hepatic Function Panel')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (103, N'', N'HGB', N'', NULL, NULL, NULL, NULL, N'Hemoglobin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (104, N'', N'HgbA1c', N'', NULL, NULL, NULL, NULL, N'Hemoglobin A1c')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (105, N'', N'HGH', N'', NULL, NULL, NULL, NULL, N'Human Growth Hormone')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (106, N'', N'HIAA', N'', NULL, NULL, NULL, NULL, N'5-Hydroxyindoleacetic Acid')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (107, N'', N'HIV', N'', NULL, NULL, NULL, NULL, N'Human Immunodeficiency Virus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (108, N'', N'HPV', N'', NULL, NULL, NULL, NULL, N'Human Papilloma Virus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (109, N'', N'HSV', N'', NULL, NULL, NULL, NULL, N'Herpes Simplex Virus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (110, N'', N'iCa', N'', NULL, NULL, NULL, NULL, N'Ionized Calcium')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (111, N'', N'IEP', N'', NULL, NULL, NULL, NULL, N'Immunoelectrophoresis')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (112, N'', N'IFE', N'', NULL, NULL, NULL, NULL, N'Immunofixation Electrophoresis')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (113, N'', N'IgA', N'', NULL, NULL, NULL, NULL, N'Immunoglobulin A')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (114, N'', N'IgE', N'', NULL, NULL, NULL, NULL, N'Immunoglobulin E')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (115, N'', N'IGF', N'', NULL, NULL, NULL, NULL, N'Insulin-Like Growth Factor-I')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (116, N'', N'IgG', N'', NULL, NULL, NULL, NULL, N'Immunoglobulin G')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (117, N'', N'IgM', N'', NULL, NULL, NULL, NULL, N'Immunoglobulin M')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (118, N'', N'INR', N'', NULL, NULL, NULL, NULL, N'Prothrombin Time')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (119, N'', N'Jo-1', N'', NULL, NULL, NULL, NULL, N'Jo-1 Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (120, N'', N'KB', N'', NULL, NULL, NULL, NULL, N'Kleihauer-Betke')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (121, N'', N'K', N'', NULL, NULL, NULL, NULL, N'Potassium')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (122, NULL, N'Pb', NULL, NULL, NULL, NULL, NULL, N'Lead')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (123, N'', N'L/S', N'', NULL, NULL, NULL, NULL, N'Lecithin/Sphingomyelin Ratio')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (124, N'', N'LD', N'', NULL, NULL, NULL, NULL, N'Lactate Dehydrogenase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (125, N'', N'LDH', N'', NULL, NULL, NULL, NULL, N'Lactate Dehydrogenase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (126, N'', N'LFT', N'', NULL, NULL, NULL, NULL, N'Liver Function Tests')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (127, N'', N'LH', N'', NULL, NULL, NULL, NULL, N'Luteinizing Hormone')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (128, N'', N'Li+, Li', N'', NULL, NULL, NULL, NULL, N'Lithium')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (129, N'', N'MetHb/MetHgb', N'', NULL, NULL, NULL, NULL, N'Methemoglobin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (130, N'', N'Mg, Mag', N'', NULL, NULL, NULL, NULL, N'Magnesium')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (131, N'', N'MIC', N'', NULL, NULL, NULL, NULL, N'Minimum Inhibitory Concentration')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (132, N'', N'MMA', N'', NULL, NULL, NULL, NULL, N'Methylmalonic Acid')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (133, N'', N'Mn', N'', NULL, NULL, NULL, NULL, N'Manganese')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (134, N'', N'Mono', N'', NULL, NULL, NULL, NULL, N'Mononucleosis')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (135, N'', N'NA', N'', NULL, NULL, NULL, NULL, N'Sodium')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (136, N'', N'NEOTY', N'', NULL, NULL, NULL, NULL, N'Neonate Type and DAT')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (137, N'', N'NEOXM', N'', NULL, NULL, NULL, NULL, N'Neonate Type and XM')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (138, NULL, N'NH3', NULL, NULL, NULL, NULL, NULL, N'Ammonia')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (139, N'NTR', N'NTR', N'', NULL, NULL, NULL, NULL, N'Newborn Type and Rh')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (140, N'', N'PAP', N'', NULL, NULL, NULL, NULL, N'Pap Smear/Pap Smear & HPV DNA Test/Prostatic Acid Phosphatase')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (141, N'', N'PBG', N'', NULL, NULL, NULL, NULL, N'Porphobilinogen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (142, N'', N'PCP', N'', NULL, NULL, NULL, NULL, N'Phencyclidine')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (143, N'', N'PEP', N'', NULL, NULL, NULL, NULL, N'Protein Electrophoresis')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (144, N'', N'PG', N'', NULL, NULL, NULL, NULL, N'Phosphatidyl glycerol')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (145, N'', N'PHOS', N'', NULL, NULL, NULL, NULL, N'Phosphorus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (146, N'', N'PKU', N'', NULL, NULL, NULL, NULL, N'Phenylketonuria')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (147, N'', N'PLT, PLT Ct', N'', NULL, NULL, NULL, NULL, N'Platelet Count')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (148, N'', N'PO4', N'', NULL, NULL, NULL, NULL, N'Phosphorus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (149, N'', N'PRL', N'', NULL, NULL, NULL, NULL, N'Prolactin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (150, N'', N'PSA', N'', NULL, NULL, NULL, NULL, N'Prostate Specific Antigen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (151, N'', N'PT', N'', NULL, NULL, NULL, NULL, N'Prothrombin Time')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (152, N'', N'PTH', N'', NULL, NULL, NULL, NULL, N'Parathyroid Hormone')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (153, N'', N'PTT', N'', NULL, NULL, NULL, NULL, N'Partial Thromboplastin Time')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (154, N'', N'QIG', N'', NULL, NULL, NULL, NULL, N'Quantitative Immunoglobulins')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (155, N'', N'RBC', N'', NULL, NULL, NULL, NULL, N'Red Blood Cell')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (156, N'', N'RF', N'', NULL, NULL, NULL, NULL, N'Rheumatoid Factor')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (157, N'', N'RFP', N'', NULL, NULL, NULL, NULL, N'Renal Function Panel')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (158, N'', N'RhIG (Eval)', N'', NULL, NULL, NULL, NULL, N'RhIG Evaluation')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (159, N'', N'RPR', N'', NULL, NULL, NULL, NULL, N'Rapid Plasma Reagin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (160, N'', N'RSV', N'', NULL, NULL, NULL, NULL, N'Respiratory Syncytial Virus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (161, N'', N'Scl-70', N'', NULL, NULL, NULL, NULL, N'Scleroderma Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (162, N'', N'SHBG', N'', NULL, NULL, NULL, NULL, N'Sex Hormone-Binding Globulin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (163, N'', N'SIFE', N'', NULL, NULL, NULL, NULL, N'Serum Immunofixation')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (164, N'', N'Electrophoresis', N'', NULL, NULL, NULL, NULL, N'Electrophoresis')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (165, N'', N'Siro', N'', NULL, NULL, NULL, NULL, N'Sirolimus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (166, N'', N'SPEP', N'', NULL, NULL, NULL, NULL, N'Serum Protein Electrophoresis')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (167, N'', N'SSA', N'', NULL, NULL, NULL, NULL, N'Sjögren’s Syndrome A Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (168, N'', N'SSB', N'', NULL, NULL, NULL, NULL, N'Sjögren’s Syndrome B Antibody')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (169, N'', N'SSDNA', N'', NULL, NULL, NULL, NULL, N'Single Stranded DNA')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (170, N'', N'T Bil', N'', NULL, NULL, NULL, NULL, N'Total Bilirubin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (171, N'', N'T3', N'', NULL, NULL, NULL, NULL, N'Triiodothyronine')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (172, N'', N'T4', N'', NULL, NULL, NULL, NULL, N'Thyroxine')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (173, N'', N'Tacro', N'', NULL, NULL, NULL, NULL, N'Tacrolimus')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (174, N'', N'TBG', N'', NULL, NULL, NULL, NULL, N'Thyroxine Binding Globulin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (175, N'', N'TGL', N'', NULL, NULL, NULL, NULL, N'Triglycerides')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (176, N'', N'Theo', N'', NULL, NULL, NULL, NULL, N'Theophylline')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (177, N'', N'TIBC', N'', NULL, NULL, NULL, NULL, N'Total Iron Binding Capacity')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (178, N'', N'TP', N'', NULL, NULL, NULL, NULL, N'Total Protein')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (179, N'', N'TREP', N'', NULL, NULL, NULL, NULL, N'Treponemal Antibodies')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (180, N'', N'Trep Ab', N'', NULL, NULL, NULL, NULL, N'Treponemal Antibodies')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (181, N'', N'TRH', N'', NULL, NULL, NULL, NULL, N'Thyrotropin Releasing Hormone')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (182, N'', N'Trig', N'', NULL, NULL, NULL, NULL, N'Triglycerides')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (183, N'', N'TRXN', N'', NULL, NULL, NULL, NULL, N'Transfusion Reaction Evaluation')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (184, N'', N'TSH', N'', NULL, NULL, NULL, NULL, N'Thyroid Stimulating Hormone')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (185, N'', N'TSI', N'', NULL, NULL, NULL, NULL, N'Thyroid Stimulating Immunoglobulin')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (186, N'', N'TT', N'', NULL, NULL, NULL, NULL, N'Thrombin Time')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (187, N'', N'TYSC', N'', NULL, NULL, NULL, NULL, N'Type and Screen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (188, N'', N'UIFE', N'', NULL, NULL, NULL, NULL, N'Urine Immunofixation')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (189, NULL, N'UPE, UPEP, Ur Prot Elect', NULL, NULL, NULL, NULL, NULL, N'Electrophoresis')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (190, N'', N'VCA', N'', NULL, NULL, NULL, NULL, N'Viral Capsid Antigen')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (191, N'', N'VDRL', N'', NULL, NULL, NULL, NULL, N'Venereal Disease Reference Lab (Syphilis Test)')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (192, N'', N'Vit A', N'', NULL, NULL, NULL, NULL, N'Vitamin A (Retinol)')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (193, N'', N'Vit B1', N'', NULL, NULL, NULL, NULL, N'Vitamin B1 (Thiamine)')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (194, N'', N'Vit B12', N'', NULL, NULL, NULL, NULL, N'Vitamin B12')
GO
INSERT [dbo].[Configuration_SmartRxAcronym] ([Id], [Acronym], [Abbreviation], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Elaboration]) VALUES (195, N'', N'Vit B2', N'', NULL, NULL, NULL, NULL, N'Vitamin B2 (Riboflavin)')
GO
SET IDENTITY_INSERT [dbo].[Configuration_SmartRxAcronym] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Tags] ON 
GO
INSERT [dbo].[Configuration_Tags] ([Id], [TagShortName], [TagDescription], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [TagPrescriptionSection]) VALUES (1, N'WARMWATER', N'About drinking warm water, doctor advised to rinse with warm water', CAST(N'2025-06-30T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Tags] ([Id], [TagShortName], [TagDescription], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [TagPrescriptionSection]) VALUES (2, N'COLDWATER', N'Do not use cold water', CAST(N'2025-06-03T12:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Unit] ON 
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, N'0001', N'Blood Pressure', N'mmHg', N'millimeters of mercury', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8666667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, N'0002', N'Body Temperature', N'°C', N'Celsius', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8766667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, N'0003', N'Body Temperature', N'°F', N'Fahrenheit', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8800000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, N'0004', N'Pulse Rate (Heart Rate)', N'bpm', N'beats per minute', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8800000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, N'0005', N'Respiration Rate', N'breaths/min', N'breaths per minute', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8833333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, N'0006', N'Blood Oxygen (SpO2)', N'%', N'percentage saturation', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8833333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (7, N'0007', N'Weight', N'kg', N'kilograms', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8866667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, N'0008', N'Weight', N'lb', N'pounds', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8866667' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, N'0009', N'Blood Glucose Level', N'mg/dL', N'US', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8900000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, N'0010', N'Blood Glucose Level', N'mmol/L', N'International', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8900000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (11, N'0011', N'Body Mass Index (BMI)', N'kg/m²', N'kilograms per square meter', N'Test', N'Vital', CAST(N'2025-06-02T11:30:01.8933333' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (17, N'0012', N'Taka', N'৳', N'Taka', N'''''', N'Money', CAST(N'2025-06-15T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (18, N'0013', N'Dollar', N'$', N'Dollar', NULL, N'Money', CAST(N'2025-06-15T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (19, N'0014', N'Miligram', N'mg', N'Miligram', NULL, N'Strength/Weight', CAST(N'2025-06-15T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (20, N'0015', N'Mililitre', N'ml', N'Mililitre', NULL, N'Strength/Weight', CAST(N'2025-06-15T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (21, N'0016', N'Height', N'ftin', N'Feet', NULL, N'Vital', CAST(N'2025-07-26T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Configuration_Unit] ([Id], [Code], [Name], [MeasurementUnit], [Details], [Description], [Type], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (22, N'0017', N'Height', N'cm', N'Centimeter', NULL, N'Vital', CAST(N'2025-07-19T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_Vital] ON 
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (64, N'01', N'Blood Pressure', N'', N'Diastolic', 1, CAST(80.00 AS Decimal(5, 2)), N'Low', CAST(80.00 AS Decimal(5, 2)), N'Normal', CAST(90.00 AS Decimal(5, 2)), N'Normal', CAST(90.00 AS Decimal(5, 2)), N'High', CAST(90.00 AS Decimal(5, 2)), N'Stage 2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (65, N'02', N'Blood Pressure', N'', N'Systolic', 1, CAST(120.00 AS Decimal(5, 2)), N'Low', CAST(120.00 AS Decimal(5, 2)), N'Normal', CAST(130.00 AS Decimal(5, 2)), N'Normal', CAST(130.00 AS Decimal(5, 2)), N'High', CAST(140.00 AS Decimal(5, 2)), N'Stage 2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (66, N'03', N'Body Temperature', N'', N'Farenheit', 3, CAST(98.60 AS Decimal(5, 2)), N'Low', CAST(98.60 AS Decimal(5, 2)), N'Normal', CAST(100.40 AS Decimal(5, 2)), N'Normal', CAST(100.40 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (67, N'04', N'Body Temperature', N'', N'Degree', 2, CAST(36.50 AS Decimal(5, 2)), N'Low', CAST(37.00 AS Decimal(5, 2)), N'Normal', CAST(37.50 AS Decimal(5, 2)), N'Normal', CAST(37.50 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (68, N'05', N'Pulse Rate', N'Heart Rate', N'BPM', 4, CAST(40.00 AS Decimal(5, 2)), N'Low', CAST(60.00 AS Decimal(5, 2)), N'Normal', CAST(60.00 AS Decimal(5, 2)), N'Normal', CAST(100.00 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (69, N'06', N'Respiratory Rate', N'', N'Adults', 5, CAST(12.00 AS Decimal(5, 2)), N'Low', CAST(16.00 AS Decimal(5, 2)), N'Normal', CAST(16.00 AS Decimal(5, 2)), N'Normal', CAST(16.00 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (70, N'07', N'Respiratory Rate', N'', N'Infants', 5, CAST(30.00 AS Decimal(5, 2)), N'Low', CAST(60.00 AS Decimal(5, 2)), N'Normal', CAST(60.00 AS Decimal(5, 2)), N'Normal', CAST(60.00 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (71, N'08', N'Respiratory Rate', N'', N'Kids', 5, CAST(18.00 AS Decimal(5, 2)), N'Low', CAST(30.00 AS Decimal(5, 2)), N'Normal', CAST(30.00 AS Decimal(5, 2)), N'Normal', CAST(30.00 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (72, N'09', N'Blood Oxygen', N'', N'Oxygen Saturation (SpO2)', 6, CAST(95.00 AS Decimal(5, 2)), N'Low', CAST(100.00 AS Decimal(5, 2)), N'Normal', CAST(100.00 AS Decimal(5, 2)), N'Normal', CAST(100.00 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (73, N'10', N'Blood Glucose', N'', N'Children (under 6 yrs)', 9, CAST(100.00 AS Decimal(5, 2)), N'Low', CAST(180.00 AS Decimal(5, 2)), N'Normal', CAST(180.00 AS Decimal(5, 2)), N'Normal', NULL, N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (74, N'37', N'BMI', N'Body Mass Index', N'Weight Status', 11, CAST(18.50 AS Decimal(5, 2)), N'Low', CAST(24.90 AS Decimal(5, 2)), N'Normal', CAST(30.00 AS Decimal(5, 2)), N'Overweight', CAST(30.00 AS Decimal(5, 2)), N'High', CAST(30.00 AS Decimal(5, 2)), N'', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (75, N'38', N'Weight', N'', N'Male', 7, CAST(70.00 AS Decimal(5, 2)), N'Low', CAST(90.00 AS Decimal(5, 2)), N'Normal', CAST(90.00 AS Decimal(5, 2)), N'Normal', CAST(90.00 AS Decimal(5, 2)), N'High', NULL, N'', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (76, N'39', N'Weight', N'', N'Female', 7, CAST(50.00 AS Decimal(5, 2)), N'Low', CAST(70.00 AS Decimal(5, 2)), N'Normal', CAST(70.00 AS Decimal(5, 2)), N'Normal', CAST(70.00 AS Decimal(5, 2)), N'High', NULL, N'', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (77, N'11', N'Blood Glucose', N'Diabetes', N'Fasting', 9, CAST(70.00 AS Decimal(5, 2)), N'Low', CAST(99.00 AS Decimal(5, 2)), N'Normal', CAST(99.00 AS Decimal(5, 2)), N'Normal', CAST(99.00 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (78, N'12', N'Blood Glucose', N'Diabetes', N'2 Hour after meal', 9, CAST(120.00 AS Decimal(5, 2)), N'Low', CAST(140.00 AS Decimal(5, 2)), N'Normal', CAST(140.00 AS Decimal(5, 2)), N'Normal', CAST(140.00 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (79, N'13', N'Blood Glucose', N'Diabetes', N'Before meal', 9, CAST(100.00 AS Decimal(5, 2)), N'Low', CAST(125.00 AS Decimal(5, 2)), N'Normal', CAST(125.00 AS Decimal(5, 2)), N'Normal', CAST(125.00 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (85, N'40', N'Height', N'Height', N'Female', 21, CAST(4.10 AS Decimal(5, 2)), N'Low', CAST(5.20 AS Decimal(5, 2)), N'Normal', CAST(5.20 AS Decimal(5, 2)), N'Normal', CAST(5.50 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Configuration_Vital] ([Id], [Code], [Name], [Description], [ApplicableEntity], [UnitId], [LowRange], [LowStatus], [MidRange], [MidStatus], [MidNextRange], [MidNextStatus], [HighRange], [HighStatus], [ExtremeRange], [ExtremeStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (86, N'41', N'Height', N'Height', N'Male', 21, CAST(5.30 AS Decimal(5, 2)), N'Low', CAST(5.50 AS Decimal(5, 2)), N'Normal', CAST(5.50 AS Decimal(5, 2)), N'Normal', CAST(5.90 AS Decimal(5, 2)), N'High', NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Configuration_Vital] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuration_VitalFAQ] ON 
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (1, N'রক্তের গ্লুকোজের মাত্রা কি?', N'ব্লাড গ্লুকোজ, যা ব্লাড সুগার নামেও পরিচিত, একটি গুরুত্বপূর্ণ অত্যাবশ্যক লক্ষণ এবং সামগ্রিক স্বাস্থ্যের একটি মূল সূচক। এটি যে কোনো নির্দিষ্ট সময়ে রক্তপ্রবাহে চিনির পরিমাণ এবং এটি আপনাকে আপনার বিপাকীয় অবস্থা এবং সম্ভাব্য স্বাস্থ্য ঝুঁকির কথা বলে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:07.8933333' AS DateTime2), 2, NULL, NULL, 77)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (2, N'রক্তে গ্লুকোজের মাত্রা কখন পরিমাপ করবেন?', N'যাদের ডায়াবেটিস ধরা পড়েছে তাদের জন্য, খাবারের আগে এবং শোবার সময় প্রতিদিন চার থেকে ছয়টি রিডিং নেওয়ার পরামর্শ দেওয়া হয়। আপনার ডাক্তার আপনার রক্তের গ্লুকোজের মাত্রা পরীক্ষা করার জন্য কোন সময়গুলি সেরা তা নির্ধারণ করতে আপনাকে সাহায্য করতে পারে। খাওয়ার পরে আপনার স্তরগুলি পরীক্ষা করাও গুরুত্বপূর্ণ এবং যে কোনও সময় আপনি মাথা ঘোরা, বিভ্রান্তি বা ক্লান্তির মতো উপসর্গগুলি অনুভব করেন - এগুলি সবই আপনার চিনির মাত্রায় ভারসাম্যহীনতা নির্দেশ করতে পারে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:07.9000000' AS DateTime2), 2, NULL, NULL, 77)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (3, N'স্বাভাবিক রক্তে শর্করার মাত্রা কত?', N'একটি সাধারণ মান ব্যক্তি থেকে ব্যক্তিতে সামান্য পরিবর্তিত হতে পারে, তবে একজন সুস্থ প্রাপ্তবয়স্ক নন-ডায়াবেটিক ব্যক্তির গড় পরিসীমা সাধারণত নিম্নলিখিত সীমার মধ্যে পড়ে: 70 থেকে 99 mg/dL (মিলিগ্রাম প্রতি ডেসিলিটার), যখন উপবাস থাকে, 140 mg/dL এর কম খাওয়ার দুই ঘন্টা পরে এবং খাবারের আগে 100 থেকে 125 mg/dL।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:07.9066667' AS DateTime2), 2, NULL, NULL, 77)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (4, N'রক্তে গ্লুকোজের মাত্রা কীভাবে পরিমাপ করবেন?', N'বাড়িতে আপনার নিজের রক্তে গ্লুকোজের মাত্রা পরিমাপ করা ডায়াবেটিস ব্যবস্থাপনার একটি গুরুত্বপূর্ণ অংশ। আপনার রক্তে শর্করার পরিমাপ করতে আপনার একটি গ্লুকোমিটার এবং পরীক্ষার স্ট্রিপ প্রয়োজন। ফলাফলের নির্ভুলতা নিশ্চিত করতে পরীক্ষার আগে হাত ধুয়ে শুকিয়ে নিন। তারপর বিশ্লেষণের জন্য গ্লুকোমিটার মেশিনে পরীক্ষার স্ট্রিপে রাখার আগে আঙুলের ডগা থেকে কৈশিক রক্তের একটি ছোট ফোঁটা আঁকতে গ্লুকোমিটারের সাথে দেওয়া ফিঙ্গার প্রিকার ব্যবহার করুন।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:07.9133333' AS DateTime2), 2, NULL, NULL, 77)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (5, N'উচ্চ গ্লুকোজ মাত্রা কি নির্দেশ করে?', N'উচ্চ গ্লুকোজ মাত্রা, যা হাইপারগ্লাইসেমিয়া নামেও পরিচিত, এমন একটি অবস্থা হিসাবে সংজ্ঞায়িত করা হয় যেখানে শরীরের রক্তে গ্লুকোজ বা চিনির মাত্রা বেড়ে যায়। এটি ডায়েট, ব্যায়ামের অভাব, নির্দিষ্ট ওষুধ বা পূর্ব-বিদ্যমান চিকিৎসা অবস্থা সহ বিভিন্ন কারণের কারণে হতে পারে। কিছু ক্ষেত্রে, উচ্চ গ্লুকোজ মাত্রা ডায়াবেটিস নির্দেশ করতে পারে এবং হালকাভাবে নেওয়া উচিত নয়।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:07.9200000' AS DateTime2), 2, NULL, NULL, 77)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (6, N'কম গ্লুকোজ মাত্রা কি নির্দেশ করে?', N'নিম্ন গ্লুকোজ মাত্রা, যা হাইপোগ্লাইসেমিয়া নামেও পরিচিত, এর বিভিন্ন কারণ থাকতে পারে এবং এটি একটি অন্তর্নিহিত চিকিৎসা অবস্থার উপস্থিতি নির্দেশ করতে পারে। এটি ঘটে যখন একটি অপর্যাপ্ত সরবরাহ থাকে, বা শরীর দক্ষতার সাথে সঞ্চালিত শর্করা নিয়ন্ত্রণ করতে পারে না। এটি ডায়াবেটিস, হরমোনের ভারসাম্যহীনতা বা এমনকি কিছু ওষুধের কারণে হতে পারে যা রক্তে শর্করার ঘনত্বকে পরিবর্তন করে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:07.9233333' AS DateTime2), 2, NULL, NULL, 77)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (7, N'রক্তের গ্লুকোজের মাত্রা কি?', N'ব্লাড গ্লুকোজ, যা ব্লাড সুগার নামেও পরিচিত, একটি গুরুত্বপূর্ণ অত্যাবশ্যক লক্ষণ এবং সামগ্রিক স্বাস্থ্যের একটি মূল সূচক। এটি যে কোনো নির্দিষ্ট সময়ে রক্তপ্রবাহে চিনির পরিমাণ এবং এটি আপনাকে আপনার বিপাকীয় অবস্থা এবং সম্ভাব্য স্বাস্থ্য ঝুঁকির কথা বলে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:32.7633333' AS DateTime2), 2, NULL, NULL, 78)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (8, N'রক্তে গ্লুকোজের মাত্রা কখন পরিমাপ করবেন?', N'যাদের ডায়াবেটিস ধরা পড়েছে তাদের জন্য, খাবারের আগে এবং শোবার সময় প্রতিদিন চার থেকে ছয়টি রিডিং নেওয়ার পরামর্শ দেওয়া হয়। আপনার ডাক্তার আপনার রক্তের গ্লুকোজের মাত্রা পরীক্ষা করার জন্য কোন সময়গুলি সেরা তা নির্ধারণ করতে আপনাকে সাহায্য করতে পারে। খাওয়ার পরে আপনার স্তরগুলি পরীক্ষা করাও গুরুত্বপূর্ণ এবং যে কোনও সময় আপনি মাথা ঘোরা, বিভ্রান্তি বা ক্লান্তির মতো উপসর্গগুলি অনুভব করেন - এগুলি সবই আপনার চিনির মাত্রায় ভারসাম্যহীনতা নির্দেশ করতে পারে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:32.7866667' AS DateTime2), 2, NULL, NULL, 78)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (9, N'স্বাভাবিক রক্তে শর্করার মাত্রা কত?', N'একটি সাধারণ মান ব্যক্তি থেকে ব্যক্তিতে সামান্য পরিবর্তিত হতে পারে, তবে একজন সুস্থ প্রাপ্তবয়স্ক নন-ডায়াবেটিক ব্যক্তির গড় পরিসীমা সাধারণত নিম্নলিখিত সীমার মধ্যে পড়ে: 70 থেকে 99 mg/dL (মিলিগ্রাম প্রতি ডেসিলিটার), যখন উপবাস থাকে, 140 mg/dL এর কম খাওয়ার দুই ঘন্টা পরে এবং খাবারের আগে 100 থেকে 125 mg/dL।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:32.7900000' AS DateTime2), 2, NULL, NULL, 78)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (10, N'রক্তে গ্লুকোজের মাত্রা কীভাবে পরিমাপ করবেন?', N'বাড়িতে আপনার নিজের রক্তে গ্লুকোজের মাত্রা পরিমাপ করা ডায়াবেটিস ব্যবস্থাপনার একটি গুরুত্বপূর্ণ অংশ। আপনার রক্তে শর্করার পরিমাপ করতে আপনার একটি গ্লুকোমিটার এবং পরীক্ষার স্ট্রিপ প্রয়োজন। ফলাফলের নির্ভুলতা নিশ্চিত করতে পরীক্ষার আগে হাত ধুয়ে শুকিয়ে নিন। তারপর বিশ্লেষণের জন্য গ্লুকোমিটার মেশিনে পরীক্ষার স্ট্রিপে রাখার আগে আঙুলের ডগা থেকে কৈশিক রক্তের একটি ছোট ফোঁটা আঁকতে গ্লুকোমিটারের সাথে দেওয়া ফিঙ্গার প্রিকার ব্যবহার করুন।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:32.8000000' AS DateTime2), 2, NULL, NULL, 78)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (11, N'উচ্চ গ্লুকোজ মাত্রা কি নির্দেশ করে?', N'উচ্চ গ্লুকোজ মাত্রা, যা হাইপারগ্লাইসেমিয়া নামেও পরিচিত, এমন একটি অবস্থা হিসাবে সংজ্ঞায়িত করা হয় যেখানে শরীরের রক্তে গ্লুকোজ বা চিনির মাত্রা বেড়ে যায়। এটি ডায়েট, ব্যায়ামের অভাব, নির্দিষ্ট ওষুধ বা পূর্ব-বিদ্যমান চিকিৎসা অবস্থা সহ বিভিন্ন কারণের কারণে হতে পারে। কিছু ক্ষেত্রে, উচ্চ গ্লুকোজ মাত্রা ডায়াবেটিস নির্দেশ করতে পারে এবং হালকাভাবে নেওয়া উচিত নয়।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:32.8033333' AS DateTime2), 2, NULL, NULL, 78)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (12, N'কম গ্লুকোজ মাত্রা কি নির্দেশ করে?', N'নিম্ন গ্লুকোজ মাত্রা, যা হাইপোগ্লাইসেমিয়া নামেও পরিচিত, এর বিভিন্ন কারণ থাকতে পারে এবং এটি একটি অন্তর্নিহিত চিকিৎসা অবস্থার উপস্থিতি নির্দেশ করতে পারে। এটি ঘটে যখন একটি অপর্যাপ্ত সরবরাহ থাকে, বা শরীর দক্ষতার সাথে সঞ্চালিত শর্করা নিয়ন্ত্রণ করতে পারে না। এটি ডায়াবেটিস, হরমোনের ভারসাম্যহীনতা বা এমনকি কিছু ওষুধের কারণে হতে পারে যা রক্তে শর্করার ঘনত্বকে পরিবর্তন করে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:32.8100000' AS DateTime2), 2, NULL, NULL, 78)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (13, N'রক্তের গ্লুকোজের মাত্রা কি?', N'ব্লাড গ্লুকোজ, যা ব্লাড সুগার নামেও পরিচিত, একটি গুরুত্বপূর্ণ অত্যাবশ্যক লক্ষণ এবং সামগ্রিক স্বাস্থ্যের একটি মূল সূচক। এটি যে কোনো নির্দিষ্ট সময়ে রক্তপ্রবাহে চিনির পরিমাণ এবং এটি আপনাকে আপনার বিপাকীয় অবস্থা এবং সম্ভাব্য স্বাস্থ্য ঝুঁকির কথা বলে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:52.2333333' AS DateTime2), 2, NULL, NULL, 79)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (14, N'রক্তে গ্লুকোজের মাত্রা কখন পরিমাপ করবেন?', N'যাদের ডায়াবেটিস ধরা পড়েছে তাদের জন্য, খাবারের আগে এবং শোবার সময় প্রতিদিন চার থেকে ছয়টি রিডিং নেওয়ার পরামর্শ দেওয়া হয়। আপনার ডাক্তার আপনার রক্তের গ্লুকোজের মাত্রা পরীক্ষা করার জন্য কোন সময়গুলি সেরা তা নির্ধারণ করতে আপনাকে সাহায্য করতে পারে। খাওয়ার পরে আপনার স্তরগুলি পরীক্ষা করাও গুরুত্বপূর্ণ এবং যে কোনও সময় আপনি মাথা ঘোরা, বিভ্রান্তি বা ক্লান্তির মতো উপসর্গগুলি অনুভব করেন - এগুলি সবই আপনার চিনির মাত্রায় ভারসাম্যহীনতা নির্দেশ করতে পারে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:52.2466667' AS DateTime2), 2, NULL, NULL, 79)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (15, N'স্বাভাবিক রক্তে শর্করার মাত্রা কত?', N'একটি সাধারণ মান ব্যক্তি থেকে ব্যক্তিতে সামান্য পরিবর্তিত হতে পারে, তবে একজন সুস্থ প্রাপ্তবয়স্ক নন-ডায়াবেটিক ব্যক্তির গড় পরিসীমা সাধারণত নিম্নলিখিত সীমার মধ্যে পড়ে: 70 থেকে 99 mg/dL (মিলিগ্রাম প্রতি ডেসিলিটার), যখন উপবাস থাকে, 140 mg/dL এর কম খাওয়ার দুই ঘন্টা পরে এবং খাবারের আগে 100 থেকে 125 mg/dL।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:52.2533333' AS DateTime2), 2, NULL, NULL, 79)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (16, N'রক্তে গ্লুকোজের মাত্রা কীভাবে পরিমাপ করবেন?', N'বাড়িতে আপনার নিজের রক্তে গ্লুকোজের মাত্রা পরিমাপ করা ডায়াবেটিস ব্যবস্থাপনার একটি গুরুত্বপূর্ণ অংশ। আপনার রক্তে শর্করার পরিমাপ করতে আপনার একটি গ্লুকোমিটার এবং পরীক্ষার স্ট্রিপ প্রয়োজন। ফলাফলের নির্ভুলতা নিশ্চিত করতে পরীক্ষার আগে হাত ধুয়ে শুকিয়ে নিন। তারপর বিশ্লেষণের জন্য গ্লুকোমিটার মেশিনে পরীক্ষার স্ট্রিপে রাখার আগে আঙুলের ডগা থেকে কৈশিক রক্তের একটি ছোট ফোঁটা আঁকতে গ্লুকোমিটারের সাথে দেওয়া ফিঙ্গার প্রিকার ব্যবহার করুন।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:52.2600000' AS DateTime2), 2, NULL, NULL, 79)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (17, N'উচ্চ গ্লুকোজ মাত্রা কি নির্দেশ করে?', N'উচ্চ গ্লুকোজ মাত্রা, যা হাইপারগ্লাইসেমিয়া নামেও পরিচিত, এমন একটি অবস্থা হিসাবে সংজ্ঞায়িত করা হয় যেখানে শরীরের রক্তে গ্লুকোজ বা চিনির মাত্রা বেড়ে যায়। এটি ডায়েট, ব্যায়ামের অভাব, নির্দিষ্ট ওষুধ বা পূর্ব-বিদ্যমান চিকিৎসা অবস্থা সহ বিভিন্ন কারণের কারণে হতে পারে। কিছু ক্ষেত্রে, উচ্চ গ্লুকোজ মাত্রা ডায়াবেটিস নির্দেশ করতে পারে এবং হালকাভাবে নেওয়া উচিত নয়।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:52.2666667' AS DateTime2), 2, NULL, NULL, 79)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (18, N'কম গ্লুকোজ মাত্রা কি নির্দেশ করে?', N'নিম্ন গ্লুকোজ মাত্রা, যা হাইপোগ্লাইসেমিয়া নামেও পরিচিত, এর বিভিন্ন কারণ থাকতে পারে এবং এটি একটি অন্তর্নিহিত চিকিৎসা অবস্থার উপস্থিতি নির্দেশ করতে পারে। এটি ঘটে যখন একটি অপর্যাপ্ত সরবরাহ থাকে, বা শরীর দক্ষতার সাথে সঞ্চালিত শর্করা নিয়ন্ত্রণ করতে পারে না। এটি ডায়াবেটিস, হরমোনের ভারসাম্যহীনতা বা এমনকি কিছু ওষুধের কারণে হতে পারে যা রক্তে শর্করার ঘনত্বকে পরিবর্তন করে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:53:52.2700000' AS DateTime2), 2, NULL, NULL, 79)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (19, N'রক্তের অক্সিজেন কি?', N'রক্তের অক্সিজেন, বা অক্সিজেন স্যাচুরেশন হল সবচেয়ে গুরুত্বপূর্ণ গুরুত্বপূর্ণ লক্ষণগুলির মধ্যে একটি যা একজন ব্যক্তির রক্তে অক্সিজেনের পরিমাণ পরিমাপ করে। আপনার রক্তে অক্সিজেনের পরিমাণ আপনার বয়স, শারীরিক ক্রিয়াকলাপের মাত্রা এবং আপনার যে কোনো চিকিৎসা অবস্থার উপর নির্ভর করে পরিবর্তিত হতে পারে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:59:06.4233333' AS DateTime2), 2, NULL, NULL, 72)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (20, N'রক্তের অক্সিজেনের মাত্রা কখন পরিমাপ করবেন?', N'চিকিত্সক পেশাদাররা সুপারিশ করেন যে বেশিরভাগ লোক ঠান্ডা এবং ফ্লু মৌসুমের শুরুতে বছরে দুবার তাদের রক্তের অক্সিজেনের মাত্রা পরীক্ষা করে। তাছাড়া, আপনার রক্তের অক্সিজেনও পরীক্ষা করা উচিত যদি আপনি শ্বাসকষ্টের লক্ষণ যেমন শ্বাস নিতে অসুবিধা, বুকে ব্যথা বা কফ কাশি দেখান।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:59:06.4333333' AS DateTime2), 2, NULL, NULL, 72)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (21, N'রক্তের অক্সিজেনের মাত্রা কীভাবে পরিমাপ করবেন?', N'বাড়িতে আপনার রক্তের অক্সিজেন পরিমাপ করতে একটি পালস অক্সিমিটার ব্যবহার করুন। প্রথমে, আপনার আঙুলের চারপাশে বা আপনার কানের লতিতে ডিভাইসটি লাগান। একবার এটি সুরক্ষিত হয়ে গেলে, আপনার কয়েক সেকেন্ডের মধ্যে রিডিং পাওয়া উচিত।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:59:06.4400000' AS DateTime2), 2, NULL, NULL, 72)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (22, N'রক্তে অক্সিজেনের গড় মাত্রা কত?', N'এই অত্যাবশ্যক চিহ্নের স্বাভাবিক মান বেশিরভাগ সুস্থ ব্যক্তিদের মধ্যে 95% এবং 100% এর মধ্যে থাকে। যদি আপনার অক্সিজেনের মাত্রা 95% এর নিচে নেমে যায়, তাহলে চিকিৎসা সহায়তা নিন।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:59:06.4433333' AS DateTime2), 2, NULL, NULL, 72)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (23, N'রক্তে অক্সিজেনের মাত্রা খুব কম হলে কি হবে?', N'যদি আপনার রক্তের অক্সিজেনের মাত্রা খুব কম হয় তবে এটি হাইপোক্সেমিয়া হতে পারে। হাইপোক্সেমিয়া ঘটে যখন শরীর রক্ত প্রবাহে পর্যাপ্ত অক্সিজেন পায় না। এই অবস্থার লক্ষণগুলির মধ্যে রয়েছে শ্বাসকষ্ট, বিভ্রান্তি, বিরক্তি, ক্লান্তি এবং বুকে ব্যথা। যদি চিকিত্সা না করা হয়, হাইপোক্সেমিয়া গুরুতর স্বাস্থ্য জটিলতা সৃষ্টি করতে পারে যেমন শ্বাসযন্ত্রের ব্যর্থতা, মস্তিষ্কের ক্ষতি এবং হার্টের সমস্যা।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:59:06.4500000' AS DateTime2), 2, NULL, NULL, 72)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (24, N'রক্তে অক্সিজেনের মাত্রা খুব বেশি হলে কি হবে?', N'যখন আপনার রক্ত গুরুত্বপূর্ণ লক্ষণগুলির স্বাভাবিক মান ছাড়িয়ে যায়, তখন আপনার হাইপারক্সেমিয়া হতে পারে। আর যদি চেক না করা হয় তবে এটি একাধিক অঙ্গের মারাত্মক ক্ষতি এমনকি মৃত্যু পর্যন্ত হতে পারে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T18:59:06.4566667' AS DateTime2), 2, NULL, NULL, 72)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (25, N'রক্তচাপ কি?', N'রক্তচাপ হল আরেকটি গুরুত্বপূর্ণ চিহ্ন যা আপনার কার্ডিওভাসকুলার সিস্টেমের স্বাস্থ্য পরিমাপ করে। এটি আমাদের ধমনী এবং শিরাগুলির দেয়ালের বিরুদ্ধে রক্তের দ্বারা প্রয়োগ করা শক্তি।।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:02:43.3366667' AS DateTime2), 2, NULL, NULL, 64)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (26, N'রক্তচাপ কখন পরিমাপ করবেন?', N'আপনার সামগ্রিক স্বাস্থ্যের একটি গুরুত্বপূর্ণ সূচক হিসাবে, নিয়মিতভাবে আপনার রক্তচাপ পরিমাপ করার পরামর্শ দেওয়া হয়। পরিমাপ করার আদর্শ সময় হল সকালে ঘুম থেকে ওঠার পরে এবং প্রাতঃরাশ খাওয়ার আগে নিশ্চিত করুন যে আপনি এমন কিছু গ্রহণ করেননি যা সাময়িকভাবে আপনার রক্তচাপ পড়ার পরিমাণ বাড়াতে বা কমাতে পারে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:02:43.3500000' AS DateTime2), 2, NULL, NULL, 64)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (27, N'সাধারণ রক্তচাপ কি?', N'প্রাপ্তবয়স্কদের মধ্যে, স্বাভাবিক সিস্টোলিক চাপ (হার্ট সংকোচন পর্যায়ে) 120 বা তার কম, যখন সাধারণ ডায়াস্টোলিক চাপ (শিথিল পর্যায়ে হৃদয়) 80 বা তার কম।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:02:43.3566667' AS DateTime2), 2, NULL, NULL, 64)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (28, N'রক্তচাপ কিভাবে পরিমাপ করবেন?', N'একটি ডায়াল গেজ সহ একটি অ্যানারয়েড মনিটর, যেমন একটি কম্পাস মুখ, রক্তচাপ পরিমাপ করতে পারে। যাইহোক, একটি ডিজিটাল মনিটর বেশি জনপ্রিয় কারণ এটি স্বয়ংক্রিয় এবং রিডিং সহজেই এর স্ক্রিনে দেখা যায়, সাধারণত লাল সংখ্যায়। কিন্তু একটি ডিজিটাল মনিটর আরো ব্যয়বহুল। বাছুর, কব্জি বা আঙুলের চারপাশে পরিধানের চেয়ে উপরের বাহুর চারপাশে ফিট করা একটি কাফ আরও সঠিক পাঠ দেবে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:02:43.3666667' AS DateTime2), 2, NULL, NULL, 64)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (29, N'উচ্চ রক্তচাপ কি?', N'উচ্চ রক্তচাপ, যা উচ্চ রক্তচাপ নামেও পরিচিত, ধমনীতে ক্রমাগত উচ্চ-চাপের মাত্রা দ্বারা চিহ্নিত করা হয়। এটি হার্ট অ্যাটাক এবং স্ট্রোকের মতো গুরুতর কার্ডিওভাসকুলার রোগের ঝুঁকি বাড়ায় এবং চিকিত্সা না করা হলে চোখ, কিডনি এবং মস্তিষ্কের মতো অন্যান্য অঙ্গের ক্ষতি করে। 140 mmHg বা তার বেশি সিস্টোলিক রিডিং উচ্চ রক্তচাপ হিসাবে বিবেচিত হয়; একইভাবে, 90 mmHg বা তার বেশি ডায়াস্টোলিক রিডিং উচ্চ রক্তচাপ নির্দেশ করে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:02:43.3733333' AS DateTime2), 2, NULL, NULL, 64)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (30, N'নিম্ন রক্তচাপ কি?', N'নিম্ন রক্তচাপ, যা হাইপোটেনশন নামেও পরিচিত, ঘটে যখন একজন ব্যক্তির ধমনীতে রক্তচাপ হওয়া উচিত তার চেয়ে কম হয়। এটি মাথা ঘোরা থেকে অঙ্গ ব্যর্থতা পর্যন্ত বিভিন্ন উপসর্গ এবং স্বাস্থ্য জটিলতা সৃষ্টি করতে পারে। প্রাপ্তবয়স্কদের জন্য একটি স্বাভাবিক বিশ্রামের সিস্টোলিক রক্তচাপ রিডিং সাধারণত 90-120mmHg এর মধ্যে হয়; যাইহোক, এই সংখ্যার নীচে পড়া নিম্ন রক্তচাপ নির্দেশ করতে পারে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:02:43.3800000' AS DateTime2), 2, NULL, NULL, 64)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (31, N'রক্তচাপ কি?', N'রক্তচাপ হল আরেকটি গুরুত্বপূর্ণ চিহ্ন যা আপনার কার্ডিওভাসকুলার সিস্টেমের স্বাস্থ্য পরিমাপ করে। এটি আমাদের ধমনী এবং শিরাগুলির দেয়ালের বিরুদ্ধে রক্তের দ্বারা প্রয়োগ করা শক্তি।।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:03:05.0033333' AS DateTime2), 2, NULL, NULL, 65)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (32, N'রক্তচাপ কখন পরিমাপ করবেন?', N'আপনার সামগ্রিক স্বাস্থ্যের একটি গুরুত্বপূর্ণ সূচক হিসাবে, নিয়মিতভাবে আপনার রক্তচাপ পরিমাপ করার পরামর্শ দেওয়া হয়। পরিমাপ করার আদর্শ সময় হল সকালে ঘুম থেকে ওঠার পরে এবং প্রাতঃরাশ খাওয়ার আগে নিশ্চিত করুন যে আপনি এমন কিছু গ্রহণ করেননি যা সাময়িকভাবে আপনার রক্তচাপ পড়ার পরিমাণ বাড়াতে বা কমাতে পারে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:03:05.0133333' AS DateTime2), 2, NULL, NULL, 65)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (33, N'সাধারণ রক্তচাপ কি?', N'প্রাপ্তবয়স্কদের মধ্যে, স্বাভাবিক সিস্টোলিক চাপ (হার্ট সংকোচন পর্যায়ে) 120 বা তার কম, যখন সাধারণ ডায়াস্টোলিক চাপ (শিথিল পর্যায়ে হৃদয়) 80 বা তার কম।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:03:05.0200000' AS DateTime2), 2, NULL, NULL, 65)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (34, N'রক্তচাপ কিভাবে পরিমাপ করবেন?', N'একটি ডায়াল গেজ সহ একটি অ্যানারয়েড মনিটর, যেমন একটি কম্পাস মুখ, রক্তচাপ পরিমাপ করতে পারে। যাইহোক, একটি ডিজিটাল মনিটর বেশি জনপ্রিয় কারণ এটি স্বয়ংক্রিয় এবং রিডিং সহজেই এর স্ক্রিনে দেখা যায়, সাধারণত লাল সংখ্যায়। কিন্তু একটি ডিজিটাল মনিটর আরো ব্যয়বহুল। বাছুর, কব্জি বা আঙুলের চারপাশে পরিধানের চেয়ে উপরের বাহুর চারপাশে ফিট করা একটি কাফ আরও সঠিক পাঠ দেবে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:03:05.0266667' AS DateTime2), 2, NULL, NULL, 65)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (35, N'উচ্চ রক্তচাপ কি?', N'উচ্চ রক্তচাপ, যা উচ্চ রক্তচাপ নামেও পরিচিত, ধমনীতে ক্রমাগত উচ্চ-চাপের মাত্রা দ্বারা চিহ্নিত করা হয়। এটি হার্ট অ্যাটাক এবং স্ট্রোকের মতো গুরুতর কার্ডিওভাসকুলার রোগের ঝুঁকি বাড়ায় এবং চিকিত্সা না করা হলে চোখ, কিডনি এবং মস্তিষ্কের মতো অন্যান্য অঙ্গের ক্ষতি করে। 140 mmHg বা তার বেশি সিস্টোলিক রিডিং উচ্চ রক্তচাপ হিসাবে বিবেচিত হয়; একইভাবে, 90 mmHg বা তার বেশি ডায়াস্টোলিক রিডিং উচ্চ রক্তচাপ নির্দেশ করে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:03:05.0300000' AS DateTime2), 2, NULL, NULL, 65)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (36, N'নিম্ন রক্তচাপ কি?', N'নিম্ন রক্তচাপ, যা হাইপোটেনশন নামেও পরিচিত, ঘটে যখন একজন ব্যক্তির ধমনীতে রক্তচাপ হওয়া উচিত তার চেয়ে কম হয়। এটি মাথা ঘোরা থেকে অঙ্গ ব্যর্থতা পর্যন্ত বিভিন্ন উপসর্গ এবং স্বাস্থ্য জটিলতা সৃষ্টি করতে পারে। প্রাপ্তবয়স্কদের জন্য একটি স্বাভাবিক বিশ্রামের সিস্টোলিক রক্তচাপ রিডিং সাধারণত 90-120mmHg এর মধ্যে হয়; যাইহোক, এই সংখ্যার নীচে পড়া নিম্ন রক্তচাপ নির্দেশ করতে পারে।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:03:05.0400000' AS DateTime2), 2, NULL, NULL, 65)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (37, N'বডি মাস ইনডেক্স কি?', N'বডি মাস ইনডেক্স (BMI) হল একটি পরিমাপ যন্ত্রণা যা মানুষের ওজন এবং উচ্চতা নির্ধারণ করে তারা কতটুকু স্বাস্থ্যসম্মত ও সামান্য শরীরের পরিমাপ রেখে থাকে। এটি সাধারণত একটি সাধারণ গণিতিক প্রক্রিয়া ব্যবহার করে পরিবারে বা সম্প্রাণ গোষ্ঠীতে মানুষের বড়ী পরিমাপ করার জন্য।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:06:03.1433333' AS DateTime2), 2, NULL, NULL, 74)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (38, N'কখন আপনার বডি মাস ইনডেক্স পরিমাপ করবেন?', N'বডি মাস ইনডেক্স পরিমাপ করা যাবে যখন আপনি আপনার উচ্চতা এবং ওজন জানেন। তারপর এই সংখ্যা হিসেবে প্রকাশ করা হয়:
BMI = ওজন (কেজি) / (উচ্চতা (মিটার) * উচ্চতা (মিটার))', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:06:03.1566667' AS DateTime2), 2, NULL, NULL, 65)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (39, N'আদর্শ বডি মাস ইনডে্ক্স পরিসীমা কি?', N'আদর্শ বডি মাস ইনডে্ক্স পরিসীমা সাধারণত ১৮.৫ থেকে ২৫ এর মধ্যে থাকে। এই সীমার মধ্যে থাকা মানুষের সামান্য শরীরের পরিমাপ বলে ধরা হয় এবং এই ব্যক্তিদের স্বাস্থ্য সামগ্রী খুব ভালো থাকে সাধারণত।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:06:03.1633333' AS DateTime2), 2, NULL, NULL, 65)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (40, N'অতিরিক্ত বডি মাস ইনডেক্স এর সাথে সম্পর্কিত সমস্যাগুলি কী কী?', N'অতিরিক্ত বডি মাস ইনডেক্সের সাথে সম্পর্কিত সমস্যাগুলি হতে পারে হার্ট রোগ, ডায়াবেটিস, উচ্চ রক্তচাপ, শ্বাসকষ্ট, আর্থ্রাইটিস, মধুমেহ, বিভিন্ন ধরনের ক্যান্সার ইত্যাদি।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:06:03.1700000' AS DateTime2), 2, NULL, NULL, 65)
GO
INSERT [dbo].[Configuration_VitalFAQ] ([Id], [Question], [Answer], [TagSearchKeyword], [IconFileName], [IconFilePath], [IconFileExtension], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [VitalId]) VALUES (41, N'কম বডি মাস ইনডেক্স এর সাথে সম্পর্কিত সমস্যাগুলি কী কী?', N'কম বডি মাস ইনডেক্সের সাথে সম্পর্কিত সমস্যাগুলি হতে পারে অন্যেরভাবে স্বাস্থ্যসম্মত অসুস্থতা, মাংসপেশী দুর্বলতা, অস্বাভাবিক রক্তচাপ, হাড়-নষ্ট সমস্যা, অস্থিরতা, ইমিউন সিস্টেমের দুর্বলতা ইত্যাদি।', N'ব্লাডগ্লুকোজ, ব্লাডসুগার, BloodGlucose, BloodSugar', NULL, NULL, NULL, CAST(N'2025-06-30T19:06:03.1733333' AS DateTime2), 2, NULL, NULL, 65)
GO
SET IDENTITY_INSERT [dbo].[Configuration_VitalFAQ] OFF
GO
SET IDENTITY_INSERT [dbo].[Prescription_Upload] ON 
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (3, N'0000000001          ', 1, 2, NULL, NULL, NULL, N'Mother Fever', N'files\0000000001_1_thumbnail.jpg', N'.pdf', 3, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, CAST(N'2025-06-02T18:30:21.6633333' AS DateTime2), 1, 2, CAST(N'2025-06-02T18:30:21.6633333' AS DateTime2), 1, 2, CAST(N'2025-06-02T18:30:21.6633333' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-02T17:30:01.4328402' AS DateTime2), 8, CAST(N'2025-06-19T17:42:16.3978771' AS DateTime2), 8, CAST(N'2025-02-03T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (4, N'0000000002          ', 2, 3, NULL, NULL, NULL, N'Brother Pain', N'files\0000000002_1_thumbnail.jpg', N'.pdf', 1, 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-02T17:30:52.7182051' AS DateTime2), 7, CAST(N'2025-06-02T17:30:54.7711931' AS DateTime2), 7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (5, N'0000000003          ', 3, NULL, NULL, NULL, NULL, N'tst', N'files\0000000003_1_thumbnail.jpg', N'.jpg', 2, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-19T17:25:20.9177865' AS DateTime2), 8, CAST(N'2025-06-19T17:27:31.6599370' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (6, N'0000000004          ', 1, NULL, NULL, NULL, NULL, N'Raihan', N'files\0000000004_1_thumbnail.jpg', N'.jpg', 3, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-19T19:17:14.1841152' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (7, N'0000000005          ', 2, NULL, NULL, NULL, NULL, N'Test File', N'files\0000000005_1_thumbnail.jpg', N'.pdf', 3, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-19T19:54:15.0125639' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (8, N'0000000006          ', 3, NULL, NULL, NULL, NULL, N'abc', N'files\0000000006_1_thumbnail.jpg', N'.pdf', 4, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-20T17:09:45.0989056' AS DateTime2), 8, CAST(N'2025-09-18T18:47:46.2961857' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (9, N'0000000007          ', 1, NULL, NULL, NULL, NULL, N'Test File', N'files\0000000007_1_thumbnail.jpg', N'.pdf', 3, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-20T20:35:34.9478803' AS DateTime2), 8, CAST(N'2025-10-29T12:33:26.0917434' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (10, N'0000000008          ', 2, NULL, NULL, NULL, NULL, N'shahanaz', N'files\0000000008_1_thumbnail.jpg', N'.pdf', 3, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-20T20:49:33.2371888' AS DateTime2), 8, CAST(N'2025-09-29T15:54:45.6525120' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (11, N'0000000009          ', 3, NULL, NULL, NULL, NULL, N'bbbbb', N'files\0000000009_1_thumbnail.jpg', N'.pdf', 3, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-20T20:59:55.7641383' AS DateTime2), 8, CAST(N'2025-06-25T14:34:32.5610243' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (12, N'0000000010          ', 1, NULL, NULL, NULL, NULL, N'dddd', N'files\0000000010_1_thumbnail.jpg', N'.pdf', 1, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-20T21:15:44.0845314' AS DateTime2), 8, CAST(N'2025-09-29T15:54:49.2525020' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (13, N'0000000011          ', 2, NULL, NULL, NULL, NULL, N'File 5 added', N'files\0000000011_1_thumbnail.jpg', N'.jpg', 5, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-20T21:18:38.7191128' AS DateTime2), 8, CAST(N'2025-09-29T15:55:05.5947928' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (20, N'0000000012          ', 3, NULL, NULL, NULL, NULL, N'Raihan-1', N'files\0000000012_1_thumbnail.jpg', N'.pdf', 1, 8, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-25T14:36:25.5406550' AS DateTime2), 8, CAST(N'2025-09-29T15:55:13.4497278' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (21, N'0000000013          ', 1, NULL, NULL, NULL, NULL, N'Hasan fever', N'files\0000000013_1_thumbnail.jpg', N'.jpg', 2, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-25T18:28:11.6111339' AS DateTime2), 8, CAST(N'2025-07-01T13:00:04.5396324' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (22, N'0000000014          ', 2, NULL, NULL, NULL, NULL, N'Hasan Back Pain', N'files\0000000014_1_thumbnail.jpg', N'.pdf', 3, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-25T18:28:57.7676725' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (23, N'0000000015          ', 3, NULL, NULL, NULL, NULL, N'Hasan Test', N'files\0000000015_1_thumbnail.jpg', N'.jpg', 2, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-25T18:29:58.1754356' AS DateTime2), 8, CAST(N'2025-06-25T18:32:16.6570343' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (25, N'0000000016          ', 1, NULL, NULL, NULL, NULL, N'kkk', N'files\0000000016_1_thumbnail.jpg', N'.jpg', 1, 8, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-08T13:25:01.1586763' AS DateTime2), 8, CAST(N'2025-07-08T13:25:44.6368857' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (26, N'0000000017          ', 2, NULL, NULL, NULL, NULL, N'sss', N'files\0000000017_1_thumbnail.jpg', N'.jpg', 1, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-08T13:26:53.5315289' AS DateTime2), 8, CAST(N'2025-07-08T13:27:19.4252906' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (27, N'0000000018          ', 3, NULL, NULL, NULL, NULL, N'Default file name auto', N'files\0000000018_1_thumbnail.jpg', N'.jpg', 2, 9, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-07-08T23:42:29.9638055' AS DateTime2), 9, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (28, N'0000000019          ', 1, NULL, NULL, NULL, NULL, N'sss', N'files\0000000019_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-08-24T11:59:39.6492082' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (29, N'0000000020          ', 2, NULL, NULL, NULL, NULL, N'rrr', N'files\0000000020_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-08-24T12:44:24.3854188' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (30, N'0000000021          ', 1, NULL, NULL, NULL, NULL, N'uuu', N'files\0000000021_1_thumbnail.jpg', N'.jpg', 2, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-08-24T12:45:11.2348038' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (31, N'0000000022          ', 2, NULL, NULL, NULL, NULL, N'23092025', N'files\0000000022_1_thumbnail.jpg', N'.jpg', 2, 10, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-23T22:32:08.1937385' AS DateTime2), 10, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (32, N'0000000023          ', 3, NULL, NULL, NULL, NULL, N'23092025', N'files\0000000023_1_thumbnail.jpg', N'.jpg', 2, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-23T22:42:18.3715246' AS DateTime2), 8, CAST(N'2025-09-23T22:53:52.2376355' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (33, N'0000000024          ', 1, NULL, NULL, NULL, NULL, N'List of Acronyms', N'files\0000000024_1_thumbnail.jpg', N'.pdf', 1, 8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Shahanaz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-25T12:42:38.6143352' AS DateTime2), 8, CAST(N'2025-09-29T12:00:18.4213506' AS DateTime2), 7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (36, N'0000000026          ', 2, NULL, NULL, NULL, NULL, N'cvc', N'files\0000000026_1_thumbnail.jpg', N'.pdf', 1, 11, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Khulna', N'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-28T12:10:35.8323420' AS DateTime2), 11, CAST(N'2025-09-28T23:20:00.8615053' AS DateTime2), 7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (37, N'0000000027          ', NULL, NULL, NULL, NULL, NULL, N'Toriqul Islam', N'files\0000000027_1_thumbnail.jpg', N'.jpg', 1, 12, 20, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-30T21:20:23.6836139' AS DateTime2), 12, CAST(N'2025-09-30T21:30:18.5185755' AS DateTime2), 12, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (38, N'0000000028          ', NULL, NULL, NULL, NULL, NULL, N'Torikul 2', N'files\0000000028_1_thumbnail.jpg', N'.jpg', 2, 12, 20, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-30T21:36:30.8510537' AS DateTime2), 12, CAST(N'2025-09-30T21:36:44.6366895' AS DateTime2), 12, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (39, N'0000000029          ', NULL, NULL, NULL, NULL, NULL, N'T 3', N'files\0000000029_1_thumbnail.jpg', N'.pdf', 1, 12, 20, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-30T21:38:39.1612366' AS DateTime2), 12, CAST(N'2025-09-30T21:39:02.7108803' AS DateTime2), 12, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (40, N'0000000030          ', NULL, NULL, NULL, NULL, NULL, N'T4', N'files\0000000030_1_thumbnail.jpg', N'.jpg', 2, 12, 20, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-30T21:40:20.7128729' AS DateTime2), 12, CAST(N'2025-09-30T21:40:36.4046502' AS DateTime2), 12, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (41, N'0000000031          ', NULL, NULL, NULL, NULL, NULL, N'Taa', N'files\0000000031_1_thumbnail.jpg', N'.jpg', 2, 13, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-30T22:17:33.1028031' AS DateTime2), 13, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (42, N'0000000032          ', NULL, NULL, NULL, NULL, NULL, N'Tbb', N'files\0000000032_1_thumbnail.jpg', N'.png', 1, 13, 21, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-09-30T22:19:44.8566784' AS DateTime2), 13, CAST(N'2025-09-30T22:19:48.5810682' AS DateTime2), 13, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (43, N'0000000033          ', NULL, NULL, NULL, NULL, NULL, N'mkoijmk', N'files\0000000033_1_thumbnail.jpg', N'.jpg', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Fever', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-10-20T15:52:02.6078511' AS DateTime2), 8, CAST(N'2025-11-06T14:58:46.7713404' AS DateTime2), 7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (44, N'0000000034          ', NULL, NULL, NULL, NULL, NULL, N'20251027143252_file', N'files\0000000034_1_thumbnail.jpg', N'.jpg', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-10-27T14:33:10.8124829' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (45, N'0000000035          ', NULL, NULL, NULL, NULL, NULL, N'20251027143318_file', N'files\0000000035_1_thumbnail.jpg', N'.jpg', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-10-27T14:33:25.3087723' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (46, N'0000000036          ', NULL, NULL, NULL, NULL, NULL, N'20251029104619_file', N'files\0000000036_1_thumbnail.jpg', N'.jpg', 1, 16, 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-10-29T10:46:39.3481707' AS DateTime2), 16, CAST(N'2025-10-29T10:46:41.5513738' AS DateTime2), 16, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (47, N'0000000037          ', NULL, NULL, NULL, NULL, NULL, N'20251029115310_file', N'files\0000000037_1_thumbnail.jpg', N'.jpg', 1, 16, 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-10-29T11:53:23.1632867' AS DateTime2), 16, CAST(N'2025-10-29T11:53:25.6190719' AS DateTime2), 16, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (48, N'0000000038          ', NULL, NULL, NULL, NULL, NULL, N'20251102221803_file', N'files\0000000038_1_thumbnail.jpg', N'.jpg', 1, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-02T22:18:48.2992526' AS DateTime2), 8, CAST(N'2025-11-02T22:18:53.8799564' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (49, N'0000000039          ', NULL, NULL, NULL, NULL, NULL, N'20251102221900_file', N'files\0000000039_1_thumbnail.jpg', N'.jpg', 1, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-02T22:19:52.2893494' AS DateTime2), 8, CAST(N'2025-11-02T22:19:54.0849194' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (50, N'0000000040          ', NULL, NULL, NULL, NULL, NULL, N'20251110181855_file', N'files\0000000040_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T18:19:17.7606357' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (51, N'0000000041          ', NULL, NULL, NULL, NULL, NULL, N'20251110182218_file', N'files\0000000041_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T18:22:26.3966710' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (52, N'0000000042          ', NULL, NULL, NULL, NULL, NULL, N'20251110182507_file', N'files\0000000042_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T18:25:13.9063851' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (53, N'0000000043          ', NULL, NULL, NULL, NULL, NULL, N'20251110182622_file', N'files\0000000043_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T18:26:29.5408332' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (54, N'0000000044          ', NULL, NULL, NULL, NULL, NULL, N'20251110184938_file', N'files\0000000044_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T18:49:45.0750144' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (55, N'0000000045          ', NULL, NULL, NULL, NULL, NULL, N'20251110185340_file', N'files\0000000045_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T18:53:57.7329598' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (56, N'0000000046          ', NULL, NULL, NULL, NULL, NULL, N'20251110190312_file', N'files\0000000046_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T19:03:18.8143087' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (57, N'0000000047          ', NULL, NULL, NULL, NULL, NULL, N'20251110201141_file', N'files\0000000047_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T20:11:49.1362259' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (58, N'0000000048          ', NULL, NULL, NULL, NULL, NULL, N'20251110201840_file', N'files\0000000048_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T20:18:47.3650825' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (59, N'0000000049          ', NULL, NULL, NULL, NULL, NULL, N'20251110202100_file', N'files\0000000049_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T20:21:06.3974127' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (60, N'0000000050          ', NULL, NULL, NULL, NULL, NULL, N'20251110202256_file', N'files\0000000050_1_thumbnail.jpg', N'.pdf', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T20:23:32.6149094' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (61, N'0000000051          ', NULL, NULL, NULL, NULL, NULL, N'20251110202344_file', N'files\0000000051_1_thumbnail.jpg', N'.jpg', 1, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Fever', N'Cold', N'Influenja', N'Heart Ache', N'Leg cramp', NULL, NULL, NULL, NULL, CAST(N'2025-11-10T20:23:54.0710363' AS DateTime2), 8, CAST(N'2025-11-10T20:51:39.4481907' AS DateTime2), 7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (62, N'0000000052          ', NULL, NULL, NULL, NULL, NULL, N'20251110205445_file', N'files\0000000052_1_thumbnail.jpg', N'.jpg', 1, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T20:55:05.6294866' AS DateTime2), 8, CAST(N'2025-11-12T14:18:09.1401302' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (63, N'0000000053          ', 8, 4, NULL, NULL, NULL, N'20251110214535_file', N'files\0000000053_1_thumbnail.jpg', N'.png', 1, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 1, 2, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-10T21:45:56.4395003' AS DateTime2), 8, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (64, N'0000000054          ', 12, 5, NULL, NULL, NULL, N'20251111150804_file', N'files\0000000054_1_thumbnail.jpg', N'.png', 1, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 1, 2, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-11T15:08:34.5138697' AS DateTime2), 8, CAST(N'2025-11-11T15:09:10.4085734' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (65, N'0000000055          ', NULL, NULL, NULL, NULL, NULL, N'20251113142542_file', N'files\0000000055_1_thumbnail.jpg', N'.jpg', 1, 17, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-13T14:31:27.2403976' AS DateTime2), 17, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (66, N'0000000056          ', 14, 6, NULL, NULL, NULL, N'Sultana Zaman', N'files\0000000056_1_thumbnail.jpg', N'.jpg', 1, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 1, 2, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-13T17:07:01.5376740' AS DateTime2), 8, CAST(N'2025-11-13T17:07:04.9922027' AS DateTime2), 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Prescription_Upload] ([Id], [PrescriptionCode], [PatientId], [SmartRxId], [IsExistingPatient], [HasExistingRelative], [RelativePatientIds], [FileName], [FilePath], [FileExtension], [NumberOfFilesStoredForThisPrescription], [UserId], [FolderId], [IsSmartRxRequested], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PrescriptionDate]) VALUES (67, N'0000000057          ', NULL, NULL, NULL, NULL, NULL, N'20251116130942_file', N'files\0000000057_1_thumbnail.jpg', N'.png', 1, 17, 28, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-11-16T13:10:00.3207921' AS DateTime2), 17, CAST(N'2025-11-16T13:10:03.6191071' AS DateTime2), 17, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Prescription_Upload] OFF
GO
SET IDENTITY_INSERT [dbo].[Prescription_UserWiseFolder] ON 
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (1, NULL, N'0', N'Primary', N'Default Folder', 7, CAST(N'2025-06-02T17:22:29.5910924' AS DateTime2), 7, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (2, 1, N'1', N'Mother', N'ss', 7, CAST(N'2025-06-02T17:27:00.2970010' AS DateTime2), 7, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (3, 1, N'1', N'Father', N'ff', 7, CAST(N'2025-06-02T17:27:08.7521060' AS DateTime2), 7, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (4, 1, N'1', N'Sister', N'sss', 7, CAST(N'2025-06-02T17:27:19.2718899' AS DateTime2), 7, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (5, 1, N'1', N'Brother 1', N'b1', 7, CAST(N'2025-06-02T17:27:27.1789902' AS DateTime2), 7, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (6, 1, N'1', N'Brother 2', N'b2', 7, CAST(N'2025-06-02T17:27:36.6282487' AS DateTime2), 7, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (7, NULL, N'0', N'Primary', N'Default Folder', 8, CAST(N'2025-06-16T19:27:31.7438920' AS DateTime2), 8, NULL, NULL, 1)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (8, 7, N'1', N'Tamzid', N'', 8, CAST(N'2025-06-23T15:40:54.7487466' AS DateTime2), 8, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (9, 8, N'2', N'Hasan', N'', 8, CAST(N'2025-06-25T18:27:06.6110275' AS DateTime2), 8, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (12, 7, N'1', N'test', N'no desc', 8, CAST(N'2025-07-08T13:23:50.0566066' AS DateTime2), 8, CAST(N'2025-11-12T13:46:31.9386636' AS DateTime2), 8, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (13, NULL, N'0', N'Primary', N'Default Folder', 9, CAST(N'2025-07-08T23:38:51.9756887' AS DateTime2), 9, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (14, 7, N'1', N'New Folder', N'Yesud', 8, CAST(N'2025-07-14T20:18:58.4017717' AS DateTime2), 8, CAST(N'2025-07-16T22:37:35.7380834' AS DateTime2), 8, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (16, NULL, N'0', N'Primary', N'Default Folder', 10, CAST(N'2025-09-23T22:29:43.6735098' AS DateTime2), 10, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (18, NULL, N'0', N'Primary', N'Default Folder', 11, CAST(N'2025-09-23T22:29:43.6735098' AS DateTime2), 11, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (19, 18, N'0', N'Shahanaz', N'', 11, CAST(N'2025-09-28T23:20:34.8287066' AS DateTime2), 11, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (20, NULL, N'0', N'Primary', N'Default Folder', 12, CAST(N'2025-09-30T21:11:24.0641285' AS DateTime2), 12, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (21, NULL, N'0', N'Primary', N'Default Folder', 13, CAST(N'2025-09-30T22:13:32.5934287' AS DateTime2), 13, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (22, NULL, N'0', N'Primary', N'Default Folder', 14, CAST(N'2025-10-23T10:54:22.5958746' AS DateTime2), 14, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (24, NULL, N'0', N'Primary', N'Default Folder', 15, CAST(N'2025-10-27T14:42:57.3510946' AS DateTime2), 15, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (25, NULL, N'0', N'Primary', N'Default Folder', 16, CAST(N'2025-10-29T10:45:27.4629797' AS DateTime2), 16, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (26, 7, N'0', N'abcd', N'', 8, CAST(N'2025-11-10T21:08:19.3034775' AS DateTime2), 8, CAST(N'2025-11-10T21:10:59.9283844' AS DateTime2), 8, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (27, 7, N'0', N'yuyui', N'', 8, CAST(N'2025-11-11T11:19:54.3557096' AS DateTime2), 8, NULL, NULL, NULL)
GO
INSERT [dbo].[Prescription_UserWiseFolder] ([Id], [ParentFolderId], [FolderHierarchy], [FolderName], [Description], [UserId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId]) VALUES (28, NULL, N'0', N'Primary', N'Default Folder', 17, CAST(N'2025-11-12T17:41:25.0697142' AS DateTime2), 17, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Prescription_UserWiseFolder] OFF
GO
SET IDENTITY_INSERT [dbo].[Security_PMSRole] ON 
GO
INSERT [dbo].[Security_PMSRole] ([Id], [Name], [Description], [IsSelfService], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, N'Super Admin', N'Super Admin is the only one user in the system and all super access has in it and to recover the system only this user can be usable ', 0, CAST(N'2025-06-11T23:34:00.8915593' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSRole] ([Id], [Name], [Description], [IsSelfService], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, N'Admin', N'Admin is to manipulated all general access and manage system', 0, CAST(N'2025-06-11T23:34:00.8917110' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSRole] ([Id], [Name], [Description], [IsSelfService], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, N'Entry User', N'An admin user who can enter all data into the system', 1, CAST(N'2025-06-11T23:34:00.8917160' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSRole] ([Id], [Name], [Description], [IsSelfService], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, N'Recommender', NULL, 1, CAST(N'2025-06-11T23:34:00.8917201' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSRole] ([Id], [Name], [Description], [IsSelfService], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, N'Approver', NULL, 1, CAST(N'2025-06-11T23:34:00.8917233' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSRole] ([Id], [Name], [Description], [IsSelfService], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, N'External User', N'Only outside user are in this list', 0, CAST(N'2025-06-11T23:34:00.8917267' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Security_PMSRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Security_PMSUser] ON 
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (1, N'0000000001', N'superadmin', N'1234', N'01786756453', N'', N'', N'', N'', N'S. M.', N'Tamzid', 1, NULL, NULL, 1, CAST(N'1980-05-20T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-06-11T23:34:00.6111495' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (2, N'0000000002', N'admin', N'1234', N'01786756453', N'', N'', N'', N'', N'Selim', N'Ahmed', 1, NULL, NULL, 1, CAST(N'1975-10-05T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-06-11T23:34:00.6120321' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (3, N'0000000003', N'entryuser', N'1234', N'01786756456', N'', N'', N'', N'', N'Sharif', N'Uddin', 1, NULL, NULL, 1, CAST(N'1970-08-15T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-06-11T23:34:00.6120336' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (4, N'0000000004', N'recommender', N'1234', N'01786756454', N'', N'', N'', N'', N'Mamun', N'Ahmed', 1, NULL, NULL, 1, CAST(N'1980-05-20T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-06-11T23:34:00.6120341' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (5, N'0000000005', N'approver', N'1234', N'01786756455', N'', N'', N'', N'', N'Ali', N'Akbar', 1, NULL, NULL, 1, CAST(N'1978-05-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-06-11T23:34:00.6120346' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (6, N'0000000006', N'externaluser', N'1234', N'01786756456', N'', N'', N'', N'', N'Rakibul', N'Islam', 1, NULL, NULL, 1, CAST(N'1988-08-15T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-06-11T23:34:00.6120350' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (7, N'0000000007', N'8801996806686', N'AQAAAAIAAYagAAAAEFW2L41jBrR1VwVNQiWfB69VgnbQyNAi7aO7YfxzHAottLcIKKsSPRyTwIxYOJHvHQ==', N'8801996806686', N'', N'', N'', N'', N'Shahanaz', N'Sultana', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-06-02T17:22:29.2835732' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (8, N'0000000008', N'8801716155239', N'AQAAAAIAAYagAAAAEAY+fSyeQui8OR5PC2sLtca0xh8FbP7aDSk3PJIlvODjBrLRVQFpISR51Mjn98NTJw==', N'8801716155239', N'', N'', N'', N'', N'Raihan', N'Wahid', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-06-16T19:27:31.3591639' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (9, N'0000000009', N'8801767565432', N'AQAAAAIAAYagAAAAEFJF4clY8/A1R/NyDj/ic3Di8fOOLIp9dxvBbvyrBQgtSJ/zMOr3tg2qGXBL0m2x2w==', N'8801767565432', N'', N'', N'', N'', N'sss', N'sss', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-07-08T23:38:51.6926700' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (10, N'0000000010', N'8801786756453', N'AQAAAAIAAYagAAAAELHB4AGVMnJkpcIl30m6KO5Y0A+cc8ScrI1wy1U5ak0z9yISxII7oWw3yfqGKw9vlg==', N'8801786756453', N'', N'', N'', N'', N'ttt', N'yyy', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-09-23T22:29:43.3846502' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (11, N'0000000011', N'8801987967562', N'AQAAAAIAAYagAAAAEJ6Md20OkgprQFsTrPgX4DTibkOb+hQOHXp42jVqsPboWJ1jEaUiSAMMs8Ovgststw==', N'8801987967562', N'', N'', N'', N'', N'Ibn', N'Sina', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-09-25T15:08:51.8047520' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (12, N'0000000012', N'8801876549678', N'AQAAAAIAAYagAAAAEC859yfjDyRFloJcIRC5ISLwYaRERS+ZgwMdF+FiqYCSxUsSIXW+1/E9oSzFhdHaWw==', N'8801876549678', N'', N'', N'', N'', N'Toriqul ', N'Islam', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-09-30T21:11:23.6295291' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (13, N'0000000013', N'8801897869876', N'AQAAAAIAAYagAAAAEH/6SuJMlCmMadpZ8+nFAMj2xF/9H6b8e9dLpglbanExnbsLRlvCxJ3gqt+pwGGB0A==', N'8801897869876', N'', N'', N'', N'', N'Mizanur', N'Rahman', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-09-30T22:13:32.4779707' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (14, N'0000000014', N'8801996806602', N'AQAAAAIAAYagAAAAEK6Y+15ZYcalKCOn6mqcbaYl1eIqUIYgBJUqDflLORGso3s/URDjJ7/E1l1ZiAnVrQ==', N'01996806602', N'', N'', N'', N'', N'Shahanaz', N'Sultana', 2, 0, N'', 2, CAST(N'2000-10-23T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-10-23T10:54:21.2228274' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (15, N'0000000015', N'8801786756454', N'AQAAAAIAAYagAAAAEGVgFdNou9+GHjyXnAZyByNmS6OmwEiOkC41KlGg5vB2/YYBID9kY83klMSLSx7Wcw==', N'8801786756454', N'', N'', N'', N'', N'Rabbi', N'Hossain', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-10-27T14:42:57.1951895' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (16, N'0000000016', N'8801769802651', N'AQAAAAIAAYagAAAAEGx9Wj40pRU5+jsSo1JaLCfNs0ze9GqGJfhdTnF2CIsjHTSxcJsulM2QrxTCcZfatA==', N'8801769802651', N'', N'', N'', N'', N'Adnan', N'Hamid', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-10-29T10:45:26.8370497' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Security_PMSUser] ([Id], [UserCode], [UserName], [Password], [MobileNo], [GoogleId], [FacebookId], [TwitterId], [Email], [FirstName], [LastName], [AuthMethod], [EmployeeId], [EmployeeCode], [Gender], [DateOfBirth], [Status], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [SmartRxUserEntityId]) VALUES (17, N'0000000017', N'8801786712132', N'AQAAAAIAAYagAAAAEBJWRbdBP/akS1wizN8vELom8gpRMD+hzBPNOBm0qsoS0DYSHmvjiZjTbnxXBTpJpg==', N'8801786712132', N'', N'', N'', N'', N'Samaresh', N'Majumder', 2, 0, N'', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2025-11-12T17:41:24.1663175' AS DateTime2), 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Security_PMSUser] OFF
GO
SET IDENTITY_INSERT [dbo].[Security_PMSUserWiseRole] ON 
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, 1, 1, CAST(N'2025-06-11T23:34:01.2298944' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, 2, 2, CAST(N'2025-06-11T23:34:01.2299622' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, 6, 3, CAST(N'2025-06-11T23:34:01.2299734' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, 4, 4, CAST(N'2025-06-11T23:34:01.2299743' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, 5, 5, CAST(N'2025-06-11T23:34:01.2299749' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, 6, 6, CAST(N'2025-06-11T23:34:01.2299762' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, 6, 7, CAST(N'2025-06-16T19:27:31.8437410' AS DateTime2), 8, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, 6, 8, CAST(N'2025-07-08T23:38:52.2725758' AS DateTime2), 9, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, 6, 9, CAST(N'2025-09-23T22:29:43.8191550' AS DateTime2), 10, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (11, 6, 10, CAST(N'2025-09-25T15:08:52.1923661' AS DateTime2), 11, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (12, 6, 11, CAST(N'2025-09-30T21:11:24.1918744' AS DateTime2), 12, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (13, 6, 12, CAST(N'2025-09-30T22:13:32.6132058' AS DateTime2), 13, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (14, 6, 13, CAST(N'2025-10-23T10:54:22.9805502' AS DateTime2), 14, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (15, 6, 14, CAST(N'2025-10-27T14:42:57.4188684' AS DateTime2), 15, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (16, 6, 15, CAST(N'2025-10-29T10:45:27.6689585' AS DateTime2), 16, NULL, NULL)
GO
INSERT [dbo].[Security_PMSUserWiseRole] ([UserId], [RoleId], [Id], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (17, 6, 16, CAST(N'2025-11-12T17:41:25.2485089' AS DateTime2), 17, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Security_PMSUserWiseRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Security_RefreshToken] ON 
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (1, 8, N'77luMsjAgSXGoFocCBb1SnSmDPvxK8ZgLncnm+qqlcS4WGVAFrMdWUvffnDF94S2SCRJtmL7on3UfQyu1Jac/w==', N'9e36a29b-9124-4a84-8725-e07fb55e2aae', 0, 1, CAST(N'2025-10-30T10:21:01.6008300' AS DateTime2), CAST(N'2025-11-06T10:21:01.5999769' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (2, 8, N'3TYDHm20aD2aWQfr+95GKt3dzb5zULdrFKqzqUIhj26wOwG6m+YF8jKAXwV92fgbBsnEIvPFMGkXCyvVwYXmtg==', N'a673dd9d-ffff-40b5-ab1d-f4e0374ed465', 0, 1, CAST(N'2025-10-30T10:22:36.2408944' AS DateTime2), CAST(N'2025-11-06T10:22:36.2408906' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (3, 8, N'hRSdtOaT5nS04MI+kLmUyjWNPJ8gBuUl+lU+wgE52AUyZPnL3Kx2R5TrUoqdiabassd4e4mR53PgLz9H2scjEA==', N'5fa484b2-48e7-429e-8a57-84712962d7ab', 0, 1, CAST(N'2025-10-30T14:52:54.4224165' AS DateTime2), CAST(N'2025-11-06T14:52:54.4224146' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (4, 8, N'jjGpaxaBJPjZlPnM+o2q9sk0UzMajP+uXoU5cjmHLZjbnJ41Lp63gYtna7/LamkJpM6tTlFl2Z0cPay7e3Xm2Q==', N'92e2cd4d-db0f-481c-93e5-5c855b746048', 1, 1, CAST(N'2025-10-30T14:53:30.5929027' AS DateTime2), CAST(N'2025-11-06T14:53:30.5929002' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (5, 8, N'7SFwcEIwzdYEsJV7QzR2ZD1tSjST7ukXYD+srDnSHFJc1iX4kk+IeMK6btEp8P/D5sRp7dEHz8a0FB78druduQ==', N'28022248-daf8-4882-8e87-07936b98c168', 0, 1, CAST(N'2025-10-30T15:03:03.5489093' AS DateTime2), CAST(N'2025-11-06T15:03:03.5485522' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (6, 8, N'NM/ihHXjFmei9bP/j3ud5qF4WjCJ5ZxMQUs+/KjpSpJbOEOMzcJyakPW7089fzriNOJsMLqLajq6moR3kMCRgg==', N'09094bd8-64a5-4781-ba65-18a31ee16139', 0, 1, CAST(N'2025-10-30T15:33:55.7148244' AS DateTime2), CAST(N'2025-11-06T15:33:55.7144137' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (7, 8, N'oiBm2SS6+NV0MxcZP+BcRlsHPlhm8UvRRtFaKVK7gni6nZmkWEnEMMo5Xp5keZ+tWn9Htm/5htIeuVRxVv88vw==', N'91080969-f368-4b81-9d52-bdf787860720', 0, 1, CAST(N'2025-10-30T15:34:04.3841993' AS DateTime2), CAST(N'2025-11-06T15:34:04.3841974' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (8, 8, N'RLv8KP3bAj56iWRkkw+ZE1AWTb+H1LsLjbXOpPgEaoNQxi0Ckip8e+4xYI7dBNanSwqEGRHy6rsxnWY7xgpMQg==', N'bebf5e50-1b77-41f4-a3e2-7a82cb809ac7', 0, 1, CAST(N'2025-10-30T15:36:42.1465556' AS DateTime2), CAST(N'2025-11-06T15:36:42.1460602' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (9, 8, N'Nu8hRSZesxoLo1GKQ2hjgSjMe7eRQF0fvq1J2onO4SfZ9I7cGHxgNkWgSSkmc8m81EPQm+xXZm4HimPQQgt/6Q==', N'0de026aa-6760-4c25-aabe-bbb5656a0a7d', 0, 1, CAST(N'2025-10-30T15:36:57.2523067' AS DateTime2), CAST(N'2025-11-06T15:36:57.2523036' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (10, 8, N'E79e3t+ySvk34E9e/DaZgmsBIOELkahNJhs/EAkTffQPAU1Tef/vGUygRr1LRCo1RLOb9SsmmTI/yHA+wuOhfQ==', N'b589acf9-21d9-403a-87ef-1548ba17d95b', 0, 1, CAST(N'2025-10-30T15:37:38.6674519' AS DateTime2), CAST(N'2025-11-06T15:37:38.6674499' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (11, 8, N'q8eLijfojqWnh1PHoyVjGpVKJ9hUSu5WTZ7kYbHO8gwIvAEKoJaRgV0eqQTSCymkt6BTqw/8C0hi1pbsFcfzjA==', N'a4b33fca-ccdc-42d8-bdcb-a925cd1a0a97', 0, 1, CAST(N'2025-10-30T15:44:16.5420697' AS DateTime2), CAST(N'2025-11-06T15:44:16.5417659' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (12, 8, N'SxDMrpgiy+ziKYRRqHpTpgsgukZIAeUPSW0fU8vTMvJvi5HakwTrN8N4nijS1XyVRJpGgcKYaxS6wnGqQInBfQ==', N'b1229902-d8e9-46ab-8c3d-4bf5008ab541', 0, 1, CAST(N'2025-10-30T15:44:20.8476157' AS DateTime2), CAST(N'2025-11-06T15:44:20.8476110' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (13, 8, N'4I+miq4CF3z+6DbMq4BTwOma97/L7ZwTvFr1SN0BLjW3Kn/nG/4Lo8F6iCS2hFL1SjDkKDRDfkA5IsvSaBwTlA==', N'5f06c566-5e50-45ac-9b3f-9006d8daf235', 0, 1, CAST(N'2025-10-30T15:45:30.2265605' AS DateTime2), CAST(N'2025-11-06T15:45:30.2265586' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (14, 8, N'oDpn0Diqh9SnjaHXtYKQyW7090DNpFh68xZ//GX8W7+mRurrxAfhOINvnOjndynxpERhmaNEMrJ/A+uagBKMXg==', N'cc9792ff-ff77-4d8c-8a6a-780fce8dadd8', 0, 1, CAST(N'2025-10-30T15:45:33.9339718' AS DateTime2), CAST(N'2025-11-06T15:45:33.9339700' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (15, 8, N'jCw5V3nPS5qLKw867MBOu+R1PGtbsSw9jDcCqS8OIyzK+OMQN4Ljr4XN2C9GTV52Fstx8fsBrLenlI7ennK1Pg==', N'ee459099-893d-40ca-a1b4-fbf6291b3585', 0, 1, CAST(N'2025-10-30T15:54:19.4499272' AS DateTime2), CAST(N'2025-11-06T15:54:19.4499232' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (16, 8, N'WU0pAF2EtoIwF76cFNbXYKZEoRUuxop8jMx8kE7MG+uqFBPToCGzd8rGhgNwRb+EbNRE2vdHwjZxyEzKHNqvow==', N'1df4ea1c-bf01-4ec7-8ae3-4fcc8952709d', 0, 1, CAST(N'2025-10-30T15:54:26.1594427' AS DateTime2), CAST(N'2025-11-06T15:54:26.1594413' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (17, 8, N'AVtYm4u7tvrt8qxc1ZEULJyF+DtVYbMyDl+4tesScHFyUUmzNjA8N6MTUZKmU/4JesgL9t9JjYdSuYec5GcZLA==', N'ffbbb871-c006-4b1f-b755-1482669efe45', 0, 1, CAST(N'2025-10-30T15:58:26.6791524' AS DateTime2), CAST(N'2025-11-06T15:58:26.6791492' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (18, 8, N'VZwy9uv5NU+mBdV7hZFlcwciyC3iWfRLgl1pIzbMuSraZm8g/AzG2neVqH51bCyQawm43Ap33cJj9RJjeUzkIw==', N'4de86864-0e25-4840-a9ad-1348716e8696', 0, 1, CAST(N'2025-10-30T15:58:31.8325393' AS DateTime2), CAST(N'2025-11-06T15:58:31.8325375' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (19, 8, N'CYx2XbkbY5agq5xGoEzHo5OPEHjWoG6sNAeK9j/acmJCzGCtLA8JDS25fsvkksSWn32JH0R+hFdEhfEvTLr4TA==', N'08a0a2e8-b47c-46ba-8cd3-0d074a7e8f6f', 0, 1, CAST(N'2025-10-30T16:12:43.7375299' AS DateTime2), CAST(N'2025-11-06T16:12:43.7375262' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (20, 8, N'j4oKNySgkX4J33kcLluBRyF9WxkpaEJGaCLvtth09AaZoL0dLuF+bsQiZY8qK/i2/xsY6FVGgFk9JqMJrRnyPw==', N'a257cb21-2299-4fbc-86e3-5f62b8d2871b', 0, 1, CAST(N'2025-10-30T16:12:47.5962591' AS DateTime2), CAST(N'2025-11-06T16:12:47.5962557' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (21, 8, N'BI7TI3PWWfU9GNCWvkpmUrWxorz+ltHtOp821duxbJQdZEDkq9gswZAZPpTdns2+ixAQurBXR5yY47NHerOZhA==', N'3dcdee05-cb07-4a44-b6ca-d162c17ec899', 0, 1, CAST(N'2025-10-30T16:16:05.8190885' AS DateTime2), CAST(N'2025-11-06T16:16:05.8190849' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (22, 8, N'BSLRAGO40+xYYDDePBDcx+yf8SIIH22gTJcmXLqTB8CvgKuZ5pLOjqlRrTWuevzhpML2s+n1r+R68FC7UsTODw==', N'681d0c3c-1012-4b8f-9b03-09d063211b3d', 0, 1, CAST(N'2025-10-30T16:16:09.3373320' AS DateTime2), CAST(N'2025-11-06T16:16:09.3373295' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (23, 8, N'Cdmv4vAEF8Svg1Z+A0/5goabr3YgO8bh6G4qSrpWOnjp+ICVhl3vamn825mW9hCOsIZNJBMURjeZuM9ndmMFuw==', N'03ad2397-13ac-4830-a2ae-9346cf6b1ca7', 0, 1, CAST(N'2025-10-30T16:16:51.6647361' AS DateTime2), CAST(N'2025-11-06T16:16:51.6647331' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (24, 8, N'i+31CZFzQZzdIkCv+mC+WNUhk2KhW5msNIUT1PbY66+h2GJxOGZr0BBnW7M98G/eoUgOmPDmmEmzMFEwFfE+kg==', N'f0bd14ce-2425-4ed5-aea6-57bf5ab0ed28', 0, 1, CAST(N'2025-10-30T16:17:06.0982762' AS DateTime2), CAST(N'2025-11-06T16:17:06.0982724' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (25, 8, N'4SMfGTPItOa/WFXpcIoGHEqCKVAwpbTvV4Ip8Wn32AwtmPys/lp5p74olPLcS8PVw1LE7gclQdl5xgfI1A59JA==', N'f77e8af0-6f7a-4801-b0eb-31f9a613a936', 0, 1, CAST(N'2025-10-30T16:18:44.2701168' AS DateTime2), CAST(N'2025-11-06T16:18:44.2701143' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (26, 8, N'pu4OHD0iFsKFqQD+R5y6OT6jtB0SzdyfwxccOTEIBe5Rrn7Di8S9Fy7EC4xi2ALuF2IW0/zkzSPeb2a5LemiYg==', N'4e999042-0449-47eb-94da-2b8d7ef8d014', 0, 1, CAST(N'2025-10-30T16:18:47.5944118' AS DateTime2), CAST(N'2025-11-06T16:18:47.5944099' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (27, 8, N'GzFET6T7CVRbF+6dGgx0Igvlf0LGg/StROQgXHspTPhynUTx1OpajPQVZIXlLzoV2VAJqkYBz88/AXA4jHvXbA==', N'b49ac626-3ac6-46af-b93f-0c3ca26e0a7b', 0, 1, CAST(N'2025-10-30T16:21:31.5357364' AS DateTime2), CAST(N'2025-11-06T16:21:31.5357340' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (28, 8, N'bOR7ixxevjX8ZEPNPjMHeYcNXfPLTunfL8Jw6dB/xuc6RNHtfPd9a9zpsNoB9DDZuZ3zqMialPheFe7PRPyw7g==', N'41ef32a1-197e-481d-9c0e-4a5919770ce9', 0, 1, CAST(N'2025-10-30T16:21:35.0680266' AS DateTime2), CAST(N'2025-11-06T16:21:35.0680243' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (29, 8, N'OWpd4uSKq/kADa9ulg4GNk0fmt40hinCKDqoEFAh6jfE6vwtfKoIskbsZAfJHeOgmJf0g4cvZjPeEf2SgQfWyA==', N'92e27b48-12b4-4279-8dcd-782732865b56', 0, 1, CAST(N'2025-10-30T16:22:05.2249040' AS DateTime2), CAST(N'2025-11-06T16:22:05.2249011' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (30, 8, N'dYiNnEK1z0fIa0vdZsuKzsDjeuIN92fGJKE2O/8H7WgAYpL4fFJPOtaBoCJVEeysgVykPiZ/dweY12AlHmZNIA==', N'eecda659-c0c9-4cf9-8b65-c9672c8a8ea5', 0, 1, CAST(N'2025-10-30T16:22:11.5925262' AS DateTime2), CAST(N'2025-11-06T16:22:11.5925241' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (31, 8, N'HtTMuJNy0wS7a5D9/muhVcDRvXhWgJbWS/eNTS4/UMG2kUdaI6zELseYxft0V5upuSQKJIKunXaKMjUY8D+dCg==', N'08026967-ec24-40e4-ab15-60bf72152496', 0, 1, CAST(N'2025-10-30T16:22:25.9308600' AS DateTime2), CAST(N'2025-11-06T16:22:25.9308570' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (32, 8, N'L5giKvVKv5bc2K82pr/jlxUz8FH59r3/eONYOzkGobbtkE4f76J82gxTf1KSws+aUusYDrb9f6ghJNi3zmSFsA==', N'cbdf0769-db6c-4b61-8fff-d4b03edac296', 0, 1, CAST(N'2025-10-30T16:22:36.1274775' AS DateTime2), CAST(N'2025-11-06T16:22:36.1274759' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (33, 8, N'fJG6br52PGEfs3rw9pPoCIabV27HxSyHub5lmB5MDh35G/LvUmI6CkBJTp//FqPRHu7hLAGYyLWbhRas8J6cyw==', N'6a599037-5d1e-441c-809c-fc87e0d4f13b', 0, 1, CAST(N'2025-10-30T16:22:49.7670228' AS DateTime2), CAST(N'2025-11-06T16:22:49.7670212' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (34, 8, N'F6m5N13ch3Tizdeo4bq7vSpt+iBbHe8BKrYzjacFrN6RKofQOvs/m1ZXJoqild/BBvtIvjSVh5/QG2A/jrh1Cg==', N'17343a7a-e05b-4269-a4cc-334839750b02', 0, 1, CAST(N'2025-10-30T16:22:58.8283116' AS DateTime2), CAST(N'2025-11-06T16:22:58.8283086' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (35, 8, N'Hc4jhixfyd5P66+POu0agiGoOFRGFRZKyeUY2a6YlM67H/3uVswVZE984sfObiTEskWBbuEN8LiIRYH5FMmUsg==', N'57bd1a63-cac1-4828-a2f2-90dacd6f0185', 0, 1, CAST(N'2025-10-30T16:23:12.1476419' AS DateTime2), CAST(N'2025-11-06T16:23:12.1476394' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (36, 8, N'RoJsKtPl+5/Gzg+3irO0jmgATvrQf/X1eNg9GlD3sdLNARmw9yW8zz3KZVABht2bCVNnf1WCB3VWr1X+8aNI0w==', N'83697585-68be-4f44-822d-e4a79865a632', 0, 1, CAST(N'2025-10-30T16:23:47.2033691' AS DateTime2), CAST(N'2025-11-06T16:23:47.2033670' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (37, 8, N'cAEhusdSEN8tuYrMzUH2FlOmeK9eOc3599D0m00sKY3bvvaJ+E/Awxzd0AG7IL0De3e70mvL/RG7gSqaeG0hUA==', N'fe7cecac-e13e-43fe-a7d2-36fbf4640bc7', 0, 1, CAST(N'2025-10-30T16:23:55.9160781' AS DateTime2), CAST(N'2025-11-06T16:23:55.9160766' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (38, 8, N'gSnb2rXiICV0UYPqYgyzPw0Wjx0gsH3oJde0326Zs+pKoChio50IKP8K+6WY6jYXBFWO+1dcRAIkGFfAzW/XMg==', N'2139275a-a97f-45bd-94c3-70f4a475d9af', 0, 1, CAST(N'2025-10-30T16:24:12.2814622' AS DateTime2), CAST(N'2025-11-06T16:24:12.2814604' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (39, 8, N'IA8bpWhnYNDeNlcvAFz/Qi2lfLiC5NVCYIh56z1P/ATV9zMYlpDd2mUk65753sthQZzZsi+ZaANAv1S5xe+nCA==', N'dd9e04a4-c381-4cc3-9d73-d6707201632a', 0, 1, CAST(N'2025-10-30T16:27:06.1017397' AS DateTime2), CAST(N'2025-11-06T16:27:06.1017383' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (40, 8, N'DgpUAb2RrHQFXdflL3DqJnRoAsOVjadL3Zs2W1oDzuvyYPL+bqninfYcHL6AYq7us/6g5R77R8bGs7seqAGynQ==', N'14bdbe5b-cd3f-415c-b44f-8c354b102410', 0, 1, CAST(N'2025-10-30T16:27:28.6594762' AS DateTime2), CAST(N'2025-11-06T16:27:28.6594729' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (41, 8, N'wiWV9EvdfCtyGYryBZ62MftkbXv2YKGh+CwbcVjUiwKaVxXmSKPQ4coWAAZOSik8JBVY1MQuvjnMZXW7ZMYHhw==', N'f453004a-dfd8-4299-a03a-a3d82b2fee5f', 0, 1, CAST(N'2025-10-30T16:27:45.7843910' AS DateTime2), CAST(N'2025-11-06T16:27:45.7843881' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (42, 8, N'xBbMCdjN2JyekVSnUIVdT7h23+rpI25aHuzuL2hCwAmyilTJevEvlPtEX4ep8IEI+5sj54NRw6rsX6GkzxJcyQ==', N'251ed54d-8c41-4290-86ae-4df2303f1fa7', 0, 1, CAST(N'2025-10-30T16:27:56.8310876' AS DateTime2), CAST(N'2025-11-06T16:27:56.8310857' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (43, 8, N'ez+wA4THr9j9JqhwHLvTVRMiJLgjZH70otVyOdwOmuH2TlIBv/nbZ7Sr8Jsw26RMRtolppI5mcAgzBWH6jhrcg==', N'5917b60b-6b1c-40ab-9b26-574abb53f8ed', 0, 1, CAST(N'2025-10-30T16:28:05.9332499' AS DateTime2), CAST(N'2025-11-06T16:28:05.9332472' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (44, 8, N'MiLNMtCRs/jLhzNDT2G5N5/S4sSPi1MIJBxvXTkWYFvbbNdzcNKCEyd9jbaGNtqAdWMZcje5vi81F3InNy0l8A==', N'0847b138-ac27-4355-93fe-fdad7886b1e6', 0, 1, CAST(N'2025-10-30T16:28:14.2405937' AS DateTime2), CAST(N'2025-11-06T16:28:14.2405925' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (45, 8, N'Ve+Xs+3PQ9Ls5nbmZP4Z/KlpnsTle++wBm4fDTAFjzqcfj5mKt6fdpxu+/IVh6XOEJe1xMrc+Uz28DQNM4NTkA==', N'0a66122e-2683-48ae-83da-cc32b7ce4136', 0, 1, CAST(N'2025-10-30T16:28:20.9063598' AS DateTime2), CAST(N'2025-11-06T16:28:20.9063575' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (46, 8, N'TbEEJ0oRWUxwNkCw8WXn3LM0lRYviTBdZ63GYjeXMSMa3NiJXulUQVvU7NrrwUuZrnEBDdxttsawqXp/1gVNSg==', N'1f398aa5-bf06-4ff6-bad7-7de1eab81f26', 0, 1, CAST(N'2025-10-30T16:28:28.0282575' AS DateTime2), CAST(N'2025-11-06T16:28:28.0282558' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (47, 8, N'W1SZ5DbSACpImbmRxsObHQj8G0zaULk4nV8qRYxa1JbrCBFne97FIB7WljqNWL1aebdR+wlShby67dwMbkyF/A==', N'612e4daf-e315-421a-be56-19b8e5b1c4a6', 0, 1, CAST(N'2025-10-30T16:32:31.2695606' AS DateTime2), CAST(N'2025-11-06T16:32:31.2695592' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (48, 8, N'FkDlsB3+81uVnuuh+35XP7JjoVEjQMcc0l5N1k682w7KRcF1X/Tz7K7zXeCTtOWftYIhe63dGKw2PiVLQPdJpg==', N'0ad63309-40c4-421f-87d9-dc5dfddf171d', 0, 1, CAST(N'2025-10-30T16:32:49.4719491' AS DateTime2), CAST(N'2025-11-06T16:32:49.4719468' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (49, 8, N'/zJ/5tjxfT5Q3j5W02yzvbMdJKfjTQ/no3KePUHFML+HWvUYOfv2G2sTKv8uZR69lQU9DggAJGnq6UWMrNmvZg==', N'f255e221-7519-4706-9ceb-b1c12e666e41', 0, 1, CAST(N'2025-10-30T16:33:32.9113232' AS DateTime2), CAST(N'2025-11-06T16:33:32.9113219' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (50, 8, N'3sPD5dRcA9mulOh6YwFZNEWBTeooTyYnk/9L+6YQQsqgLWI2Rx4LAkeVxv0zAss5y/aVnq8tOU0STLWhCBPZ0g==', N'982cfb00-db51-4e0e-b708-6408d25b3f23', 0, 1, CAST(N'2025-10-30T16:33:49.4200967' AS DateTime2), CAST(N'2025-11-06T16:33:49.4200928' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (51, 8, N'p0WPMapo7B2tFy74LbDfKhG6UgCZyg47piAEW5Z7YbG9DCx02n7zB3tDT8sn2J1iSFWUsypJn1FZRkMHdeJhhw==', N'c82bc4f6-9425-4cf7-8ee0-8abb061be8cd', 0, 1, CAST(N'2025-10-30T16:37:02.4131629' AS DateTime2), CAST(N'2025-11-06T16:37:02.4131611' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (52, 8, N'a6HGxgJXsspOYSa1dGjpGgnevQ069sG+BbZPTGQ8TF+bCT5Usq8dXfwqhoQHJvEVCOR+2ZSnKa0rZoW5egZw+g==', N'490dfffb-dcb5-468a-9a1c-e1df49fa9128', 0, 1, CAST(N'2025-10-30T16:37:05.9679527' AS DateTime2), CAST(N'2025-11-06T16:37:05.9679515' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (53, 8, N'6ZZQi86yUALGLzh6KqeKOZkUYtN9e2Xvp8bg+AAAq8tfP9SPsYbcUkt+BzMuK7MQr3XbGJbOpPcJ/yohWUzz2g==', N'803038ea-f00b-4d04-91ad-c01127ee04aa', 0, 1, CAST(N'2025-10-30T16:39:15.7904367' AS DateTime2), CAST(N'2025-11-06T16:39:15.7904352' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (54, 8, N'8phpTNa47TqKIA60dbtsSGi82W8Z9LC0LsF9Oi85juN7FNp1Z/jCWY5bHykhJb/XdYacOSUsTPjcAlzU4m7gbw==', N'0a112083-6325-4b4a-81be-9d561a3e98a9', 0, 1, CAST(N'2025-10-30T16:42:54.1058392' AS DateTime2), CAST(N'2025-11-06T16:42:54.1058380' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (55, 8, N'BsmzYNGClKHkWJSoU7uIM1J5efT1/acajHkk7kJqeFCGkSnkWMkjIMA5wxbqbUQBghs+mogxVspS4KsF9rTYLw==', N'320b6a20-db5a-4a83-ba84-3f10ea697c2c', 0, 1, CAST(N'2025-10-30T16:42:58.1181761' AS DateTime2), CAST(N'2025-11-06T16:42:58.1181748' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (56, 8, N'8ap3pUXSL4JcM6wSgw6/w9Rlr/6qLo18TWCbeHn5nBtnyOC4/QjqWmQUIxEEVr0sn6BCJeHNsG0kL30bQKQC8A==', N'2721a7a6-a52b-406c-ad06-351e0ea7a598', 0, 1, CAST(N'2025-10-30T16:43:18.5300476' AS DateTime2), CAST(N'2025-11-06T16:43:18.5300463' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (57, 8, N'hePhrT8QUe46UkWAOqsPmb5h42YYkMtwSfu6jXVyH1lpqLlbnkhbqAFeTsZ2IhGYWwC4PIJssY4hhN3kudTwYg==', N'1cc8738f-ab9f-4480-8b41-2c11eca4ced7', 0, 1, CAST(N'2025-10-30T16:43:26.2352028' AS DateTime2), CAST(N'2025-11-06T16:43:26.2351993' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (58, 8, N'xmTsmPeu/VWSa7xzUGcZpJtwvIv8WEmD10Bap+M49AOpI9aB7K1OXRpQT2fQcrMikb8GsHHSO4yslN6CSb11Fg==', N'6134180b-bd0a-4075-9b58-a69ce47967ab', 0, 1, CAST(N'2025-10-30T16:43:44.1555003' AS DateTime2), CAST(N'2025-11-06T16:43:44.1554989' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (59, 8, N'wEKyHtT3zR4XD3ypt74FW1xXhTthBd9A1C2qUwLoIjQNTAEOcoQf4KwWublrYlaolHWucXU/Ulsnzxo8f7Kntg==', N'0e32cdca-b7d0-4b8a-a13d-b674c298aaa7', 0, 1, CAST(N'2025-10-30T16:43:57.6036396' AS DateTime2), CAST(N'2025-11-06T16:43:57.6036380' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (60, 8, N'FsCvUoyn1G1jbiHNfaFl0qEBG6a/6wW3YMLmAeK6pwXG84QIeOjxibfQlDC7HPli+Wsedg+hDTM3zcjZcUg67A==', N'adeaa762-3675-4415-8451-ec9bcfa4fc7b', 0, 1, CAST(N'2025-10-30T16:46:03.4681077' AS DateTime2), CAST(N'2025-11-06T16:46:03.4681053' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (61, 8, N'hVjRFBeoXq+LfpXcJClGa+Vl9J/gT3SyISgBzGCkK3AQ6ts5Ugs5/jQ39mvhqdyZfvFOyGdym7tG2N6gFNYGCg==', N'70f71e78-2d64-4787-bdca-e7eda0bc30ef', 0, 1, CAST(N'2025-10-30T16:46:10.0201665' AS DateTime2), CAST(N'2025-11-06T16:46:10.0201649' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (62, 8, N'cu601D88JLvINjtegioJhas/M2jMenXvMDW/V3yFBU/etQy6VrYonPY5UeNTh+NnJILWGiOVM6y85YpgUa9D+A==', N'd7f5c5f0-4ac1-4b43-ab6d-a4fad06cb078', 0, 1, CAST(N'2025-10-30T16:47:33.3080365' AS DateTime2), CAST(N'2025-11-06T16:47:33.3080349' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (63, 8, N'AN0fpBKqYdkqSovr8Kl0njNHaT8lM0vkv42Ho/fhgLX0YtAvqIT2xrsEWnLiJelYN+OFS2GfpeeolSIx/d4Nlg==', N'18ced058-6837-4539-973c-99a2f696eb4f', 0, 1, CAST(N'2025-10-30T16:47:38.8032246' AS DateTime2), CAST(N'2025-11-06T16:47:38.8032210' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (64, 8, N'm646zA3/UdElQfjQlsmwFjkmHdDNkp3rzIMuH5iSd7FSGWKrW5bPa868aKF5Mxs4NOqOrD2oGJqJRIqReEiZXg==', N'b8c73c66-3819-4f17-b023-687e9386048e', 0, 1, CAST(N'2025-10-30T16:49:36.7646318' AS DateTime2), CAST(N'2025-11-06T16:49:36.7646298' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (65, 8, N'WjfQ6Db9paRvpkdiPuY9yJ22Ybk5UAvHWBVwoJY+zasT4MPlE3NyjgbqK42Xq/OU4wAvWutIngU/NSidXZQkWg==', N'2c839ba0-7f36-4e75-8af8-94043f24eba8', 0, 1, CAST(N'2025-10-30T16:50:09.8420644' AS DateTime2), CAST(N'2025-11-06T16:50:09.8420622' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (66, 8, N'FAvl5meZMXzRutGRgXXfU4hNQsI8xDnEc1ZNMLi1oaoPPyb7VtTHqghosWSVHHPOHCHVn8kXIUIuLaCL2rSsoQ==', N'2f943d6e-09d8-4cbd-8535-f54f9549f0b4', 0, 1, CAST(N'2025-10-30T16:52:41.4061569' AS DateTime2), CAST(N'2025-11-06T16:52:41.4061552' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (67, 8, N'ApaNt0QoWz1rehArhZylbAnbgPvWzZROyGya5poEdcSBdBEmjqNgYLgMmkHJAh45/5yEFGzpOa+u08b+RVQfgg==', N'ee15562f-b5f5-42c5-82f2-1d89983b3767', 0, 1, CAST(N'2025-10-30T16:52:57.3515510' AS DateTime2), CAST(N'2025-11-06T16:52:57.3515498' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (68, 8, N'hFUARn6IhG3ItASYwAIW+riPQwjZNqTbSAiKAShvEaZzJTLXO2NLtlNHnR6Wu+bgOBjFtSqdQSGURDgeqmu+1A==', N'fbf58e88-b977-4473-8a7a-0882db7301b3', 0, 1, CAST(N'2025-10-30T16:54:44.9069713' AS DateTime2), CAST(N'2025-11-06T16:54:44.9069700' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (69, 8, N'56r4hGnuD76Lb3WYvgKJeXmj+fAluHL3cDcTNuURWaT+yQTzsIu44egNUQKBm/A5b3FgE3//nLIiN/zlUEpwnQ==', N'c6a0fc80-2763-4402-8797-4ebdb371567f', 0, 1, CAST(N'2025-10-30T16:54:51.8636867' AS DateTime2), CAST(N'2025-11-06T16:54:51.8636849' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (70, 8, N'X7U9bJl32Cxr06RVlr2l78ckWPTUeacmOZ95NtxTmQs7Ib33YD72JGwLJisavdSVbLZBD8ppP7fuN/1lMtNgfw==', N'4fd58362-72a2-48f9-a9ce-ab206447f3a7', 0, 1, CAST(N'2025-10-30T17:01:48.5047538' AS DateTime2), CAST(N'2025-11-06T17:01:48.5047512' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (71, 8, N'94991EeFRKq7z9WnJCdf0ps48itXRCyeCdIkv5RutAhTj9S6NVxTB5/snHx4RQ4LNLoj9wySfHUp+s3TSG+Zig==', N'7672744e-d011-4d1e-9db3-4cf0dcd766c0', 0, 1, CAST(N'2025-10-30T17:01:53.8751671' AS DateTime2), CAST(N'2025-11-06T17:01:53.8751650' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (72, 8, N'Dx04rllDtL3daYXYFvCWSQqM8FFhYLoOA4BvAkFcZE9SJB2BCw/3WYusl9p0LOKNjLxharTXMlNVtln1wby0OQ==', N'ad336330-1049-4020-94a7-e1ef11045849', 0, 1, CAST(N'2025-10-30T17:05:08.0572038' AS DateTime2), CAST(N'2025-11-06T17:05:08.0572025' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (73, 8, N'wEQewzU380HYU0yV2i/8/a3Yh1YS0QYXrdwlNyNFotlilg6YpoNjWSNe0IT4MQVCwxK5mhNURHpx6hIf/DAdGw==', N'5cd54c10-4ffc-4bef-948f-6e3bfbf54e7b', 0, 1, CAST(N'2025-10-30T17:05:24.7656509' AS DateTime2), CAST(N'2025-11-06T17:05:24.7656493' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (74, 8, N'Asq86zOn7+pjlYniPcj6Yo3pxteDh+k5CIc2D9IX9eiczLeWId/wwud9Pujj/AQcHu1ePpoiAQB2GT984CkKnw==', N'955abd20-8b32-40b6-bf2a-a5d22925e716', 0, 1, CAST(N'2025-10-30T17:06:05.6827689' AS DateTime2), CAST(N'2025-11-06T17:06:05.6827672' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (75, 8, N'Dw6Zxu2TrVUr6vDJnvGxQpgOcc8VEXKg+/5Xfw4Ph3TGB7CvOTb8w9uFD+fKTYxmcOI8P4FPj9aRSnyUPqzlrg==', N'f0840124-772a-47b4-b899-8c8ecc3aed44', 0, 1, CAST(N'2025-10-30T17:06:11.9755153' AS DateTime2), CAST(N'2025-11-06T17:06:11.9755135' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (76, 8, N'Pnuq+c+BkQ4uFMD+J4WOuiM455/NdqocoAuYEuXT0dJXkJjQa8E5x/NIbRyFyF221ORutpYG2zxgQp1boVdQOQ==', N'19ec9cac-248a-484c-b538-1b19f1d2bea0', 0, 1, CAST(N'2025-10-30T17:11:07.7274832' AS DateTime2), CAST(N'2025-11-06T17:11:07.7274813' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (77, 8, N'xB3Q53fprabq0npYTX6zS96at5+ZEd6T6qRVUZ60/97W114HVor4SWtrlNoaBBA7FAS7XjaRi0JX6aJ+D3PR+A==', N'55514a80-d84a-4607-9073-9534d9a81701', 0, 1, CAST(N'2025-10-30T17:11:27.4628825' AS DateTime2), CAST(N'2025-11-06T17:11:27.4628804' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (78, 8, N'fiNhH1jQc7/uLC6T9Xf82I88E6OIf+bveJve2xNsgOtSThQNrkS2ie0Szbn2FxR6aMjgWLrRhjjzVU7wK6AP1A==', N'd4cd0493-2c89-4ee8-bb2a-41a5786d2453', 0, 1, CAST(N'2025-10-30T17:18:39.4382007' AS DateTime2), CAST(N'2025-10-31T17:18:39.4377516' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (79, 8, N'/cWEjaquxuGF4HvQY7Tf+awqd3CAmluVNtx8o9pzLdAX/PUwK9T8pP8zygQOch8YKqNcjdaBAF4judr3YbgjmQ==', N'8b37ef4f-c8ab-43f9-b365-00c06bf8bd1d', 0, 1, CAST(N'2025-10-30T17:18:44.0289292' AS DateTime2), CAST(N'2025-10-31T17:18:44.0289259' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (80, 8, N'At6yKkgnCqsg7fa+x12cCqrG1m0nMgCFfvvl8yHtCFbxo87tSB9ZeIPlem6gibA/GEyLEQiD2Vhci4qRyioL0g==', N'c3ad2ebf-f96e-4aa2-bb9e-8d481eeb2d15', 0, 1, CAST(N'2025-10-30T17:26:15.6679184' AS DateTime2), CAST(N'2025-10-31T17:26:15.6679156' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (81, 8, N'2BgAQ8bAVDCTPltRqKbb+qpDXTgJK4q5+xKo+JSwufjE45gsfpVVOcgVtlRHRb4SNorRGK76WluedHM+UCZ7fQ==', N'8c1d132d-81fa-48ad-b6d2-596dc2dc4df7', 0, 1, CAST(N'2025-10-30T17:26:22.4056931' AS DateTime2), CAST(N'2025-10-31T17:26:22.4056905' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (82, 8, N'vrYM1Lgn7cKDqYrKBiVwlHKZ6eHEOsRuEwxLooNjkPWRb+UvikgH4CtxISPABv/HSwSSFCxo27ec8lKEwHpZIg==', N'd7eca8f4-65ab-4cb8-8078-6b6f444bc076', 0, 1, CAST(N'2025-10-30T17:29:05.7771132' AS DateTime2), CAST(N'2025-10-31T17:29:05.7771106' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (83, 8, N'40gpUFE/HCNdo/6fYhBE6MR3y93yGasAI1XP7U3/OCaU3VdgJbutX6w8IrIlC6CdKjF0Vz0ALmdk82vK3+d9yg==', N'00246bb4-21af-4d7a-93d2-25f4a955740e', 0, 1, CAST(N'2025-10-30T17:29:11.1305896' AS DateTime2), CAST(N'2025-10-31T17:29:11.1305876' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (84, 8, N'H3J30lVke/qGk4H+5Sl+wR0G8nQPFnMKxOx9Zcz+LB1PqIapSAN3NPlV5Znltzg+eoDqVXN2SAM3xJmaQZT6eg==', N'2972212a-fde2-448f-954a-33f08abbcdca', 0, 1, CAST(N'2025-10-30T17:30:39.8270182' AS DateTime2), CAST(N'2025-10-31T17:30:39.8270158' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (85, 8, N'0S0Yr+RwcHQoq+3Hp4rH8wRQEm4Ppkj/Tc7/h8H16ZOUhoigXRQSXiR9McoeZnl2L9BUu8svbymg2j6l9EQg4w==', N'36460e57-3599-468d-be8f-d6ed89fa6883', 0, 1, CAST(N'2025-10-30T17:30:45.9409760' AS DateTime2), CAST(N'2025-10-31T17:30:45.9409722' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (86, 8, N'LyoYpdRw3yV01JP3QVt0fPoR5YpxJHkh84ZL+EL6o5o+h+1ObW0M9xQFJMOxPGK+uoIawG00k7AgTSQcO/5LnA==', N'1eb4ac7b-e95c-4a8d-b4e0-48f8e305eec5', 0, 1, CAST(N'2025-10-30T17:31:32.0242237' AS DateTime2), CAST(N'2025-10-31T17:31:32.0242205' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (87, 8, N'jPUqux2Eo3z1K22uLr07f9EAkW65APosdw4e7rFEA2FYJ5btUpQv0GcuUy+1EHDbVjrBEFcIVA09/0ju9+v5sQ==', N'c28b4eb2-83c6-4d8d-bdc4-2715eb518278', 0, 1, CAST(N'2025-10-30T17:31:42.9888010' AS DateTime2), CAST(N'2025-10-31T17:31:42.9887992' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (88, 8, N'Asz/V3pej5dEnP/WjZH5Exok6FZVxZYm+UbA8gBAiUkjAubBEx5hN6YeGlIlpFdrooescIsXnH3bDl06UPSF7Q==', N'7dc8238a-fb43-409f-bbaa-99fbd80a7af6', 0, 1, CAST(N'2025-10-31T09:55:02.0978539' AS DateTime2), CAST(N'2025-11-01T09:55:02.0974108' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (89, 8, N'/Xq/Pi/uHXbj3MThPyIvGrtAKJWdTj6wM+yUrZFZO/HG07UiCqlCH7FD+SD5stTF/X6yUpG5/6VDVVY18AQVew==', N'ed54d4ea-0a92-4d44-a85f-3ca7c9d06cbb', 0, 1, CAST(N'2025-10-31T09:55:08.6775091' AS DateTime2), CAST(N'2025-11-01T09:55:08.6775068' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (90, 8, N'n0dtWqP+i7BrNO8ZZt82fNgFzLKYvGjf2cGCtOZXol3yf7rsTPQeuTKtvRAsqxQolDc3je1zrnCtn0IuOXlMjQ==', N'c0b63adb-f343-4d93-a9ca-d0a5b815b54f', 0, 1, CAST(N'2025-10-31T10:14:11.1313302' AS DateTime2), CAST(N'2025-11-01T10:14:11.1310645' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (91, 8, N'V0jlyDg2CfxgSkW1UkliChp2v0oz048dB/43tRcC/glVMHvvT1QeLO7QDveO9eWQcHpWWlsk7HKb33sTLOh0Mg==', N'effbe73f-5558-42bb-8110-be69d7eab871', 0, 1, CAST(N'2025-10-31T10:14:13.9809235' AS DateTime2), CAST(N'2025-11-01T10:14:13.9809202' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (92, 8, N'w5228jwS/hOqcgZLjLAJnhc3V4ZwtKOt95SLozBr+IkqOIf4p5aF0lQAsSwuHmDFWwopv+CLUKfv1HlCpKnsDg==', N'ce56ae0a-6f55-43c1-abfe-5b3dca149196', 0, 1, CAST(N'2025-10-31T10:14:27.8148210' AS DateTime2), CAST(N'2025-11-01T10:14:27.8148188' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (93, 8, N'Wxd67qLJRmyjt3oFQ6UxlO9FHAG8zEFx5NGmyZCLPFVK+N1GrUn0QYe4sVexGNiBzpHVeN8V6sOVD7rgvG6J2w==', N'b6f46112-c40d-4409-8eb1-ab00ed4207a3', 0, 1, CAST(N'2025-10-31T10:14:35.2946966' AS DateTime2), CAST(N'2025-11-01T10:14:35.2946936' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (94, 8, N'r02XhWJNmA/HlhfHJXUTFqyl+6ogwTtxqo6i/qTwLOWb4Y62FkCW0irIAC/fZifPGvqD/PTy9IzMEXZSXe0K2A==', N'43dcdac7-18db-4017-a2cb-67fd8fbdd30c', 0, 1, CAST(N'2025-10-31T10:24:37.3805392' AS DateTime2), CAST(N'2025-11-01T10:24:37.3800838' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (95, 8, N'9j8PJYV5lJ8+TFgNpOsNp3i8vwI0lBx47l/pPc9/n1QtboL81BWMAmHyLcUyXlYmHVkMUNzCsnzWrxmvNtRiuQ==', N'a82236d4-227d-42b0-a3e0-948bd9128751', 0, 1, CAST(N'2025-10-31T10:24:42.3912791' AS DateTime2), CAST(N'2025-11-01T10:24:42.3912770' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (96, 8, N'F31PeoSHZt8Di8zvZdsn8GDT8QsYDySNzO0Ye8VxZ8mzHFyJQXKMLPzhrYR2SAosanQeTCK7FnJPVVpn9mkUVA==', N'd394f558-2467-4533-a9de-19f771b72a94', 0, 1, CAST(N'2025-10-31T10:31:34.2988986' AS DateTime2), CAST(N'2025-11-01T10:31:34.2983431' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (97, 8, N'WFgfkb5qzr0xk/4ywN2TjAdk83b2LbUeJTT+ISp7Z6lUdBeTW/Iny8Xj/Mu7BNRoT0Eqdt3sxJI7xxBYAD0Asg==', N'3e519115-2467-4e11-aeb6-57502265bf3e', 0, 1, CAST(N'2025-10-31T10:31:43.4681844' AS DateTime2), CAST(N'2025-11-01T10:31:43.4681770' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (98, 8, N'CWgUT/4UNWDnOT/JMKFrTXD4tAA0MCXmqlYhRmxz7+rP0Gn3g9iaPbqrH7gca4OsBXZV/Q+NelYO19K0cva2ww==', N'40cad4fd-bab3-403a-8f5d-a0d0bde21ad4', 0, 1, CAST(N'2025-10-31T10:40:21.9437942' AS DateTime2), CAST(N'2025-11-01T10:40:21.9431910' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (99, 8, N'qeQAi7UUWxQ52wkNNtr1Y2z4aJbOUlVkyflKOTItBKydhZbZ39tk8D28KIwLLXLwlY82TceQ0JG9OZAGMFC8DQ==', N'f1ef8dd6-078b-41e3-88b4-6cfbaa891e58', 0, 1, CAST(N'2025-10-31T10:40:27.2567892' AS DateTime2), CAST(N'2025-11-01T10:40:27.2567860' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (100, 8, N'v1E//4P/Uqj5xhqIJLwK6I2Xne9EDLhsKqVWUygYZxyBZ7tR2YucyzEfoNvrp5XniVUKkzwWdk6d5sw9ZEkzlw==', N'0d040713-7b57-4ac3-a580-2ea1ffcfff62', 0, 1, CAST(N'2025-10-31T10:51:39.4418724' AS DateTime2), CAST(N'2025-11-01T10:51:39.4412445' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (101, 8, N'XDgX5Ia4iiVmg+1t6OOQlGeAO+a2wloDWwwsYYkMKv2j/2frHC+spP7ivPmW6N1NV+ymo2FSuvvKp2nJnTJQ6A==', N'52fa5d4f-c631-4fc6-992c-24595921b958', 0, 1, CAST(N'2025-10-31T10:51:43.7252803' AS DateTime2), CAST(N'2025-11-01T10:51:43.7252780' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (102, 8, N'UdP0ExakA/jb0Uwrp44JxVcaNYjpuOI1r4Sw5bn6XhACWJ/Wq/9POa5+UTFJXo7qBuOmFfaYpF9kXV6Wa5nAUQ==', N'b4a63536-9124-4622-ad64-bd78f680257b', 0, 1, CAST(N'2025-10-31T10:52:28.5016671' AS DateTime2), CAST(N'2025-11-01T10:52:28.5016648' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (103, 8, N'Ef/EtzaioMeUO8T2p8l6lcvBth3FyVDVsKYjO3KwJDixhDGfp2OhzfE4CBh1EhDsdeFPxl2fXu6lmPS0jFkBbA==', N'e26c7091-c114-4728-96e9-7eff97d68331', 1, 1, CAST(N'2025-10-31T10:52:35.1943858' AS DateTime2), CAST(N'2025-11-01T10:52:35.1943834' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (104, 8, N'QFH4HmIQkNJb5BV74pCipDrN3ScWAWigPGBB3MnwA+GS7L154/d2hBskbqHmJqOmgXMzESxfSkkAqkc3JUhwqA==', N'17520957-c8fb-4aca-a5ca-48bee14931eb', 0, 1, CAST(N'2025-10-31T11:19:30.2498692' AS DateTime2), CAST(N'2025-11-01T11:19:30.2498659' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (105, 8, N'5bDXKxSNnYe4MZr+4BIhs6f60QD/j8w2QjMd+Kva5jvaWEO3JQS2g8VL68Y2/86BZMl6wia3V1yjY1JoAsbOLQ==', N'8a8b4c97-e2cf-41b2-b0c4-b2ea5b1ffcf7', 0, 1, CAST(N'2025-10-31T11:20:12.0713576' AS DateTime2), CAST(N'2025-11-01T11:20:12.0713545' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (106, 8, N'QeWWUW6xN1stuexrBrO7nkOZYxpVpiDiVkzMHqEwC8jNdbrKsGrDZY5ZZTWzt7Zd/tEH1KaldnxKylTUsYsHyg==', N'88cb56aa-0d01-46bc-9293-a555dcbe8dba', 0, 1, CAST(N'2025-10-31T11:20:15.4104718' AS DateTime2), CAST(N'2025-11-01T11:20:15.4104686' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (107, 8, N'p3dC76pAtnCwJPIStpsEjpC49kz971sBno4ZjoFi5VPWULrgXBo6WmlNB0gmR8P4MYQar4ajdi17Fiv2Q4rAXg==', N'83617d56-fefe-44d1-b843-19b7407fc008', 0, 1, CAST(N'2025-10-31T11:54:53.7031233' AS DateTime2), CAST(N'2025-11-01T11:54:53.7030375' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (108, 8, N'b93ZnuzV5I3EHyjgV8LzY6ncnSLdm0N5uJ+my1HEA7a4i0TDxRbjOObjKBMSXoAODNhmuIVnIRZzzWp49JWj9Q==', N'f1601371-d7d6-4dc5-89a4-ec9ce67aa44d', 0, 1, CAST(N'2025-10-31T14:43:01.0013594' AS DateTime2), CAST(N'2025-11-01T14:43:01.0010596' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (109, 8, N'/1COrtMqX/qcZND5Mg8z7YVHhGIx3Q1qmqCGfZpX4BBH8gXOh2+ayTawVgbjJg3K82hjDfspFaFfDf/bjnlS5A==', N'30fb3295-a124-4148-9e20-b4dcf496708a', 0, 1, CAST(N'2025-10-31T14:52:50.9273224' AS DateTime2), CAST(N'2025-11-01T14:52:50.9268771' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (110, 8, N'LSGD3RX/UWGiOm4OCdzBrX8VuqxJcI9QJIVV8agStdQXoQNHcATVB0Dnlz5GGRVjH46KEcmT+J9OLfjJJYYo8g==', N'babccc8d-9b11-4a3e-9cea-af68a78457db', 0, 1, CAST(N'2025-10-31T14:52:57.6790607' AS DateTime2), CAST(N'2025-11-01T14:52:57.6790583' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (111, 8, N'NG+743v1SiDjj+cliYXUK5PQ5qb/hV/pjRUc5LzgC791D0h5vMUPR8DsFb2aQ3f/n5fMXA8RQFGnSQyh4PY3Uw==', N'deb53a8e-58bc-44cd-a3a5-c5e2a33e845b', 0, 1, CAST(N'2025-10-31T15:02:04.6316909' AS DateTime2), CAST(N'2025-11-01T15:02:04.6311775' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (112, 8, N'spS9LANvUlO7ZBGGzWTqQpZAzgv1rhRUOGixULMyGMM5bzQTkdYGot0VGlLLvEx18t7UyDMmZC3KkiCKEIb/0A==', N'825c50cd-d779-4368-84e6-3d5b722df31d', 0, 1, CAST(N'2025-10-31T15:02:11.1166396' AS DateTime2), CAST(N'2025-11-01T15:02:11.1166370' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (113, 8, N'Oly+Mj7DXqmXo9bp/ILqIbxkSD2YbCg78oAYYrI5wXDZLfCtbDMrMr9s/l4VBSSdqRY+uGQPho3MNgTnvZ5HyA==', N'c902b103-7c1c-47cf-9983-0463d1031688', 0, 1, CAST(N'2025-10-31T15:13:50.5566608' AS DateTime2), CAST(N'2025-11-01T15:13:50.5564008' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (114, 8, N'98Dl2TuofQX7mJaFk/TL7hRd1hEdmU7RvGyyANRqQtPvkc7MV+93W34VoX4lK2WGheF9SVVCHmZyme9eE2VSaw==', N'8aeeb904-925e-44e1-81e5-f74721ac6b30', 1, 1, CAST(N'2025-10-31T15:13:56.1480075' AS DateTime2), CAST(N'2025-11-01T15:13:56.1480037' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (115, 8, N'/g0jrmWM9V0g0yH1AEBM7wTj2w+R8oYIuPUMXuIfuMW84AKtFyAiHHoe5Tdt27i8UlP+LGTHo8IDNFBa825CEA==', N'a0a9f7c4-b238-4183-bec2-92439e9c2042', 0, 1, CAST(N'2025-10-31T16:50:12.3113562' AS DateTime2), CAST(N'2025-11-01T16:50:12.3113543' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (116, 8, N'2HbiNU1Hyd/8p97vQC9uJ4ymSQlG24l4N0fLUGOG51HplYKrW9Knfm54MYptj7XqVOSs6nHsVVaRl4vKjegdxw==', N'762bd1a1-239b-45d0-a1c9-0e5dfd74af44', 0, 1, CAST(N'2025-10-31T16:50:21.5940386' AS DateTime2), CAST(N'2025-11-01T16:50:21.5940355' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (117, 8, N'BgC6BpYole7Vr08NbGW9PjQuVYdYphzYif63qO2pZQ+dBEi9xFZN8Kl2mDXjKyeb/PfOL1ck5Pv4FUymOj8FLg==', N'46cfa3d1-1481-4044-a9df-1c4006758ef0', 0, 1, CAST(N'2025-10-31T16:50:28.0387524' AS DateTime2), CAST(N'2025-11-01T16:50:28.0387499' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (118, 8, N'uRakTP5Ze3ZVNJpLnwzHf3C/k27JQcgAEKsbR7ARa5OzWAm8GSDrVfaSBW6Q8LxfEFCU7wP/Uhs0Pk00nuiGUA==', N'0f7acc67-1921-40eb-9b17-42abbf83d845', 0, 1, CAST(N'2025-10-31T16:51:19.8446014' AS DateTime2), CAST(N'2025-11-01T16:51:19.8445995' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (119, 8, N'c6YZlKMbwTKwsXWVS73ncqbPbiR0JUEPxXzT3R1lElMB2T4iuyyoixuXtuT9Y3WVInhfxE2WuONlwp4nvJNUtA==', N'e588efa5-1ac1-4470-b384-e57c6db9eb56', 0, 1, CAST(N'2025-10-31T16:51:25.5910012' AS DateTime2), CAST(N'2025-11-01T16:51:25.5909990' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (120, 8, N'voIbSWENp+QXMTATx0YPbokkv3iDdtqjVJjMEO+Zkusxy0dTVjCEybMxy9ap12ts047LtCiO/jp3wLnBf0Z4Rg==', N'7ce6bd3b-90f7-4a80-ab3e-757060078930', 0, 1, CAST(N'2025-10-31T16:53:45.6841019' AS DateTime2), CAST(N'2025-11-01T16:53:45.6840983' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (121, 8, N'GF9u6ixL3rnJcVIlG5Eo0Zhl4Wvg1PqAEePJKtyLO+FAHYpAs3dZ9CzYWjI4fPJm9rU9CrDYn0RgUkoHUMIleg==', N'fb3523fe-0553-4073-bbb6-b57dbad4c7c0', 0, 1, CAST(N'2025-10-31T16:53:51.5235006' AS DateTime2), CAST(N'2025-11-01T16:53:51.5234973' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (122, 8, N'30RlGHG3/zXkieQglxl5ZDK9tjl94Vof3KViehAqdCGIUej72BpNFw9A70Nv9EOUaEzd1zR4UY89v0KWK0/EKA==', N'6a2faf08-8d50-440f-b3bb-771d4624c490', 0, 1, CAST(N'2025-10-31T16:55:30.7752088' AS DateTime2), CAST(N'2025-11-01T16:55:30.7752054' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (123, 8, N'JnN9cLBzAc8/n2OF86kf3HjuBWIcUXq14QRuVgAXmiGjB5xBlWt63ASqfiJFGolHtQJzTIrNCF+R0FHKpTnU7g==', N'de0810d4-eb8c-4cbb-91f3-b9be9aa8e349', 0, 1, CAST(N'2025-10-31T16:55:36.1249269' AS DateTime2), CAST(N'2025-11-01T16:55:36.1249232' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (124, 8, N'7gxK8M/haSj3bOWGbKs8bomOH/UrknguPSxI5bTHZAV/nG0Jmh+1IF5Jvzt5O8V1REYvXiHn+RZjjm++WnXzXQ==', N'86bbc49b-34a4-4216-9939-7f8e7534feca', 0, 1, CAST(N'2025-10-31T16:59:47.6788124' AS DateTime2), CAST(N'2025-11-01T16:59:47.6788087' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (125, 8, N'RHHR34QWaMy9xwHRPRJIRPlFM5Hg7Qq28naXsO672TY2acjyLGw7Y0UqJEBu5jIlZw46W+Rg2BLHr2OoIJurNg==', N'b01a6616-fe71-44ff-a579-959504d539ea', 0, 1, CAST(N'2025-10-31T16:59:53.4962408' AS DateTime2), CAST(N'2025-11-01T16:59:53.4962374' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (126, 8, N'2GUmko1TiuI7dnYlmOz1UIhLCdzzJIA5u5vTqjeMApxKegviufdH9tXwDSdas2KvwFNXkx+t8/sQeAcyAHtfvA==', N'3dd13f4b-ee5a-41a5-88e2-d2faf8659290', 0, 1, CAST(N'2025-10-31T17:02:31.4770034' AS DateTime2), CAST(N'2025-11-01T17:02:31.4769996' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (127, 8, N'mzuKviqUkTstcBRPznq7ko6fCXZCAIBA1kyz8R4DscPu1jDBvJu00XD2jLMUJjB2QxY/KhjXo4nN3cUZiuoNLw==', N'fb4d5e23-30d4-4ff2-b2ec-f3c6a23db450', 0, 1, CAST(N'2025-10-31T17:02:37.4884337' AS DateTime2), CAST(N'2025-11-01T17:02:37.4884287' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (128, 8, N'S9ypnQZ+hPhh1xg83Mth61tRiKbOs9BU33rRQ3z0IC2Q6+FwiA8ymZqWYwacM73xd/H0am3Qx1/a0u2Yqb8UeA==', N'd1b2a793-98fb-4fd6-90eb-1045e8b5d175', 0, 1, CAST(N'2025-10-31T17:04:55.1154079' AS DateTime2), CAST(N'2025-11-01T17:04:55.1154050' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (129, 8, N'oE7VLxWsdFocd2t0344rwa6KWGnxp6Vk2Cm7VoLlHF0mjdH5Vk6x687Z3xjJl+YcD7zopFMHZYD4a9eUTAIOiA==', N'23a32227-0a96-4059-9b4a-b05c6b605ff9', 0, 1, CAST(N'2025-10-31T17:05:01.0564312' AS DateTime2), CAST(N'2025-11-01T17:05:01.0564270' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (130, 8, N'sziDw/LLtx9oX8vD53fltCimfchrxqJmYsVF8oRd+Kmae16giE1k4bQte0jKDYMp9pzTsaKXs8hNi0CVom28kw==', N'128b0a6b-fea8-44cd-822c-84f37d2f3397', 0, 1, CAST(N'2025-10-31T17:06:31.7224848' AS DateTime2), CAST(N'2025-11-01T17:06:31.7224820' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (131, 8, N'jp4LyeY7mlSmJOZ3DxWHdaFsNWozWcAeNMb7e0+sCpiqmA2r2ZfFa+PpEYG4Ctbo/SGSJJox4RSaejaJZERo9g==', N'e88f216e-deb9-44d0-a0a9-3f7e2485dee0', 0, 1, CAST(N'2025-10-31T17:06:37.4214720' AS DateTime2), CAST(N'2025-11-01T17:06:37.4214674' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (132, 8, N'yus2gU915WfDx7VZFE90LGwMmWFubWF1z+5aqxTRPS4x0I7bQpVqAkZ0qIjnwcXnHDy4nBU8VKBbxUeD3+SI0A==', N'b56e9cea-c754-48a3-84c9-6b1844abe676', 0, 1, CAST(N'2025-10-31T17:09:18.8458112' AS DateTime2), CAST(N'2025-11-01T17:09:18.8458091' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (133, 8, N'lHxEAJpMAJlfKVlwCjbw7uje4E0AS9gEBhtMJTh+P8mGnrPtPRn3tJo1uJHOSyleg/LEBiJjI1WTEISNdlQQng==', N'f8c9f13a-5ecb-4778-87dd-5d2c1c281328', 0, 1, CAST(N'2025-10-31T17:09:25.6596870' AS DateTime2), CAST(N'2025-11-01T17:09:25.6596849' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (134, 8, N'ELzkRaq4sscZn4Patlf1hqSqU9SpUIRhdyK81i++EythGIoQJmg+3Ukbey0gMSnA5sP9S3TSSdrGx/lIbP/hhw==', N'8dab632f-eb70-4a0c-9e73-4be0c6ec626a', 0, 1, CAST(N'2025-10-31T17:11:42.6030583' AS DateTime2), CAST(N'2025-11-01T17:11:42.6030552' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (135, 8, N'JMgB7lH+KMnA/Vl0UT0U/w/VBWlwfxWur9kye9dulcLM8YPkDUPgWzPYOE54VxjWSHFQbcUY9OvUUEHM3Bv3+A==', N'35ebc59e-af4e-410f-9bd1-038d4195a881', 0, 1, CAST(N'2025-10-31T17:11:48.4348203' AS DateTime2), CAST(N'2025-11-01T17:11:48.4348173' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (136, 8, N'jcf9HaU54zBWwcLFBj7Va0Z1UM5xMOEvrEVopR877bA3em1t3N0j+4kESkO3/ZBD6Se6csvuoSv9i54xVJuIvA==', N'44118cf5-58eb-4cde-aab6-7c8fb83d27d7', 0, 1, CAST(N'2025-10-31T17:22:11.8433655' AS DateTime2), CAST(N'2025-11-01T17:22:11.8428960' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (137, 8, N'LqndtfB9VGgdZNReq/Il2voJH1OcAbEN+NuNzBt1OSv+MQAkHJ0rhAW4hrNci78yKsTUmkIB09pNEEc7dsZqnQ==', N'7afc9564-33a7-4859-9a07-abf9b3120e7c', 1, 1, CAST(N'2025-10-31T17:22:18.0353492' AS DateTime2), CAST(N'2025-11-01T17:22:18.0353353' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (138, 8, N'FIxxHTOmmXeumH8vkzIAj0sZqO0ocB3TAs7iyhtgmE1O5BFbRRRZlRTPH2NXwSDQfrfff17+09S0sIDHiMC/hQ==', N'a9488e9a-3ac3-43f0-bd68-ec7e72ea7fb3', 0, 1, CAST(N'2025-11-01T16:25:04.6732747' AS DateTime2), CAST(N'2025-11-02T16:25:04.6729656' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (139, 8, N'J8G6nPMEEWCOl8ez52JizQ61skg6sPsio3Pm13w1YohnuSX7f5qXAgveRRw8JzEGK5OX5DgceG41fagr/BV2JA==', N'46ac3c4e-272c-4ab6-8c6e-a7b01ced8880', 0, 1, CAST(N'2025-11-01T16:25:52.0886409' AS DateTime2), CAST(N'2025-11-02T16:25:52.0886365' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (140, 8, N'1ZpOnD3UbmZh2+t/i2nvCt4Svsupwl+3iMeXUtxtWTYW16YwCp76q26+baM8PeBMa7F7TGPAbRdeeYOU1EFpVw==', N'9af554af-5c2d-4a56-9e44-0cb9322433a4', 1, 1, CAST(N'2025-11-01T16:25:57.3650714' AS DateTime2), CAST(N'2025-11-02T16:25:57.3650663' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (141, 8, N'eRyWPAkZj9MTcghw8l+iM1W3j4OD/P/nOqO+bC4t2CEgHckF0ntdTs6vh+ovoWkBjYYbciaE3/pkhtu0OdyWzQ==', N'1f394521-ae86-4127-84af-4b567850be86', 0, 1, CAST(N'2025-11-01T16:42:10.7992545' AS DateTime2), CAST(N'2025-11-02T16:42:10.7992524' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (142, 8, N'tjSzUyngyry76ZvHGDaNrnwfIWW4qe23eY15Hos5IWPpottiDRYyR7Lx71W2/QqVHokexyevff0FMptueo+V/Q==', N'4e718474-4e84-451c-a2c9-97bf928c0f13', 1, 1, CAST(N'2025-11-01T16:42:14.3268243' AS DateTime2), CAST(N'2025-11-02T16:42:14.3268221' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (143, 8, N'7JIY/Opz+BZsZP0oEQBAI5Jox7aI0rBZIy70CrP5beB+dJCpKC+AD5DGq2gZYeZofSm7JEP9zS2gnzz9nDpysA==', N'f28b195c-0c8f-44c9-bf77-66b2644fbd5b', 0, 1, CAST(N'2025-11-01T16:43:27.6185551' AS DateTime2), CAST(N'2025-11-02T16:43:27.6185510' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (144, 8, N'znEF7mIqi8tx5y97lDNC7rbu+VsfYm32a873MVt7mJihhjFqjIrgKnELfWXnXmexuKhkT3seKOpeP+huqC3kTw==', N'f51e20b8-0abd-49fc-800e-a5f3a47d48a3', 0, 1, CAST(N'2025-11-01T16:47:16.4210488' AS DateTime2), CAST(N'2025-11-02T16:47:16.4210447' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (145, 8, N'r/hprqIqZOio9LxfbOm2fmdDtJ3cRZvsTpkQ3WOzzJPHVurdaXkit+8gc7J5E9BG4YMv1C8b7IOozFIfJMyWgw==', N'1bd81555-cb3b-4ee3-ab40-b115365c4a31', 0, 1, CAST(N'2025-11-01T16:48:14.3761983' AS DateTime2), CAST(N'2025-11-02T16:48:14.3761948' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (146, 8, N'ZvSkEZAu3EXjJLypHmkmnIusXyYdFEeI/ALiOl1l6MrEXjNUUGle/X3+2FNb820ecu08SSvi+3PSYzWs6NRrPg==', N'1fa96920-5a79-4aef-9cd2-4ca7f664ee4c', 1, 1, CAST(N'2025-11-01T16:48:17.7421312' AS DateTime2), CAST(N'2025-11-02T16:48:17.7421297' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (147, 8, N'miVfGFwiSsrVgMmjWtpSsU1W9LoTad+GLFOL7zY5+YSdW4wUY9A8JZ8ZhxfzkOeXbyfWeCcL4O8RKt53jZbO+A==', N'e01013ef-52c7-4cec-a9fc-28f53a37eb2c', 0, 1, CAST(N'2025-11-01T16:53:13.0414253' AS DateTime2), CAST(N'2025-11-02T16:53:13.0414230' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (148, 8, N'BP1FqbQjM0rkSduzTb++bd3Nj7yQtx1ZE69YtbMpbO96ND1q4uy7Rkrmkq1aO/dAGg/uPvtBiIoMcuYe7qmmkw==', N'ace7e853-c7b0-4c7b-8f39-fbd2de317b34', 0, 1, CAST(N'2025-11-01T17:17:19.8026583' AS DateTime2), CAST(N'2025-11-02T17:17:19.8022755' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (149, 8, N'qgWL4BuTPdfTA2OSSqhdMRZ6LU1sTxDvDfvUxeSTk9QoNFdes63vFbfs7fuw6xbTr7+9LwFq9OmEpQBLmh0EZQ==', N'1e960c50-5886-434f-becc-1d8a7f6b7191', 1, 1, CAST(N'2025-11-01T17:17:25.0901008' AS DateTime2), CAST(N'2025-11-02T17:17:25.0900980' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (150, 8, N'XTxHVw86JCJdyTHam/lC1xY6FffdaZwZkTmERbF5WWEIcTjC/PKEVfYJU723guNv+xN1Ctq2nr/mTzSj3Z6A0Q==', N'fbcc29b4-440e-4112-a086-8f088912dd3d', 0, 1, CAST(N'2025-11-01T17:22:21.2142732' AS DateTime2), CAST(N'2025-11-02T17:22:21.2142714' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (151, 8, N'Vh+w2yqRIcvyC35HichhUZvWjoX47LFC+7VqT8Hko5o+LnhwBRHyIWSsuFtXyfkhP5o93RRL0RXEF5SCid8h3A==', N'f07ca2c2-5b69-4a4d-91b7-276d688491fc', 0, 1, CAST(N'2025-11-01T17:27:06.9127760' AS DateTime2), CAST(N'2025-11-02T17:27:06.9125493' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (152, 8, N'NKOOuHi2BlVqHbpLRb3yjnCirLGwYTym7CUbiFP2FwnnU1XVqu0tZWQBwXixFMZYKVG2YIKWeKa+i4n8qHMynA==', N'db50dc46-e9df-4c1a-9da6-4408f24b96ab', 1, 1, CAST(N'2025-11-01T17:27:09.3595335' AS DateTime2), CAST(N'2025-11-02T17:27:09.3595304' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (153, 8, N'la3FC1lYyu7OOs74rhUo0xOKRwmzvuXd8TH80gCMg9Z+918RRFJyvK15JsA4CWLC9QHE1ZDpP+WsYMUpXUCEkQ==', N'5a0ed6d7-e0d7-43ec-9891-78e4b1ea523b', 0, 1, CAST(N'2025-11-01T17:39:45.4936975' AS DateTime2), CAST(N'2025-11-02T17:39:45.4934816' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (154, 8, N'XHOQFQasm+6LhBq6p4el6Soe6XyjQIhq6rAbwcjJGSjX0ZK9/+4qkrIVArZg8KRBi7fSULBacaVsaoDkWOsZUA==', N'b15ab93a-09d5-4e74-a407-2e197dd40a2c', 0, 1, CAST(N'2025-11-01T17:40:04.3075417' AS DateTime2), CAST(N'2025-11-02T17:40:04.3075394' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (155, 8, N'OgVNUTtvG2qkV3Apk4QDf1lyavn4s1sHZPxU/ZC0fKrruA/1TGYCTAf/PUSHmtRQ8loBeVckdmKGb2TTsWBcYA==', N'8a0fd068-64de-4e1e-a0cb-8b64b0cab028', 1, 1, CAST(N'2025-11-01T17:40:07.4707549' AS DateTime2), CAST(N'2025-11-02T17:40:07.4707525' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (156, 8, N'RMEFBcxwlmHkCn5hBIwOxCmiB4IEaJF6kgdJe3TqnhW68LCY+h9aoL5uoxJObAglpJLg3HG3Vxsn0DjdysyvaQ==', N'a4c6eb7c-d801-4d1a-ace1-b81c737c5e47', 0, 1, CAST(N'2025-11-01T17:48:41.6623323' AS DateTime2), CAST(N'2025-11-02T17:48:41.6619689' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (157, 8, N'xNZKv/q7PNJVSubbZq4YbpX/XnxpCdarvc78JjWwmABT1CMey3qm60P7067PbsZtjhjDOPHI38Vyu9WqHH+sfA==', N'ba0f58b4-5af4-421c-b783-520fc19eea79', 0, 1, CAST(N'2025-11-01T17:49:02.1674876' AS DateTime2), CAST(N'2025-11-02T17:49:02.1674849' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (158, 8, N'LwstrcT99EQbEFQGfXwT/adIvdGz7fjeqjKaYVYITzeEA2+MFhpgv3vYgV9DUdULPKOY1ZBQCseAFnJ/r5/nKQ==', N'af6e5ac8-f019-4e2f-a1a2-5d5f9adc1573', 1, 1, CAST(N'2025-11-01T17:49:05.1017710' AS DateTime2), CAST(N'2025-11-02T17:49:05.1017671' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (159, 8, N'mY9zfhvObMApMh+KOOY0JxrteZYOKKvkS6Vkcy2gfZtR4mGCWKoNTFBAuu0sMWvj2+6nyA2VIDLzfRH1qrXvmw==', N'8293c47e-c5d0-4a49-a305-64fe51d85c30', 0, 1, CAST(N'2025-11-01T17:54:02.9334822' AS DateTime2), CAST(N'2025-11-02T17:54:02.9332465' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (160, 8, N'R/1ST+YUXCwS4oZZRzjHlobklje+0Mtt5A+ii6kGtup2MdwpBbNXGSc9jvbZdmdRlnjkZXJ+zUX1kB7k/5o6Rg==', N'c65e2896-7be7-4402-bf79-035ade644007', 0, 1, CAST(N'2025-11-01T17:55:27.4340980' AS DateTime2), CAST(N'2025-11-02T17:55:27.4340880' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (161, 8, N'8QFrptW+t3nv9xwCZCxsTW3G4bOJynbtuKAqXL25ZNc9D1lyC4MRPQFO65rJJS6gPFhlLz8pEpvQbrR6RxqCqw==', N'b97475f3-ace7-4093-97bd-c5eacae8e1e4', 1, 1, CAST(N'2025-11-01T17:55:30.9914251' AS DateTime2), CAST(N'2025-11-02T17:55:30.9914230' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (162, 8, N'g1sFaoRAMUVj/VjK61hcJX5zFlFKqbvUG1GoyzQ7bgi3RFidG7djCotKiFmRGrPkcxTftWPZIz9C8ePMGFv32Q==', N'd855fdbd-36d3-4142-b9ca-a7fb1879f326', 0, 1, CAST(N'2025-11-01T18:00:26.2542612' AS DateTime2), CAST(N'2025-11-02T18:00:26.2542583' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (163, 8, N'04kUWfZV4Oy/o9Ji2tx9YUn6uZw3qVFKX1ay5Qq8oBYn2ZaK231bHcDMeHpYmSDuoOiavbLFo/K0NTdJglBiTQ==', N'bb85540c-4832-4ca2-a03d-c2aff543234f', 0, 1, CAST(N'2025-11-01T18:07:53.0316768' AS DateTime2), CAST(N'2025-11-08T18:07:53.0314685' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (164, 8, N'mbA8YJECQPZ9Tqp2BGlCNa/46LylHlVnU3IrVItXTZI7wuejIXYtvXfXf7503vVo22bNnZzZ+1bOKEfNiUFD6Q==', N'2b875824-86fc-4c10-ab25-93b7ed245c73', 1, 1, CAST(N'2025-11-01T18:07:56.1553857' AS DateTime2), CAST(N'2025-11-08T18:07:56.1553829' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (165, 8, N'/O7P5XoP1YVlGHU7g4SVfCd8GOeVKd3ipf12L6ycllKFvHxAkue/yp9hNGCgUO3zfDm05IaJqCaXTOw88ZpoGA==', N'204671b0-e8f1-4229-b46c-fa9b6c88c83c', 0, 1, CAST(N'2025-11-01T19:04:34.1763415' AS DateTime2), CAST(N'2025-11-08T19:04:34.1760504' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (166, 8, N'47WCMRnkGS8UMNdM4P4OKbNTLp1Gl4vE+1Av2hKLo6bRMlR3tzUkgv+ItK5cpT2qnZtYUHimJlvEZ9rozIlJdA==', N'46cacd78-13f7-4a9e-a20d-1a48e51a764e', 0, 1, CAST(N'2025-11-01T19:04:43.3190545' AS DateTime2), CAST(N'2025-11-08T19:04:43.3190519' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (167, 8, N'UJKKXravjuqXA7VdMzp72/yDGCO73ORy+fdWc5dsBNiQkdCxVipWkWqxcC4ZMnLiMfe1pSPWAUff1T1WGNxZIw==', N'389ea69a-5966-4d68-a93e-595a1f5c121a', 0, 1, CAST(N'2025-11-01T19:08:23.2929899' AS DateTime2), CAST(N'2025-11-08T19:08:23.2927431' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (168, 8, N'cwMFNRBflThnoK5sWDTPkUAMvEqYgcgkP2hrXxCO+aoZIrTiNCUZgvCS6DvRi8LOHd9wVIl0I9HfalXK9AQ6iA==', N'2bdf8738-ace2-47e9-89f2-c23c333619bc', 1, 1, CAST(N'2025-11-01T19:08:27.6265080' AS DateTime2), CAST(N'2025-11-08T19:08:27.6265058' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (169, 8, N'vwS74ihdJXPgaZpoH1DqbwBOl7ztJc2jjgdIqaCiK0Zuq4a72UnEqVbLAObvSwWS0T1B44OCA4uQxeD7pJUOyQ==', N'938157b8-eaec-434e-babf-8c3dc4c06178', 0, 1, CAST(N'2025-11-02T03:51:21.9202824' AS DateTime2), CAST(N'2025-11-09T03:51:21.9202801' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (170, 8, N'LNtbHXjiDu7Vdj+V6X9KwxY1iUEpOfHSOBDEu0dBCKH61XbXIfvXtuz0TJnxitTlN2tirQyKEKSdTDlCG8DjNA==', N'1ec37f73-2e1c-47ef-b324-9a247a9e3c5e', 0, 1, CAST(N'2025-11-02T03:51:21.9202900' AS DateTime2), CAST(N'2025-11-09T03:51:21.9202888' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (171, 8, N'3uVCihMf5Poo3upMhOeXQiCWqKT6X9qbhLFSTQvZYWiXpX58yj1o8cKb3KKaoXYDfdsiqyLCOx9+f5d+vnM8Nw==', N'f422ed05-65a1-4429-8b1c-562aa3d42e9f', 0, 1, CAST(N'2025-11-02T05:19:48.7431670' AS DateTime2), CAST(N'2025-11-09T05:19:48.7431652' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (172, 8, N'OvdHc4djt/UdeIPpJkxAq9SyLMpSUpyP6PmCTlZ+CbiWuJPuI2oEJEK/TIO1jbULQi/AwazUcGy+BbYxyTV6FQ==', N'b5e54727-9db2-4a40-969e-2d24ba3166bd', 0, 1, CAST(N'2025-11-02T05:19:54.0746895' AS DateTime2), CAST(N'2025-11-09T05:19:54.0746872' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (173, 8, N'ntffLUCUSW0mmduPOC+sfdz/KPbQL7UXdz9V6IRypl7fFdSXcmDb8wwRNS6/aGE+Yb8wKvHDbJ/Phow7z3OJNw==', N'e99d58c5-f94e-4c59-bbd7-5b8b2eba1c7e', 0, 1, CAST(N'2025-11-02T05:31:00.6384774' AS DateTime2), CAST(N'2025-11-09T05:31:00.6384744' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (174, 8, N'wkEX+q9nIOEUg0P8C/4V7JE0amGZI8MqNhT84b0EzJBRWRHsy70wqkyGJU2s7paColBNXMvUrDLIBXFmupvoCQ==', N'c1396119-1780-4bb1-8ceb-0f48498e9578', 0, 1, CAST(N'2025-11-02T06:18:24.5435502' AS DateTime2), CAST(N'2025-11-09T06:18:24.5432304' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (175, 8, N'ELblGnX/Cm5FumanSG9oJsHT7Vl+h3eGFJ1iAZYzJfMcyfGB5eojtq2S6N/Qr6asC58W+XB23gbGyDu4xP110A==', N'8e0d0cde-799e-4e10-9519-57c87b1de9b8', 0, 1, CAST(N'2025-11-02T06:18:28.2148965' AS DateTime2), CAST(N'2025-11-09T06:18:28.2148917' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (176, 8, N'9tpdVNHWiwzmDl3q+WoA0Cb9m2NR038IAxgIcy65zxw5vDV/WGVjJTYZucgVIOt0xGpSYPjCDUsUHkD2UoqAng==', N'87158298-1d46-4785-8132-9de0d4bd1802', 0, 1, CAST(N'2025-11-02T06:34:11.1894280' AS DateTime2), CAST(N'2025-11-09T06:34:11.1891523' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (177, 8, N'OK85lMuVgMSWAfPmPaj6ud4fTo4Ei4ggSZXaDilKUCG3zDLI/N44H3GpcCIJaduOxnNF887rqqnffEtqQE0gAQ==', N'544049ac-ba5b-46d9-a886-4f84ee1f19d8', 0, 1, CAST(N'2025-11-02T06:34:13.4936716' AS DateTime2), CAST(N'2025-11-09T06:34:13.4936692' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (178, 8, N'BpU7/bSXrOP2Xnhio704yaVCClaQdPJvmYokgkkzqbW/jdyYamkKhFI49kryrmXVbRNplHOXcL8Wye3RzGib/A==', N'243011b7-ef8b-421f-b898-623ce636bd8f', 0, 1, CAST(N'2025-11-02T06:41:29.1359645' AS DateTime2), CAST(N'2025-11-09T06:41:29.1359629' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (179, 8, N'ssVeYyA6jGXxWSzWTGXvOLH0bu/ePY3PwTjVjT6v/9sg53eC2jEA2kWExmUe2m3XT6ZjhiEJjcJMWiPhQ9X1kg==', N'92c317d3-6453-4293-9a59-2385f684b484', 0, 1, CAST(N'2025-11-02T06:41:33.4582575' AS DateTime2), CAST(N'2025-11-09T06:41:33.4582549' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (180, 8, N'Ym1rZ5biKCEaNRmKUFj64MeerRZTqsDQilTHTK1J5sZdRPUXmMbF/hPeXkOjS6z5g1mDZyzqkA78U7zTitzn3Q==', N'e40d17ec-fde2-4820-9ccb-4d924f4a5bf7', 0, 1, CAST(N'2025-11-02T06:43:07.1714582' AS DateTime2), CAST(N'2025-11-09T06:43:07.1714564' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (181, 8, N'UgKPLacMZ7Z3/CgoyVo+N+NKHnZbWNPOlWxnvqikjE4MZ1/wlP2rd76ysw0Tfo9tqyO3rMm1VBNJbCD0+F0RaA==', N'91ba8d90-a07a-429a-99ea-ff7e728d3677', 0, 1, CAST(N'2025-11-02T06:43:11.8182573' AS DateTime2), CAST(N'2025-11-09T06:43:11.8182544' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (182, 8, N'pZZI45yIxMFocwjVTPkILjbBD2kX56qshf3zFpvd+cuUa3/r9x3hXl5o2kjKWR+XjEwX+Ry3O7U9VoKsc45ozg==', N'217d43ca-a128-414e-a7ad-9b7c75cf0c1a', 0, 1, CAST(N'2025-11-02T06:43:24.5061939' AS DateTime2), CAST(N'2025-11-09T06:43:24.5061918' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (183, 8, N'73Q/A+3QDoBU87DHHMazSVHxCb7g2vcpRS5k7E3j8zBPcSsZNxz7VgIYeHjnoLM8D1eM32PIGT0k/YAiU8OpJg==', N'dba1f649-bb57-4e82-97fb-39939dab3fca', 1, 1, CAST(N'2025-11-02T06:43:30.0398512' AS DateTime2), CAST(N'2025-11-09T06:43:30.0398477' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (184, 8, N'TwmIqvyLZ8R4fbVOq1h4tiJw3lWKv4j6The6qLfYjnHN5f7FUyJ/d9/2eHIInreHYVZGBT4vUelJw0DwdDUutQ==', N'69900eb1-d857-46d7-8c83-145f06aeade1', 0, 1, CAST(N'2025-11-02T07:34:52.4592177' AS DateTime2), CAST(N'2025-11-09T07:34:52.4592136' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (185, 8, N'ECR8UkOZVQhH2ryX7ZuqCcTWsLclDoxBu6Sx2lds457clggY3YCy8yWAbQPlPZzEkl4mlwo+OE1xNQ6UJB+H2g==', N'7005cf55-0772-4dc6-b424-30884665ac9c', 0, 1, CAST(N'2025-11-02T08:43:27.4371085' AS DateTime2), CAST(N'2025-11-09T08:43:27.4367981' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (186, 8, N'acub2Ju9P31QjaRZE1e0/8FM39CAhZsAoUHFrhoCvKTNL0uypNIkCpgftodOmx+PrIZvgTuvM/WMS6GYKOCj0Q==', N'935a32d4-ec42-4f51-85c3-75a911509bd2', 0, 1, CAST(N'2025-11-02T08:48:42.0317797' AS DateTime2), CAST(N'2025-11-09T08:48:42.0317769' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (187, 8, N'C0WiyMjG5yk8Lj8olVV6MNdj6NFLjdrg0JaKPyvvFUiEsJ42EPtfNz75KwpJ9ingjb8AeKM9Z/xuXHzo6Hj6fQ==', N'fc94a95d-b6b5-48be-9a75-d9025e292ba6', 0, 1, CAST(N'2025-11-02T08:48:45.8730091' AS DateTime2), CAST(N'2025-11-09T08:48:45.8730068' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (188, 8, N'yrecrEGa+Q/npaCGsLgxASFfbvj+6bABkAqpE//Vn/YSSNtrBxHFRR3jsZgX8Nxawo9IRxYZUoLJxxP9+oPBmA==', N'a263539b-55d8-4301-8429-f2d14a45a240', 0, 1, CAST(N'2025-11-02T08:51:41.8931869' AS DateTime2), CAST(N'2025-11-09T08:51:41.8931842' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (189, 8, N'vbdKh3NFplzw8fMcti50MnPoAiHEBCzcjdM70E9HJggsTkk1oN9KVVP3PoAi1+eY3uZA2+FfM7/V+W7T28On/Q==', N'faf9481c-12f6-4634-9628-8543b3349d7f', 0, 1, CAST(N'2025-11-02T08:51:53.7895852' AS DateTime2), CAST(N'2025-11-09T08:51:53.7895823' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (190, 8, N'1t8qDXh7rLGUoXTbs3ZpVvHyx/NapP4hGyotOuNqSNCHNBEWJ2JacbxaYhWGUi0IgKmg9DxF+8nC47SXT5bnbw==', N'be00e22a-bb4c-479e-b2be-180467c2278b', 0, 1, CAST(N'2025-11-02T08:56:36.9949236' AS DateTime2), CAST(N'2025-11-09T08:56:36.9949217' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (191, 8, N'55JiF0D7P0duja5GHb9kmrAuU+OvjWyRFWcXBOAZ2ZMfu7OriVjJZU3KDXLmHjwqXNoGOM0/8Cou0w4aNwi/MA==', N'055effc8-c91f-4928-a70e-ddc75cb4f34e', 0, 1, CAST(N'2025-11-02T08:56:53.0079795' AS DateTime2), CAST(N'2025-11-09T08:56:53.0079768' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (192, 8, N'jgp0cXmqrp9fjwKny53ue4r1P0O6WYXl1CJnjcMqyYwEod02VCRUDsK93iWnI4T/HEt1c4DXDim5VONeKOh4Bg==', N'f4d40bc8-d5fb-4603-a99c-e66b05689bbe', 0, 1, CAST(N'2025-11-02T09:02:51.5555739' AS DateTime2), CAST(N'2025-11-09T09:02:51.5555710' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (193, 8, N'LoovU5pS1/zQZnF/7l7UFjHbKhT2mVFfEhYdFdlVssRUogDAWxRJ2Eb1HMkrDIszqwPg2CzxmCPHcR+yBiPqkQ==', N'97d042be-0187-4e37-ba5a-a1c229a0e8d0', 0, 1, CAST(N'2025-11-02T09:15:09.7833539' AS DateTime2), CAST(N'2025-11-09T09:15:09.7833504' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (194, 8, N'E5VInEm58dtUUNC7C572dIqF62EXTuBtrURIkI7MzoWwpGIyYDJBo4slDbw3aky+wT3/o4dg8Wztyr/AFxvlug==', N'9daab2bd-ab4c-48dc-8b63-ec0764d038e3', 0, 1, CAST(N'2025-11-02T09:17:05.9424894' AS DateTime2), CAST(N'2025-11-09T09:17:05.9424862' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (195, 8, N'K8cErIsDGXDSTnY/q0ihLvnQ6CgFSmiZUtTmbYCnPHsrBYJUTlDE4DTaQBHf0SN15xMegFTEOxKvDhbYWds1dw==', N'2d79d152-9e5e-4b53-aecd-15a749444a2b', 0, 1, CAST(N'2025-11-02T09:17:09.8703784' AS DateTime2), CAST(N'2025-11-09T09:17:09.8703748' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (196, 8, N'BcM/3iXwu+dV5IarCVIzgHQwO+wqZfew7wxo+uq6TTbmwCLfTPuyHTXGUglI9XP45oa53/AQrx9bpoDCMXCFFg==', N'52981afb-5323-46da-a105-c52e39f57238', 0, 1, CAST(N'2025-11-02T09:18:16.8960884' AS DateTime2), CAST(N'2025-11-09T09:18:16.8956053' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (197, 8, N'O/nIKbVIpz/MqVoYe70iFu9Z26U6Ybh0+PXIhoAmiv/pR4E9LG/YH+TeY8s0zABQDmfuTSbPQfd9aOq3NRL2Fw==', N'4bc93928-5e40-4524-b23b-531347363903', 0, 1, CAST(N'2025-11-02T09:18:20.8082939' AS DateTime2), CAST(N'2025-11-09T09:18:20.8082908' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (198, 8, N'SgOYqpPjHUaJ/DKfq4wKnfcIHMswU4bTk1w67Gw4XKsQId25TPNLmMWiY+dp2wUcjNHWFmYGmcZIdUvZUJsr0A==', N'ac18d8d2-3c80-41c6-b5c0-70df35723589', 0, 1, CAST(N'2025-11-02T09:20:00.9285831' AS DateTime2), CAST(N'2025-11-09T09:20:00.9285794' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (199, 8, N'GBIVqfPJAFq+G7eZbR1jd9Ms3+V0+7hRfuzjezVpaFRMFRKP5CNKRf8ojg4FlOWg02B7il8UAT9+fzDLSte/1A==', N'a480aaf2-8b0e-4c15-ad5f-f23ee074e50e', 0, 1, CAST(N'2025-11-02T09:20:09.7149556' AS DateTime2), CAST(N'2025-11-09T09:20:09.7149532' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (200, 8, N'mSD5DS7wlU4QtEirNvryBsu+PJIr5RRLQJ92lO5ot4pPIgohAiJ19FBi4nioXpdSV+v5hce6eF7lB5ko2TWl7w==', N'9c093c0a-971e-4979-8175-0c28a17f3942', 0, 1, CAST(N'2025-11-02T10:31:26.2145491' AS DateTime2), CAST(N'2025-11-09T10:31:26.2145451' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (201, 8, N'Y89VMbD1TuKlFNfo5ENsdSLkP2EJ0HumLUwg8gH8z2hPr8AIfFO5mOIfhQCoCey1vClnlwe7w5HnMmK2n16WyA==', N'f35ebff1-06d3-4744-af4f-37644a01e95f', 0, 1, CAST(N'2025-11-02T10:31:33.8783413' AS DateTime2), CAST(N'2025-11-09T10:31:33.8783375' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (202, 8, N'zx//U7wKZ3fZ2fIrBJUAirj6YqZXNiNJyxZYhryMTbSdkDLVbS/HnUzmF99x0tYvgYltla4A22bdifIjbw0ktw==', N'eb56fadd-a1d0-42cc-a407-c53fb76f5641', 0, 1, CAST(N'2025-11-02T10:36:05.2064924' AS DateTime2), CAST(N'2025-11-09T10:36:05.2064898' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (203, 8, N'xcXNfIynUP0TnldTmuPufz+B90pjbKIXcB8DSvIqr3dBthHKs5UnbjKoJXMxiUFCm+ObukpxIBP34ZoqIkBRXg==', N'765eafb0-9087-4b42-8161-07fa788fa336', 1, 1, CAST(N'2025-11-02T10:36:09.4464499' AS DateTime2), CAST(N'2025-11-09T10:36:09.4464473' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (204, 8, N'6ClkmiF8CdIH+0voh7SUIQJ2McHzgz0zXDkmkrtszMwlqY59Qr15rNjtLYhToUFzMddLOisnPSK3xwKhcXQsjQ==', N'e7d716f7-18d1-4069-b2a8-3bb5993e55ad', 0, 1, CAST(N'2025-11-02T10:37:05.1589131' AS DateTime2), CAST(N'2025-11-09T10:37:05.1589113' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (205, 8, N'Y5A6AGtiX+r8DojzMvGsXDKVrSNQO2Y+QIIlD1uU54vG9cTvo9zIJNoeHEKXxaH3btGB86mGo2MVewsvXto6cg==', N'1d3d2605-46f2-4a53-9684-c4de0c7d3ab6', 0, 1, CAST(N'2025-11-02T10:44:26.0113177' AS DateTime2), CAST(N'2025-11-09T10:44:26.0113147' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (206, 8, N'EovJgYiC08wwkMrr4d0z6FOA3TjzYOjt0Di8PjZ3lUEjnw+K+IfDztCu5+gVad3efD80Qd6dI+ASB5EBsAEsjg==', N'ac9aa386-0cee-43f0-baba-695a78c08149', 1, 1, CAST(N'2025-11-02T10:45:12.5126951' AS DateTime2), CAST(N'2025-11-09T10:45:12.5126920' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (207, 8, N'HyBWTo17NQdjEmay3GiYczsbGOrEW6IHoquFIVDcWXSEHumAminC1VPcgnKv/7Wv/rnNVkTkvy82fFLmUyRoXg==', N'b352c736-74fe-48e3-90a5-726a1921d894', 0, 1, CAST(N'2025-11-02T10:46:07.0400494' AS DateTime2), CAST(N'2025-11-09T10:46:07.0400461' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (208, 8, N'LTxbfJltc994O2SulMvbmdLIDUL55HX+tjqPwRFHshCp+5+n2ClDLRcjaXwfTHN6gOFWcfFpQZSh+C0ImkXT1A==', N'b4678d4c-c315-46aa-b45c-b1b19b8cbec7', 0, 1, CAST(N'2025-11-02T10:46:27.8351576' AS DateTime2), CAST(N'2025-11-09T10:46:27.8351547' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (209, 8, N'JadgEw8akERtU7kfCrvyCNgZYBNF2TjREaaw4GHiBMGe4SvXDnselainI8ycbOix/t9EgjQKoJ0lJijcVuk+DA==', N'cae65a0d-1017-4656-b094-9ed43beae12d', 1, 1, CAST(N'2025-11-02T10:46:30.4738756' AS DateTime2), CAST(N'2025-11-09T10:46:30.4738727' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (210, 8, N'GZdRCOZpX14v3We78RqxSk8ZIoYheqizkYyS8dXQeLe+C3Peme9zUJyHoXwf9OCLJH8eKsELZ37qCfNqzzvCzw==', N'2fc814d2-9416-430a-b75d-dad9cec70554', 0, 1, CAST(N'2025-11-02T10:47:25.0332226' AS DateTime2), CAST(N'2025-11-09T10:47:25.0332195' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (211, 8, N'5iKgcKQE8HgumDsjpkYR/hHc75WH5SStisZEMp2l42eu6ud7e/bgvSWm/wTFN38kTGb5+1NfiIUecRq94M+sNg==', N'384a7c6f-4ad3-41fe-b1ff-5dcc85fc6790', 0, 1, CAST(N'2025-11-02T10:47:37.5672755' AS DateTime2), CAST(N'2025-11-09T10:47:37.5672738' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (212, 8, N'2JZM1E/Wf+pI3Auj4XRUfACFZOqS3eUoX+MP+8ZaxbzPKlZHXZCmg7kzWs6H1VA0CQoMlWJchRYZfaU2qzoMxQ==', N'322bf619-867d-4f74-8ac6-5f330727bec3', 1, 1, CAST(N'2025-11-02T10:47:41.1505820' AS DateTime2), CAST(N'2025-11-09T10:47:41.1505805' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (213, 8, N'iAJymYQDZW+OKWAPo+BBFNDp2Bl+C9jBGKGVwvJrV1PPp/MtyhofEKob7HzNpYh4Hq1VzicuDWfxxzOvbbJsNw==', N'30ababf8-a3c3-455b-8649-f08ae39f9924', 0, 1, CAST(N'2025-11-02T10:48:36.0398670' AS DateTime2), CAST(N'2025-11-09T10:48:36.0398649' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (214, 8, N'EPiBGTvu0JCoIP/gf4BqZc8TQ9ivQLKolFlbcWTppcGN+fOmRxV1Bgk4t4z1gmMd1dyJPeyBRoXWWrcr0YuYng==', N'e47d6e0f-38f9-4c4c-a6be-d4aec0122db8', 0, 1, CAST(N'2025-11-02T10:48:45.6961070' AS DateTime2), CAST(N'2025-11-09T10:48:45.6961046' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (215, 8, N'8LOnrfHoPi34Uyfvbc13RFDckZS2GkG3znvahrDvfmWAZ0F2qScV1o61Z32/6oa96VlkcCUOgA3QSRlZdVqP8A==', N'c4bf42cc-990d-4809-8900-1e9f81254d0e', 1, 1, CAST(N'2025-11-02T10:48:49.0950197' AS DateTime2), CAST(N'2025-11-09T10:48:49.0950175' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (216, 8, N'JwogNpDho6IKj7Yqb6ZthBEQ4DaMfT5T+tDowoXTg2cCM9HtiClEE/M/h7jPv+nkeB4xCcyuTFaIcaHgf4dCgw==', N'0d52adcb-4265-44dc-ae9b-be08e519c40c', 0, 1, CAST(N'2025-11-02T10:49:44.0326588' AS DateTime2), CAST(N'2025-11-09T10:49:44.0326564' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (217, 8, N'4g8v1TL4BEG53mDfb3sVQANTGntuoT9dnzMmFM8J6aIC3k/BqBRemf3iuvXZHkHcgX/7/Kg3qCkd5mitPr8J9g==', N'fce75874-8365-4778-92ff-580a6f358cfd', 0, 1, CAST(N'2025-11-02T10:52:47.7009227' AS DateTime2), CAST(N'2025-11-09T10:52:47.7009208' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (218, 8, N'xUEeo94pi6Hr53MLQE52B38JZLW3PkE+edGzKILyWcm/LeKJAShn90pzYg5kYrLaag6gv68F+S2oL3cdK/WYfg==', N'6aa72ec6-4c65-483e-9bd9-fce9ce7f6080', 1, 1, CAST(N'2025-11-02T10:52:51.0065311' AS DateTime2), CAST(N'2025-11-09T10:52:51.0065280' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (219, 8, N'1w/PoRh0o7FFvUFcYXqmvQQEYHYoK/o1b1nO5uJEu9N5ymCaMWShwcMfkVF1R3zFcyO93R5Rxm5jBSQcGRth1g==', N'5305aeeb-03e1-4011-beee-efa3dafe094e', 0, 1, CAST(N'2025-11-02T10:53:46.0389603' AS DateTime2), CAST(N'2025-11-09T10:53:46.0389588' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (220, 8, N'icZ4SvxscVtGmdZ1mXpKYnNkJ18bDxO2p6Fe8+zGaxSX4HKnmbQWp3tV+FLNAO45tDn/sW3bVvc2Fv034Jw5QQ==', N'657ef26f-8b88-47a1-b65c-8872b4b5e5a2', 0, 1, CAST(N'2025-11-02T10:54:18.5484781' AS DateTime2), CAST(N'2025-11-09T10:54:18.5484753' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (221, 8, N'vf6hT315Q4z+ncAlzFaxZ8gu/7cxBjfxO0Gh+UJYyk3IHk0PDFx0mqlJaUAfr77zU/dVzaWcvzE/S7n2o1FREw==', N'36b0e5ce-dd1a-4a19-a884-b34fc5fb02b1', 1, 1, CAST(N'2025-11-02T10:54:21.6392273' AS DateTime2), CAST(N'2025-11-09T10:54:21.6392250' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (222, 8, N'RwPLiPEqAEdv8dm62TZf2t7ImUcnHFINmbdezUDLIODs4jmoAWj4vDINF8agF2dLo/QwsYdfkw+Kv8EOPuyMzw==', N'20602226-bab5-497e-90e5-81209497108e', 0, 1, CAST(N'2025-11-02T10:55:16.0824820' AS DateTime2), CAST(N'2025-11-09T10:55:16.0824808' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (223, 8, N'BEJf8RMh6wgxr3a4MgtuDLMuKlMZysCZO4KxnuI6zUBSqyGtvOQHhVhCe0RQ1FwZdbB3ZU59mkHi6gAKq+slWQ==', N'85b874fd-8fe5-4a1a-a31a-97b27b5b196a', 0, 1, CAST(N'2025-11-02T10:56:02.3837130' AS DateTime2), CAST(N'2025-11-09T10:56:02.3837100' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (224, 8, N'bwMZDULXrlqeaF1bXmrT6pR7tG/LeVh/M4Y3X6LPxNZ1ps/HeqVYsQkSZpUO+rKZVKw91DHOeT8iMuFmqvpFkg==', N'808eb8b4-8a85-478d-82c7-f343b50bb6a5', 1, 1, CAST(N'2025-11-02T10:56:05.9699536' AS DateTime2), CAST(N'2025-11-09T10:56:05.9699519' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (225, 8, N'ZKHz/q1Cowt6ALbqrKeruRdtzAV0ZVMI5hEWByqT1UawIGYEaqGlauFXb6+eBE+HiN83wnx2tYzGgCwQpfKJ/A==', N'563f780d-4f18-46dc-958d-3de71c5c0f98', 0, 1, CAST(N'2025-11-02T10:57:00.0736185' AS DateTime2), CAST(N'2025-11-09T10:57:00.0736128' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (226, 8, N'h5hg7LysPCIcZSWISDxCgqfu2UQM3JVL1xrJLQsTpWiou0w/3Q6ZQpYYVrmPqVM6YON93I/jiFNS3Wv00wJRHg==', N'57a9609a-091f-46d7-a65d-ec2ee5bf02ac', 0, 1, CAST(N'2025-11-02T10:57:35.2158904' AS DateTime2), CAST(N'2025-11-09T10:57:35.2158863' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (227, 8, N'jcK5I9GpNefSJulhurVt7Mh3KMjO7gACMOPJejfX+GYOhuINtw5yffcdPfXGi24E+Imqrd0YSlzmLoz5kkKoqg==', N'f3e7f88c-9774-4a47-a934-d1e43cf3f883', 1, 1, CAST(N'2025-11-02T10:57:38.7049705' AS DateTime2), CAST(N'2025-11-09T10:57:38.7049686' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (228, 8, N'4NITAZj6MYIdPZvzIjf/oj0YNClQos8XImQjRlOHoiN3hpWRosXOnorR0Q5Pq9y/BrsUGct1OD6CghoAxUaUOQ==', N'b20d48fc-a274-4b87-8beb-ada5ce092515', 0, 1, CAST(N'2025-11-02T10:58:34.0525206' AS DateTime2), CAST(N'2025-11-09T10:58:34.0525182' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (229, 8, N'gOcimDKfHcJ+Q4Mk5B/N7+chSogrTfqpJUyioElQUrXVZ+v9tqwFcHA4oc+/TCqKpsvu/eARpARQtKb4FgU7HQ==', N'e86f9c9f-128f-4c11-85d1-528d612ae9d2', 0, 1, CAST(N'2025-11-02T10:59:12.3622317' AS DateTime2), CAST(N'2025-11-09T10:59:12.3622305' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (230, 8, N'VzJClFn3dbU74683j92Yli7o18JEYng6hLWSDyFPuyZ63raKNZd0SVuskWc3BUOQBCgF+iBKyJz10aSqEJsJlg==', N'c8c0efac-311f-419b-a729-54f932e12b65', 1, 1, CAST(N'2025-11-02T10:59:15.6020265' AS DateTime2), CAST(N'2025-11-09T10:59:15.6020253' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (231, 8, N'i9qD/WbYfxNObsnn1+oTG7P9qLuwlO9ivLNY7BIgULppd4pFk3tJ8+ZQGf87jtwsRBDbAaF2CS4bMXKFP3ncow==', N'1ab1a62e-cdc1-4117-b0f7-c468519f8cd5', 0, 1, CAST(N'2025-11-02T11:00:10.0296808' AS DateTime2), CAST(N'2025-11-09T11:00:10.0296795' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (232, 8, N'jaNbHDsgRaKEaGJXjCxbCMqafpUhh+gnZedIlPsZAv5+iunVPI6fQ0UGM6XRb5zUhdlmYUyaF4y03VtKOlGwVA==', N'd46fe396-3227-43eb-9213-2d677505f845', 0, 1, CAST(N'2025-11-02T11:00:19.2917572' AS DateTime2), CAST(N'2025-11-09T11:00:19.2917557' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (233, 8, N'gg+t32CLYnC580ag5HJypale0UdXcaO2l7khpqmgCouEYv9YWJkaamQO130oDFqF+9iecW9CL0SwdocUFUjCzA==', N'223c2ec6-c07f-42f0-9a3c-216856846416', 1, 1, CAST(N'2025-11-02T11:00:24.0162680' AS DateTime2), CAST(N'2025-11-09T11:00:24.0162665' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (234, 8, N'1xRE3/6S5t6yEUbBODWAaXPMQ/jIHrZuWMruXNMk+McTZjGTE9LdRzEqNU4Y6ZfXVICq46sqzuuO/MYqFkErmQ==', N'73aa6d63-2260-415d-ae86-83dc71eaf7c9', 0, 1, CAST(N'2025-11-02T11:01:19.0483234' AS DateTime2), CAST(N'2025-11-09T11:01:19.0483208' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (235, 8, N'XtsDK2KyiPVRtpQpFnEK6Uq/0ktOnmWEKl1ZC5iO3S/zvCvma/uz7CIE6DK9xDAQahRhuUFxXK9Xes9lTQQh9A==', N'4698ad72-ac4e-450e-9ab3-0eca76cd9b10', 0, 1, CAST(N'2025-11-02T11:01:30.4405335' AS DateTime2), CAST(N'2025-11-09T11:01:30.4405316' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (236, 8, N'MrVIl1ybx7231az1OMYEexMMB4f0Nks78WqmEaVeQ7KodKKDTK5UWLP0+0lMBX3fFj92PsReNjChhTTEohVnDQ==', N'0d9c1bc0-6da3-49c7-b351-570ddcfe54e0', 1, 1, CAST(N'2025-11-02T11:01:34.9239224' AS DateTime2), CAST(N'2025-11-09T11:01:34.9239202' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (237, 8, N'FrsFU99IL5ecFjoQ30Z10s0s4bNyvyaL7YLyqBgOJXrqGSM+m58ae/zmvZ8JeE+b5w80NfgwACQ6leO5qwaMyg==', N'e9495586-ea6e-4477-b3da-5ef1e31cfcb2', 0, 1, CAST(N'2025-11-02T11:02:29.0236993' AS DateTime2), CAST(N'2025-11-09T11:02:29.0236982' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (238, 8, N'GbdmtJBs9Ycxr4eelYy4RCBwyDHQlAmrkMaeQg2MZcyC7nLeQwq9zUe1e0D+MQ6sAME/ATT/T48akfSsfoux7w==', N'1759b62c-a5c3-43ba-9185-91b6d2612454', 0, 1, CAST(N'2025-11-02T11:02:40.4323557' AS DateTime2), CAST(N'2025-11-09T11:02:40.4323542' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (239, 8, N'2LSgKHk6RMpqgwu8uXLHvi3SCocJSHnvdoC9VXEjE0SSzEDDEuyvQ6yGGTZXJUBuoh/8CIL/k6xDxaJ8gY1fbw==', N'9d7e1dfa-a945-4917-819b-63d98ffbe376', 0, 1, CAST(N'2025-11-02T11:02:43.6141878' AS DateTime2), CAST(N'2025-11-09T11:02:43.6141862' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (240, 8, N'YWOh9oddlLeMa31ldX5EiN8oaLJKsVbk+wecw9E6HEhloY8R+scFhP3JI/5J20QB2MrzENccaaqs/WuzI1RyxA==', N'46a581d9-2957-4cee-bfb9-d6f6edf1eb08', 0, 1, CAST(N'2025-11-02T11:03:01.1735927' AS DateTime2), CAST(N'2025-11-09T11:03:01.1735898' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (241, 8, N'MoZXciwJbF1vM8ab/i6TDWyo9qIk5JHNKkeJsGM2YOg6ON6LthdzC4nrAcpVp+KoFwm0mNWLPpSY3uNXkuLSpw==', N'a6b87d0a-8347-42bf-b449-b370bdccd740', 1, 1, CAST(N'2025-11-02T11:03:05.5991475' AS DateTime2), CAST(N'2025-11-09T11:03:05.5991456' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (242, 8, N'6o0bKWS98H4+mgFxhfuQF611forR0QyuE7/vEw/oNwhLOXxLeEc1fybcaLeYtkuc8JZm8ssLhb6iumZBKbrnIQ==', N'8e889b0d-4c23-4731-8a69-936c2bc8407b', 0, 1, CAST(N'2025-11-02T11:04:00.0537396' AS DateTime2), CAST(N'2025-11-09T11:04:00.0537373' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (243, 8, N'BqHuuM/PSYJohOIDBodL0vXFkkLuHJTYZiwakTxUdY0eAZTl9WorCy05nPqti54S/AKxYGnZ73PeCwJZxP74XQ==', N'49e17474-16cb-4271-90e3-f89e0b942d54', 0, 1, CAST(N'2025-11-02T11:09:06.4081278' AS DateTime2), CAST(N'2025-11-09T11:09:06.4077128' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (244, 8, N'NKKePgdgBMOsEn+tGGlEZrtjGNrZG6XW0Jfd8vDL3Tr2tiXXMe4jquZL8UzL7WME7bK4bWRrUbP2y72JyDTbUg==', N'62c3650e-c15c-4f7c-ae2e-4718bc372cb8', 1, 1, CAST(N'2025-11-02T11:09:12.9392794' AS DateTime2), CAST(N'2025-11-09T11:09:12.9392758' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (245, 8, N'qe8Tmu8MUi+xCgeqkoJmuHUaKZdpdq0d0xDaUPSx5Xkn+HOeLA+C2Py4sl9p9H+j526qcn7Cs2WibwbxmuLiLg==', N'36f6d869-5969-4cd5-927b-ada2ffcc2852', 0, 1, CAST(N'2025-11-02T11:34:00.0296412' AS DateTime2), CAST(N'2025-11-09T11:34:00.0296376' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (246, 8, N'nLFYJubOXZwBiUZPfRDWmHsXTRZOBjWt9dHhv4WUpNyOafclVznGfr0V7e03wYhBC3s3u+lSHB842dpmLQlJdQ==', N'e1a93954-3be4-4919-aabd-a96a2ebbb89c', 0, 1, CAST(N'2025-11-02T11:34:07.8856207' AS DateTime2), CAST(N'2025-11-09T11:34:07.8856185' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (247, 8, N'VSGtEyDxXCbhMhplcw2CyOTNvcaIhDTj/vlGlyksKhTTL1CrwQEZzHrxyhnmh0O/t/lFXM5AvL6pWiJieoiBVw==', N'56285ce9-704a-4d9c-9288-1b4f8ba853af', 0, 1, CAST(N'2025-11-02T11:41:33.7671249' AS DateTime2), CAST(N'2025-11-09T11:41:33.7662937' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (248, 8, N'CSSDmt/h6NA1F9aat0qi4FpORBy5Qx7EfGhehGjjW+2CUafvVweZkXER04Vhh5CHcCQCPzScMszi16vOxTbtvw==', N'6d7ebca1-08f4-438a-8fab-1c2260240dab', 0, 1, CAST(N'2025-11-02T11:41:43.8697953' AS DateTime2), CAST(N'2025-11-09T11:41:43.8697932' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (249, 8, N'JV5NsPLo3ZrWwUcNsca6ZzIPpzI+T+/1hXc1DrcctLmNp/UbZWRNvxB+fEiae+SE9Hpt33M/M0d8CnjIDezZWg==', N'6f924e3c-5b0b-4a8f-a4d5-d8b8520d8591', 0, 1, CAST(N'2025-11-02T11:44:07.2674578' AS DateTime2), CAST(N'2025-11-09T11:44:07.2673938' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (250, 8, N'TWB9852obnD9QawlvK3vPkYbpUGOb3+cAwv0zNO9DvRdq0r5ixPOJ3F3YN/b0GWhbsiY4g/ebQ6hIKyUu1NjNQ==', N'530dd1ab-21e6-43de-a265-b78e05752323', 0, 1, CAST(N'2025-11-02T11:44:15.5107485' AS DateTime2), CAST(N'2025-11-09T11:44:15.5107122' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (251, 8, N'XiBxoY8rmS30fY8P+izzFEvcx6KAaRp5wZfZIAPtDaE4P2JCW+ayk4MFx3KLZ7NDVNW5fahxRl2mutOKrVDaJA==', N'298d1aec-3b21-4e6d-b90e-ae244e164778', 0, 1, CAST(N'2025-11-02T11:45:49.0165441' AS DateTime2), CAST(N'2025-11-09T11:45:49.0165411' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (252, 8, N'/lFWTLBLkvhDCNt5xLIOGIkqZVe6eYVRwHvpSKuMuag7A9W3xyM5/ghxHUlqrSqHcPh2KSfxMZAUr23O3EqMpg==', N'db2a1822-900f-4bf0-833b-5e09f33f32d7', 0, 1, CAST(N'2025-11-02T11:45:57.5802433' AS DateTime2), CAST(N'2025-11-09T11:45:57.5802407' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (253, 8, N'c6tr3gKYgYsEfWdfQ8E/DsxQUlFeFYVNqKBkYJv+Iy3gYA+RIBEWatj/tKaAx1qF61YjyyTGOABt5Uhn+U6q1Q==', N'483cafe7-d305-45e4-9a0c-e0cb40f19631', 0, 1, CAST(N'2025-11-02T11:50:49.1921835' AS DateTime2), CAST(N'2025-11-09T11:50:49.1916314' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (254, 8, N'udb6+NEVaBhfa4eQ00f3rfWyb02b/P5WgHLuSeL1HgmJ5HuwHx53Y/aEJf+BzCTRyFsxsG/Lw1OutH9pQWVeVg==', N'3fda9e55-dc02-47d7-ba50-c0aa8c08d3eb', 0, 1, CAST(N'2025-11-02T11:50:59.4566485' AS DateTime2), CAST(N'2025-11-09T11:50:59.4566463' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (255, 8, N'qsjpYKkySMCfM0OqTMQCBXYFCC5PdMGy8emxBa4PP8U/FkwMHmZ/s18r/0dZmzf/Yi9CJqwu2iOCzTLcKNdw9Q==', N'23dc4570-64c1-46a9-9ffd-fa4714a90b82', 0, 1, CAST(N'2025-11-02T11:58:29.5076390' AS DateTime2), CAST(N'2025-11-09T11:58:29.5069997' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (256, 8, N'YS4STHiHJ/apLbRXDO3rGePu1zW6HVTxgSrFV7wpPNxfaZ84BrmyYjbSJ2Wpm5UhmLAUqoSiZxqqCYSB5lmCww==', N'1ecf2a2f-3f8e-45fe-bcce-f4d9222ed105', 0, 1, CAST(N'2025-11-02T11:58:38.1571817' AS DateTime2), CAST(N'2025-11-09T11:58:38.1571792' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (257, 8, N'WNtt8Tt1xSfMDYuwq6cwuTflUOd5b1NFYZ2jkevgx6f+KoTZv0xS84N6ntSUhkk0R8KrzDEAPI7t3HPcai8U7Q==', N'3f34f533-5d60-4ef1-99fc-7fa6741dbbbf', 0, 1, CAST(N'2025-11-02T12:01:21.7063950' AS DateTime2), CAST(N'2025-11-09T12:01:21.7063928' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (258, 8, N'yluqAxYfhVJVSxWeatVifj8NomvFIIQmidnirA2QvQGVoxVsBkex0PUqVvqbvU7hYxUgYcDVa4+NCmMc1eBZ2w==', N'1f1d8163-a906-4e01-bbd6-60127f8fc8ef', 0, 1, CAST(N'2025-11-02T12:01:30.1699498' AS DateTime2), CAST(N'2025-11-09T12:01:30.1699477' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (259, 8, N'KutqoyvAwoO1zAEQGQCs8UqihKy4nqpRFWJlGOGE8ZtOsJzz8OyI6jXBMRpOzG1Viw94rF2jPptoDiWPHRs/Ow==', N'04214589-fb47-42d6-9d09-7ef27d86a0db', 0, 1, CAST(N'2025-11-02T12:05:49.5596456' AS DateTime2), CAST(N'2025-11-09T12:05:49.5592839' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (260, 8, N'QaKJcJjp+/Pc0MJRLFYYzSZu7hNh16o9i8CCvAWYmhaMfuJSgh2dtGiO0Oh/InLWAKe+C7aSkerffDuwLpZXKA==', N'344688f7-c3b0-4554-a595-479d53f0d795', 0, 1, CAST(N'2025-11-02T12:05:59.4305804' AS DateTime2), CAST(N'2025-11-09T12:05:59.4305777' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (261, 8, N'9D9yXzpeJTafM4EVot15v1nM8zw7W7rYGMekDBPf6Bmkw8Y1VC977KznLpsnu84MRPNvjFeRWdhbx4Qj3ktNfg==', N'41793924-7285-4c50-8d72-41c211b8e5ea', 0, 1, CAST(N'2025-11-02T12:12:06.3231943' AS DateTime2), CAST(N'2025-11-09T12:12:06.3229049' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (262, 8, N'MGeJ8jIhIl77fWPaPJ+bJFL3MxicMWM9R952tBdr72uLjHtzazNXd90MPwkuo1l/pmGb61W0DZhBetzMh2K1ww==', N'261570ad-b8e9-4f51-ab76-fb3e7b6ee0db', 0, 1, CAST(N'2025-11-02T12:12:15.8820382' AS DateTime2), CAST(N'2025-11-09T12:12:15.8820360' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (263, 8, N'699XckOegc3gv4GiF96j3zWd6/h5TlW690MggtIZwHtPauC3FR2Vb9sQAvbJRXpTNj+0GVE/LCWRhSD5fgMkmQ==', N'b037aee5-0352-401d-95d4-cdd7105514d0', 0, 1, CAST(N'2025-11-02T12:13:01.4014162' AS DateTime2), CAST(N'2025-11-09T12:13:01.4014138' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (264, 8, N'7mLI+2x5d4+vRfcdDi48VXfxGIA/n8spnyv5Bg4Oqhb0zUQlLaZS6jZaC1ZRUGHM9nt2qCsrzrTnRu+GdI0U7g==', N'bca9348f-5faf-4dfd-936d-b59dad47928a', 0, 1, CAST(N'2025-11-02T12:13:09.4339988' AS DateTime2), CAST(N'2025-11-09T12:13:09.4339962' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (265, 8, N'7CFWUC+XsvJttecQLRDxoU76yyX3++5MqtKkAK/bQoEwjy9V/IA2L+JcwXxVHM3gJ14FWkZFAJlfaV0YGf7M9Q==', N'29f66911-2785-46cf-b818-72df72cf4269', 0, 1, CAST(N'2025-11-02T12:13:52.3704061' AS DateTime2), CAST(N'2025-11-09T12:13:52.3700819' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (266, 8, N'jtICKT4jN8A8ftDaNb0LWf6urOnSylayIcn6tjkuRP8flhxmH1WQ+up/0CrDiutLmaG/+NbU8S/BxnmPfFGg0w==', N'566bceb1-8b7f-4513-9089-2a2793a6e2cc', 0, 1, CAST(N'2025-11-02T12:14:00.8672414' AS DateTime2), CAST(N'2025-11-09T12:14:00.8672395' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (267, 8, N'w8OXJMdCm+EkmBKxC8QILmOtfGu3K7noIzP3TTUgJnzWtGNxL9fLVjzf9O/euHuXcEUcsyfOIoKLfCXoZpyEyA==', N'546366c6-b511-4077-867a-527472c9b967', 0, 1, CAST(N'2025-11-02T12:19:22.1337687' AS DateTime2), CAST(N'2025-11-09T12:19:22.1337666' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (268, 8, N'c6FMnDmGf3mIx0rf3NdEYHeYTIPR/mKyyWQwKr1Zpl6JM7DcIKHagNaUfI/S7xurPnVf93lb6GJlR3iY2o0M3Q==', N'6e9105fb-f4a8-494c-b718-6fda60eb4242', 0, 1, CAST(N'2025-11-02T12:19:30.7475964' AS DateTime2), CAST(N'2025-11-09T12:19:30.7475942' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (269, 8, N'ukZ5vfZPJPOtohrltS/89KbkDVVRO825Lk7DnISB3azwQv/iU+KKJPqljeVA4CJod/CR9XqTXelcdUqhosaBcg==', N'52bbb550-e38b-4ebb-af5e-c1e62577ff91', 0, 1, CAST(N'2025-11-02T12:32:50.3664684' AS DateTime2), CAST(N'2025-11-09T12:32:50.3661220' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (270, 8, N'd1Ya5dJpO9P2y6RDb21yU8I/4LegNuAC2UDZePEptXE/ARo1LiPtJz6HAnXiz2aT5riObAtBuA/tTQ2OuiMnyA==', N'02555dd4-2917-422a-aabc-af4482e2d1fc', 0, 1, CAST(N'2025-11-02T12:32:59.5176677' AS DateTime2), CAST(N'2025-11-09T12:32:59.5176657' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (271, 8, N'pUf91acfmqlHwEvbtb0kd4ws+qbkLW0gcFLKpPlQrfkIW5hbfvuDA4B8aw4+Q7/KOjmbSN4t512mnxtTBEJepA==', N'06cc9f54-da5c-42f1-a304-145e06077cf0', 0, 1, CAST(N'2025-11-02T12:36:19.3162848' AS DateTime2), CAST(N'2025-11-09T12:36:19.3155902' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (272, 8, N'RRcqBalwJAG0eHaTFhnwoY5/fegN+eN6u9wmizTz49OzKhLYOM4DImNkr8NTQfafQK3UZoOcTeDNC2HK/Vi1GQ==', N'2f868c1e-a2a6-4045-9b2d-d109447e11fe', 0, 1, CAST(N'2025-11-02T12:36:26.7664685' AS DateTime2), CAST(N'2025-11-09T12:36:26.7664660' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (273, 8, N'NrIEi7kIF3uzhQ3Vzbdc5ZbXifGSgn+tNAVjwGg6mfs0A81E1b3FyzV9M952x0PDDHtOAnZDamm+2kEhhsWg/Q==', N'b24b5f2a-2091-41f3-bf67-d5e30007de7d', 0, 1, CAST(N'2025-11-02T12:38:57.4548051' AS DateTime2), CAST(N'2025-11-09T12:38:57.4542042' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (274, 8, N'CBT3CUG6YhkxSIoOVk6au9agDXCVu14QlkY6CZSteBdrCp8V996rU7LErd8eiqOcTtRchdrY2wRqpMREk/YZ6g==', N'5d2f222c-117e-4f5d-8649-b7e009846314', 0, 1, CAST(N'2025-11-02T12:39:22.6490576' AS DateTime2), CAST(N'2025-11-09T12:39:22.6490542' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (275, 8, N'++iVHpLtu8H3+Jy+3/VLxB8rYuMc/IFPf48G2dsdP8JPFbo4ubHrX9I09V1FKy86GtQCd1V8aEYLokxFKqAYWA==', N'fbc72c3e-dbc1-47ec-a83a-60e08d9a53ac', 0, 1, CAST(N'2025-11-02T12:41:27.1911285' AS DateTime2), CAST(N'2025-11-09T12:41:27.1905091' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (276, 8, N'+sAV969SwGhXw591iiAfzqZJXKX1bZakjBdK7HCM/gAVWjbUKSWPYs0FBg+0zGAYXm+/O1XXpCmoqGyW7piriA==', N'bdc7b2b1-15fe-413d-a332-a234d3605513', 0, 1, CAST(N'2025-11-02T12:41:34.0148558' AS DateTime2), CAST(N'2025-11-09T12:41:34.0148526' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (277, 8, N'Jh+fPPcUHAgZsnZ6BRWH16sQsLPodWMTDFCuIxxDliOewMHW9Z2H/ecfGN7n/YFM8qCWIzpvcvbFdSX2YdtNFQ==', N'24426c67-297b-437d-9ba7-cc8511212de6', 0, 1, CAST(N'2025-11-02T12:42:38.5328581' AS DateTime2), CAST(N'2025-11-09T12:42:38.5328546' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (278, 8, N'lpOTmVjn6zJaJ/rQ48t6YuIor9KlrOuyv/w7/SEZzzcrZ9t0JwrMCez2wU7vb9N+b+NTv+bae5VNIfMWv3ZyfQ==', N'60c08ea1-fe04-4c34-bd9e-df772d942536', 0, 1, CAST(N'2025-11-02T12:43:04.2975318' AS DateTime2), CAST(N'2025-11-09T12:43:04.2975284' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (279, 8, N'Fcx8sP0SL7NDiG+ubjvnXYiG9Swcasl0yH0Ujjn7AhXyD6EKD2c99B8DS5DcWznIdue/Ps6WrT3yFDmbB/oaeg==', N'0f322fd5-b0d3-4e0a-b5df-dd2f751913dc', 0, 1, CAST(N'2025-11-02T12:47:02.4029508' AS DateTime2), CAST(N'2025-11-09T12:47:02.4026752' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (280, 8, N'g0WA14NzPLQRdA4PtCzCY4kBKDwPaKYTUcCUAU+YNxsnNKjDQ4S/0CpCW7/4OiozP7rq/R2OCQqh8z03FOLk3g==', N'6e2a91ff-b6b8-49cf-a262-42eeb46ea5ea', 0, 1, CAST(N'2025-11-02T12:47:10.4680355' AS DateTime2), CAST(N'2025-11-09T12:47:10.4680321' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (281, 8, N'6fezVtPxVK30fLfvQ3uYygaHXRWGdmiiyx0k1wRt1xLUhK9xXd62TM/b1EVljojD2exRzyc6iYffyrlZrVk0QA==', N'b672432a-653f-4504-82ec-5ab4bcdc2e1c', 0, 1, CAST(N'2025-11-02T14:46:29.8214716' AS DateTime2), CAST(N'2025-11-09T14:46:29.8202885' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (282, 8, N'lOlitRwOATboFCRdLZuCQF6qrZs6ZpnHepljro9k8QtJQFqLAANLApU5rzFyhthiosyZf4DJ39vnMjL7NfEouQ==', N'07ed8703-b434-4944-b99f-a3260d9a2d66', 0, 1, CAST(N'2025-11-02T14:46:39.0324812' AS DateTime2), CAST(N'2025-11-09T14:46:39.0324781' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (283, 8, N'in6GgNdyUd7egQ8ndYAl411wuV5iaGe9as4/5/TgD1y44hQxMVDQRVlzQ0/BNd5v0MJJmY2rRdtAQJe42+BuDA==', N'3a0c298f-11dd-4d97-bd7d-e7d2d787b671', 0, 1, CAST(N'2025-11-02T15:00:09.5275874' AS DateTime2), CAST(N'2025-11-09T15:00:09.5271393' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (284, 8, N'vlcwtjXjtqT97YvEM9ScrKmJWYEJurfxc7I8ozA9xJA0RFGkEaUKAjPDg9aStKvMnzpRnH7xs0AcZuw+kdzgQw==', N'f44348c0-04b6-4445-972e-3e397a6c9df2', 0, 1, CAST(N'2025-11-02T15:00:20.5683124' AS DateTime2), CAST(N'2025-11-09T15:00:20.5683098' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (285, 8, N'LT7GFFy0pK7MJOuFSSEndqBXHkPJ7d58Q542b+kC5Nr59uljxN5aABEaY2SQOiPWRnpT4sdAF7/LU9gyXJPkeg==', N'54be862d-81eb-4250-9473-6bef3da7a6d2', 0, 1, CAST(N'2025-11-02T15:06:26.9855395' AS DateTime2), CAST(N'2025-11-09T15:06:26.9850317' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (286, 8, N'/55SbhbfzNo2+L3QtZxcSk73rmv3Vd6IN1Y7OUWYbZt+peZOEqXhAiNHH46Frf46lEu7zqUW9W3sSqI6djmRFg==', N'236414a2-2f26-42eb-8a20-086c2852a34b', 0, 1, CAST(N'2025-11-02T15:06:35.7047064' AS DateTime2), CAST(N'2025-11-09T15:06:35.7047048' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (287, 8, N'wEfcUYVuRxuqRBU1xhp1LQxFu/JvEQ0eQO9ua+QbvqIH5w4y+CxP1m72ke8HBa5x93mCJ0xc89rWk4EHRU/jOg==', N'c94fb211-2579-4853-bb02-59d4014864d5', 0, 1, CAST(N'2025-11-02T15:08:06.1832309' AS DateTime2), CAST(N'2025-11-09T15:08:06.1828949' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (288, 8, N'5FgiuSEZMYEKuL+t24EgqwUeMbjimEe11NmQPwsKYr56YpnTOZH+gWTQLHX3wrIg6m1HMzDzJLO1Jcxolfnx1w==', N'd414f373-3d03-4815-b143-66519b60994f', 0, 1, CAST(N'2025-11-02T15:08:16.7394813' AS DateTime2), CAST(N'2025-11-09T15:08:16.7394783' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (289, 8, N'gOBdlFD/bF1UUba39FVSd28d5l9U/eX0j8z+mOXDBshPBevgdLq2JU2E+7OIj9rN4mqwnREXxZlAv8kpoRNVmA==', N'eaf2080b-34a9-4d34-b736-b12b57a4e964', 0, 1, CAST(N'2025-11-02T15:25:12.5044899' AS DateTime2), CAST(N'2025-11-09T15:25:12.5039146' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (290, 8, N'HxpY6JhJxZpVN9P2QF9FJw2CLmVObpd6J62lVk2CRr99I+Wz3wQ7IBizCw9pDeWrAdQXXbi/RL2QeB15DEP76Q==', N'a17e20da-0fd2-4d58-bd3a-2610861f8ec5', 0, 1, CAST(N'2025-11-02T15:25:52.2762439' AS DateTime2), CAST(N'2025-11-09T15:25:52.2762420' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (291, 8, N'5KB2GVvwvqVCcXxBefLi1EmuipDJtKxrFKcDW6gSLO0CP3pJKowhc5Cnz1+EfkQ+CIDn5nRsl+LEnbiMZ5vdQQ==', N'9f4854cb-16de-4adc-b727-6fa82a623b43', 0, 1, CAST(N'2025-11-02T15:30:43.1688726' AS DateTime2), CAST(N'2025-11-09T15:30:43.1686150' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (292, 8, N'KiBwmAE3D4rKIMDt7i4WTBePkkGL4UQEaEKTcke23YR1YafkbHrBiToF+GNu21jZRRhE7VYo5nJFur5f0D5xRw==', N'850d9909-5a04-43ba-b47a-e8a3e1e4b1a2', 0, 1, CAST(N'2025-11-02T15:30:50.6609717' AS DateTime2), CAST(N'2025-11-09T15:30:50.6609689' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (293, 8, N'JaszftmnTAeeUL9AKIAOxrg0r/PQ1/lSuTMChv7jPpKtA1Im2+N6uSTRMtGc1F6Iyy1LTezkR06aB7+qPbNFUg==', N'4e4949e0-b596-4a0d-93e1-62073d30fe4d', 0, 1, CAST(N'2025-11-02T15:38:32.2026770' AS DateTime2), CAST(N'2025-11-09T15:38:32.2026735' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (294, 8, N'ptzkO3add4rv3JlHqVLa5QVol62ZxLWPojlzArCh0Tcuz1TvmZZV2Vwk5xglZ4pXECH0zOGD66xdQhgCaGxGyA==', N'4586f3b2-ef53-40a3-b3e0-cfa38f2f1d20', 0, 1, CAST(N'2025-11-02T15:38:41.5442728' AS DateTime2), CAST(N'2025-11-09T15:38:41.5442693' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (295, 8, N'7aNvpaQ8mWXhvChkHEAI9X9o/XeTIZNF+37dI3zPIpwYFzOnZk4rHBrL/ScxIKHGYOV7i++4oGzexGj9Uh4H/w==', N'd3abc15a-59f9-48cf-ba75-9e199676c8e4', 0, 1, CAST(N'2025-11-02T15:50:57.7563515' AS DateTime2), CAST(N'2025-11-09T15:50:57.7563479' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (296, 8, N'THo4ndP1Q/oSAtVQYbHGPPZfmzeu2dLmFfFy66adZ+zRUl+QolJD0oMq96ZFLqbmAnqPK6ILvwpZm3ClntufUw==', N'7a5790a1-64f5-44ea-9069-263f6bc64df1', 0, 1, CAST(N'2025-11-02T15:51:07.9371521' AS DateTime2), CAST(N'2025-11-09T15:51:07.9371488' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (297, 8, N'Ty7kdOMQ4JrdoxdS7bGWC9tHbCYU4snJtOE/281fE6uzwFJ7u/zhpgQy+kVohvVlRj0dfP0X0R2thZgqniK7dg==', N'c603f3c9-e92b-42eb-9a8d-b0f82785a0e4', 0, 1, CAST(N'2025-11-02T15:52:56.6598748' AS DateTime2), CAST(N'2025-11-09T15:52:56.6598719' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (298, 8, N'JQ5V8BAM1ImrhZS5dor3iLvk0jT9vYNXycZ1xpzLg8grQmfInNlK0zR1tJDrk/liNHlxOsZRlrU70UeQogfHew==', N'c7d224be-3253-4491-8418-c1bf48704059', 0, 0, CAST(N'2025-11-02T15:55:33.4420131' AS DateTime2), CAST(N'2025-11-09T15:55:33.4420105' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (299, 8, N'vtNGGRaBtb1LXsGlZczuOoiNDXudfPW4sfT22PpjodTRnOvNLthApj7JdX2tj7bcCIv49GWLZb2eJHRTJLVL5g==', N'3eb0bdf5-e625-4f59-9aab-7e552e1b3a8b', 0, 0, CAST(N'2025-11-02T15:55:41.3632565' AS DateTime2), CAST(N'2025-11-09T15:55:41.3632544' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (300, 8, N'lxlsDdzDUpCbgdpctRWGvmwRblPHlXnwOuNw3EnI6N7cSjVMCYTDhuXKogn1r0SnPFuzzHnau9MZmVbnrf8/yg==', N'd836e5d1-ca80-4ded-a4d9-e0a8e4cbe0d7', 0, 0, CAST(N'2025-11-02T15:59:08.8993210' AS DateTime2), CAST(N'2025-11-09T15:59:08.8993187' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (301, 8, N'Te12NfujLj0Ieh2JszL9hA4yWXsctMHqhrW5vvi16eaB41J53Kfvty3jEzEgSuhOjjshg6IX31eQLu44vxRNiA==', N'2b25ce45-66d5-48da-bf80-93950d33ed69', 0, 0, CAST(N'2025-11-02T15:59:12.3585827' AS DateTime2), CAST(N'2025-11-09T15:59:12.3585803' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (302, 8, N'YCeTTLp4IILx6bXptlz0oPPU8VoyKyH6190iwn0RtO4Ukjn+aX19z6DBS+xfNX4AfKst7ZAbcgfha25+FYBkIw==', N'377f8dd3-8b0d-45c7-9575-cbe4c088de93', 0, 0, CAST(N'2025-11-02T16:00:05.8866274' AS DateTime2), CAST(N'2025-11-09T16:00:05.8863194' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (303, 8, N'RUMRFTYpi7yD1USwdNFiJ7siCmAkz9JpQf6rueiDExjJ50TrjIgdXE5BLvr9ZcgWEBIQ51HClfOtIB9Rm48nIQ==', N'9640976e-3497-4c01-8604-c65f20043d2e', 0, 0, CAST(N'2025-11-02T16:00:09.3966253' AS DateTime2), CAST(N'2025-11-09T16:00:09.3966235' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (304, 8, N'3TnvOmR7NeNMvtV8ESrJJy+/Iz7X+EwOHom/l/tbcHkn95ATY8a7NukekOtah3/GhKrd1QTSE/KbD0By5tuisg==', N'c51aff32-b4df-4b18-8256-f83c06d40745', 0, 0, CAST(N'2025-11-02T16:00:31.2823554' AS DateTime2), CAST(N'2025-11-09T16:00:31.2823529' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (305, 8, N'p2J1Fb7dC/9SyYFQKXyOlbNWpkoKzTaOT4x3JXZaujk8hyUaETZB//Wl4OFZtLE7oDa5baOhO7fr7/JGk0HylQ==', N'8c45dd12-3593-436b-b8df-9388909909f2', 0, 0, CAST(N'2025-11-02T16:00:34.7935800' AS DateTime2), CAST(N'2025-11-09T16:00:34.7935769' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (306, 8, N'RAl2f5HJhgBU5U6j4nXE3i4n6TYi82HEvEHe4ytF+1U6aqHtp7NutQNE6CDdGKmkaas96K1VH7toNNGhk/kdHA==', N'3142956c-2a7d-4935-b4b8-dd2d29397243', 0, 0, CAST(N'2025-11-02T16:01:00.8261877' AS DateTime2), CAST(N'2025-11-09T16:01:00.8261859' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (307, 8, N'hlyzcXhKWt5GKtTgeVPrXuJWneiEvQWUJ5BDcNsIUJLhzHoGwQo4uIcxtN1+rtTyLqRqslMyCVc2y5n0weKFXQ==', N'372b7e73-e7b5-4d9d-a221-f426842d69cb', 0, 0, CAST(N'2025-11-02T16:01:04.5056246' AS DateTime2), CAST(N'2025-11-09T16:01:04.5056217' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (308, 8, N'0Sivs0jnG8E2dQJlxxAS7fjSKYdJV/p/dyNdBH64y1p4urqykz9g7XWsj1jlVbCeuNUrfOkYLkphbkn9wQ9Gxg==', N'3e4ad893-86f6-44be-9d43-114a76a80c56', 0, 0, CAST(N'2025-11-02T16:09:28.3478882' AS DateTime2), CAST(N'2025-11-09T16:09:28.3478851' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (309, 8, N'1BCWTYvnSkbYsmTBSspd33KTJM2l2ncNCzK7X9KdFCrBIXMYsd48Zv4GmSzWI8uWr6jVUIrwuhF9Y96BpxedQw==', N'4bac69d3-4d3d-4d18-9601-4c9890c68ac5', 0, 0, CAST(N'2025-11-02T16:09:31.7184571' AS DateTime2), CAST(N'2025-11-09T16:09:31.7184534' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (310, 8, N'F5l6A7HOWyVNkn2F81D2mjNo/vggaVgzVJsayOTRmbcrm9FPYNeXnopb5Xh3/GM4fBiODPuhpVLK781F8UVo1g==', N'd589063f-8279-462a-a45d-ae9b011b0ce6', 0, 0, CAST(N'2025-11-02T16:17:24.1255678' AS DateTime2), CAST(N'2025-11-09T16:17:24.1252365' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (311, 8, N'mkzrmJgZ8RQK0jnYYtvUva37GizAIV4iLgjR8UEoiSSrK4ez1xF4G3Vv433b6E6RTrNrCWTzEod8svRZf8mBrw==', N'0e5d28bd-6736-4097-a841-2be5559f89c0', 0, 0, CAST(N'2025-11-02T16:17:28.4998279' AS DateTime2), CAST(N'2025-11-09T16:17:28.4998241' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (312, 8, N'37aHVbElYZBoH1+oBsG6XgcpKzY8jGZ8Vy72pAfB8XzbAG1d+CvFNc64doCRVuI5pMLEUAsjrOu0pSnLkVHiMg==', N'283e9706-b1aa-4e00-8760-20efc7258933', 0, 0, CAST(N'2025-11-05T07:20:30.6715697' AS DateTime2), CAST(N'2025-11-12T07:20:30.6713369' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (313, 8, N'AoVBMAIJA0iGm+fS/MAvd2x3I+1NQ3EJ+D46whQMTeKp12cNsVOVsV4aFuhLfx0Om9HiPd3TN3v86zQJy3f/9g==', N'63451f58-418a-4bfc-a18a-3d321ad7f0a5', 0, 0, CAST(N'2025-11-05T07:20:33.7784135' AS DateTime2), CAST(N'2025-11-12T07:20:33.7784119' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (314, 8, N'eCEgGB7MhInjS9Gn4tevCX2D25l3deLhbF5g35b8bDctx8qCvX3PwUEnycE6LiJybhVtGboLDtFtp4evvdKEcQ==', N'378ad5cd-eb9c-49a7-b8cb-7df50608b3ed', 0, 0, CAST(N'2025-11-05T07:33:47.7980354' AS DateTime2), CAST(N'2025-11-12T07:33:47.7980334' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (315, 8, N'O2oMa81rUS4l3Z30G1pgc1pVcX3PmA8wlmwjvBc/gIRddo0pfMpOVnHEBBBgMtbe4uuNUdhUxbDpe8NGjUGLJQ==', N'f22e7bee-daa8-4cc1-afd9-046a882692ec', 0, 0, CAST(N'2025-11-05T07:33:52.1948140' AS DateTime2), CAST(N'2025-11-12T07:33:52.1948124' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (316, 8, N'UxPsWBb7Fl4xikqNX6Ld380oZVJBDav5Hq11b13s/iyMWbsZ9Yu1MZ3SLOkEdgisT/DITDZZR2DepRt5k6o38w==', N'ebd4b01f-95d1-4b60-bcba-c0f085e20930', 0, 0, CAST(N'2025-11-05T07:46:15.1271501' AS DateTime2), CAST(N'2025-11-12T07:46:15.1271479' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (317, 8, N'DSlDwSkGfOqWpM5f7H0gGwI2GcQ6Us8EgJ95Qn/hxuRVbX8K0ijaf9rrm6n9eEmVP0bgjowT5M1fnrdTckFu2g==', N'ca650631-109c-4afd-98a0-57411595f967', 0, 0, CAST(N'2025-11-05T07:46:19.2082798' AS DateTime2), CAST(N'2025-11-12T07:46:19.2082786' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (318, 8, N'F+ArZHBAGkH/h47okT9eIROSgeUrbzGgsDw6o/4UgqmrpJBxpt3WF2edwlm9rjy06kaeTXKgbL/RXXZYFsGUPw==', N'ca099864-e109-4bff-9946-c992dc16399d', 0, 0, CAST(N'2025-11-05T08:30:15.1757796' AS DateTime2), CAST(N'2025-11-12T08:30:15.1755430' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (319, 8, N'00n+KdPO5X+gOp+IECTlotYfRKfpCaZS0/ZhRJpTPnyQNQwwqh9G98X1rbpWUjm1DpIenskWJPLTBbZcTppb6w==', N'c0e76b47-81c2-4a21-a159-e1231302251a', 0, 0, CAST(N'2025-11-05T08:30:17.9502457' AS DateTime2), CAST(N'2025-11-12T08:30:17.9502441' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (320, 8, N'Pz+zZQ7IvlqyTt2ttsIyUMElFIeWNdgycah9DSYwzsvyVok9SqlKCDaHxInyjYTCETq3UbQCNLwihlCkvAdwnA==', N'b2a37a03-1457-4bf4-9b03-98b72635b70d', 0, 0, CAST(N'2025-11-05T08:40:29.7811314' AS DateTime2), CAST(N'2025-11-12T08:40:29.7806683' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (321, 8, N'unZyoUMoWr9AtbjQKrsBkD6UjrhwWdh5MbA6WFRY9lspk5NMbb9xhB9YPymB8gjTyMLn0wNrvVGuVv8PsecEeA==', N'6853b38e-7382-4689-b175-199b1ba582ce', 0, 0, CAST(N'2025-11-05T08:40:35.1978679' AS DateTime2), CAST(N'2025-11-12T08:40:35.1978646' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (322, 8, N'xR/z/AFo2o2Jkxkn9CBJV7xoVQeOgu4N0Pte9inc4/mXD0PlaPUG1d0j1FokhUMkCdyRUO7eg3zvYojQ9niF7Q==', N'6ec40e8f-b088-47ea-9938-1d3b13bbd702', 0, 0, CAST(N'2025-11-05T08:55:07.0678222' AS DateTime2), CAST(N'2025-11-12T08:55:07.0678186' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (323, 8, N'y7lPhmTc4U+UtQVQndAOfLvlW4mro4FdLU+t3+n3XYXH+N88KE8d9reAHC9vQxU4d7en0zwZl/E6JoEYcPA7ew==', N'87b3c35f-95fb-4407-9384-5c37b592ff6c', 0, 0, CAST(N'2025-11-05T08:55:10.1728270' AS DateTime2), CAST(N'2025-11-12T08:55:10.1728233' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (324, 8, N'C13xTN1olwUOF73wdIEVNhnq+3/r2J9eWC3WW2sMp+FqBF6oHVLFzKVsO6q2phs+mJGBTBJOBvx9bKK82UbETw==', N'97cf5ea8-6b93-45ed-ac10-4dc69683fc21', 0, 0, CAST(N'2025-11-05T08:56:02.5866823' AS DateTime2), CAST(N'2025-11-12T08:56:02.5866804' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (325, 8, N'p9wqiLchbw0OCTMfWlyu/0Y1BcdJarbD/08L0+zUw+q1y9FqKqt4dFXJokLh/yrMxkYg+81IRm/nyBXgJ0/sqA==', N'6f69ba6a-298c-49d9-bcd8-2beb659a24bb', 0, 0, CAST(N'2025-11-05T08:56:05.5631300' AS DateTime2), CAST(N'2025-11-12T08:56:05.5631270' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (326, 8, N'jgN6gCk/rZWufN7QUwa+5zgn+Q38xHWdIO71Xx2QgMZuL1G1ldVCp/ZixwEyhifZhCMVHP1gGN+5D4Llf498gg==', N'30f40589-8493-4346-857e-1f57392d15d4', 0, 0, CAST(N'2025-11-05T09:16:59.5070943' AS DateTime2), CAST(N'2025-11-12T09:16:59.5064645' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (327, 8, N'Jtx+b8/+1Y/QOZLdf8qZS7rOtDQxyQ7/4WbQFN5ugYFJGogd3yQDzlZHBZ1iIl5qpY+r0EchjkPZMTQRtLhhFQ==', N'9e72ece4-7af1-4f17-b046-4adbef14d60b', 0, 0, CAST(N'2025-11-05T09:17:03.8753060' AS DateTime2), CAST(N'2025-11-12T09:17:03.8753034' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (328, 8, N'dopUh79yVSl6b2u4UPhX4Ave51pTX2WqeUqsrB/Z8SK//iwJ54vgc+Y1s1RaHXEs1RBHLxOMPyLCfBTBz4CWOg==', N'378d0347-fdf7-41a7-b658-e618423d6d5c', 0, 0, CAST(N'2025-11-06T06:25:45.3731041' AS DateTime2), CAST(N'2025-11-13T06:25:45.3727343' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (329, 8, N'sWjZ5dwXAHQ0tRtHWjMTLrSuLAq2kHqgtDJzuhP5Ih4SnOEQ4f4lMAok6wHQVn2UDrSo9qLy4IaN6LvQbgswmA==', N'f1bc1f8a-ee1b-4edd-8777-657e0e644ac4', 0, 0, CAST(N'2025-11-06T06:25:47.8108876' AS DateTime2), CAST(N'2025-11-13T06:25:47.8108859' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (330, 8, N'TLIxCxd1wqtO8f8kW0Y5qurIZW02lBfsjwgwmm3S4KkicRb3D/x/KuQ3yCiDY8RpCgIMSUWhz0L+n9IWxpAu8A==', N'83ceff88-495b-4980-bb6e-1d28d26bace1', 0, 0, CAST(N'2025-11-06T07:08:26.8681341' AS DateTime2), CAST(N'2025-11-13T07:08:26.8675707' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (331, 8, N'j8Kphr558vnyU3fgxBBOeqYGx3Z3Q8+Ypl+r0pRQYlLOMUmzWKX3cROCldmdJZT0wYJE+wi7vV3vUIiRuxbQ7g==', N'890fef88-6cb0-4cfe-ac53-8c623161a564', 0, 0, CAST(N'2025-11-06T07:08:29.9286579' AS DateTime2), CAST(N'2025-11-13T07:08:29.9286547' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (332, 8, N'IS6dGMdBkJWwV7kPzKMQRRyc6NAHRpoRQugqsyi4c57NwkaHcxedypObYS9ohjo30QtpErLAzZV7gWLeNYGaxA==', N'b5c9f344-02d6-4c4e-b6f1-485cb3beffbf', 0, 0, CAST(N'2025-11-06T07:27:26.8005919' AS DateTime2), CAST(N'2025-11-13T07:27:26.8003462' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (333, 8, N'v0aASi6aFe1pQpxGtVXEEONCnjseHJjZ3Bil4UIZgmYtD4RDmXhpCDqV/p7Q6hS7TbaRowg4AOx3qbJxtX0x4g==', N'cbf31557-6bae-4982-8150-0de36d96fe6e', 0, 0, CAST(N'2025-11-06T07:27:31.2540846' AS DateTime2), CAST(N'2025-11-13T07:27:31.2540821' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (334, 8, N'XOsmJjE7DRkRy2e466HLRZ5eRbNtKact78ldds8nfWVCqrTLSZ6M9QS9g44s+12nS9InpsT2D9IZG4XEZRTOHg==', N'ee73142e-9b59-44bf-808c-3201becbd9f5', 0, 0, CAST(N'2025-11-06T07:41:52.1602050' AS DateTime2), CAST(N'2025-11-13T07:41:52.1602027' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (335, 8, N'9mk3mICeaKjwSMzVJEi7KPCLaOglf5L7zPxozrOiDtLztcGfVScVQMXzyozWh/jfYc9It4/svYNYZKD4HVPn/A==', N'537f45bd-8875-411c-821d-9242466ff223', 0, 0, CAST(N'2025-11-06T07:41:56.0330566' AS DateTime2), CAST(N'2025-11-13T07:41:56.0330519' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (336, 8, N'4qGtSLdGTl61E3yJfnXcQmPXc2rcNKsUPOG4fD1y/+OmXavu+HkUcx+gpvfYNssXxs86JAjgMEuYzOxQ0NujlQ==', N'09261ae0-9799-4250-8087-50d9af2267b0', 0, 0, CAST(N'2025-11-06T08:52:00.6823614' AS DateTime2), CAST(N'2025-11-13T08:52:00.6823579' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (337, 8, N'gOPTQHToMcYGI/bqY1SeuxmF4MewBKcXjFpMvvT0jQjgVHSke2z1LBVM6DjMjA4qQfHWkh4Gog74ARnvOfYZow==', N'c866fc34-ba6d-43bd-90b6-45568df57bea', 0, 0, CAST(N'2025-11-06T08:52:06.5649104' AS DateTime2), CAST(N'2025-11-13T08:52:06.5649075' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (338, 8, N'zXHC/0rm941R4cp6hNbP9qVvygGpRT99oMVcf058UHJsoH2NdFUYL2lzi2HxxOUvQUN0JXt3jf4Z5PJtix7fVA==', N'62e52eb2-deb6-46dc-a162-9d663bf45cd7', 0, 0, CAST(N'2025-11-06T09:03:55.8923080' AS DateTime2), CAST(N'2025-11-13T09:03:55.8923038' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (339, 8, N'O5Ba+z4Qs96SuOksm/PEld5CLcDeWgJQwvwGLm231DagrjnaqMn6M06kz1VKWTGCU2utRbVdmZWmss4wQUDr5A==', N'f91c6038-c070-4d28-927f-c12e1a711d63', 0, 0, CAST(N'2025-11-06T09:03:59.8254382' AS DateTime2), CAST(N'2025-11-13T09:03:59.8254345' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (340, 8, N'38MgjV2nAPoaT+I48V8uibIv7v6dVhWopF1iFNb+NvchZVClcM5QjHvh/ARyOaZaYYTYVlWeHMk37aFf0OQwyQ==', N'767108fe-e035-49df-89d3-41d06091f42f', 0, 0, CAST(N'2025-11-06T09:07:49.5701383' AS DateTime2), CAST(N'2025-11-13T09:07:49.5701346' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (341, 8, N'wSkbQGvjeZVFVRu/cI3QrSpySQfhjDZL/SpONShvIXhxn8vqxN0H9KZZBjDptez+ZSghC7xtBFpbtEUk5ybl8A==', N'0efcff53-4b09-4964-96ce-15680e7f0844', 0, 0, CAST(N'2025-11-06T09:07:53.3810289' AS DateTime2), CAST(N'2025-11-13T09:07:53.3810250' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (342, 8, N'C82MU0zGE1sNvQalqVcAPiin7J291phIsXKyjJ+SjV8HSUMvQ/Yza9TLocmDtDrkavmvgTh7FZ9J6PPcfL0nBA==', N'614841f5-929d-4465-85ac-0b7e0eacc130', 0, 0, CAST(N'2025-11-06T09:26:06.1971766' AS DateTime2), CAST(N'2025-11-13T09:26:06.1971729' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (343, 8, N'siRSERJ/0opGaDv/7ImtVL7X9qWVEYzi3eT3wDIrRxP4bIINr9hQsUmCcQg0q9J6h4BOmzaFp6vcahnR0tlspA==', N'21c087d2-adbd-4d8e-b965-49d205562559', 0, 0, CAST(N'2025-11-06T09:26:10.5442467' AS DateTime2), CAST(N'2025-11-13T09:26:10.5442422' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (344, 8, N'ywdQ7ajTE7/qz9zrEgUFokMP456PEms/MxK8lXcjVq9NeJihr4R3MuwNv6k+RQsGue/8XKeEgy4hbC6AI2i73w==', N'5d51ab04-ac1b-4189-b4d1-2989ee0b0074', 0, 0, CAST(N'2025-11-06T10:03:49.5263431' AS DateTime2), CAST(N'2025-11-13T10:03:49.5260068' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (345, 8, N'nWXKKyAt295iaLlDLjqfZ6j5idhPQbsSXYBiaDjlO15bIq//aBDJxQuDcCGEjR9lrhg5jmEgHjcHHDQOcd2vLw==', N'18b28e2c-a955-4f56-9843-7646e9a6ff5a', 0, 0, CAST(N'2025-11-06T10:03:53.3464667' AS DateTime2), CAST(N'2025-11-13T10:03:53.3464614' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (346, 8, N'jG7ihNs4GCHSxJXYwB4i92CigcUDdOAmUyYgGz4awHKuX6jduhkj/2HHHf4e34FOEy98WI/xdxAZrRCchjuSOQ==', N'bee2f281-943d-4287-9e09-1118b3db859b', 0, 0, CAST(N'2025-11-06T10:08:29.1329150' AS DateTime2), CAST(N'2025-11-13T10:08:29.1329128' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (347, 8, N'mdaR+x62BFV2R+5rGi5LeTROyLr2E0AG9HC53JL2xN09SlGbKgKWEgnjHMU0XP9jKB/Z6r4DiSe13zRsIgKlNQ==', N'cb065ae1-ad69-4d5e-a53c-386166ab5d55', 0, 0, CAST(N'2025-11-06T10:08:33.1445116' AS DateTime2), CAST(N'2025-11-13T10:08:33.1445088' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (348, 8, N'vUMl825Gt+/BEisH++OrMij+i8/wZQ909+CZ5OhaH/ZJPgKq/lKAW1sLm7ptwa856Bpa8sgVYdQJZVffUEQwQA==', N'be719ddb-734a-47df-872c-5e6eeea99f2d', 0, 0, CAST(N'2025-11-06T10:50:51.3702563' AS DateTime2), CAST(N'2025-11-13T10:50:51.3699230' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (349, 8, N'raccHALasX+pSnK41o5405U1x5vMWbMl8f0aAmHFk9n1wM+Cb7nMbbzwYqZ1FjpN7NHls4uf+C9tFy/Oq+yrzw==', N'99e4d881-4a44-4714-9e2c-db24dd04d1f2', 0, 0, CAST(N'2025-11-06T10:50:54.2658121' AS DateTime2), CAST(N'2025-11-13T10:50:54.2658083' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (350, 8, N'GXTYvvNAWwkejm1mjbrXTPXjyip5/K65WL+CFhqSQCaaHgK05IGbA5aBSo/pI1OzKW79muvCEJqBPnBv+3Y3bA==', N'd2263a4d-2ca2-4139-9e18-5b39247fee5f', 0, 0, CAST(N'2025-11-06T11:12:31.7251639' AS DateTime2), CAST(N'2025-11-13T11:12:31.7251609' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (351, 8, N'5hO3H7JyGYRceYHfufl1QGkW+mFewpNygnbNfp9ezSPq3w6mmwprr7sK8s+1B02QqtQl5XHxy6tPBkc9LRpwrg==', N'84c8d36c-fc6e-4294-8c53-8ebfb45cbe24', 0, 0, CAST(N'2025-11-06T11:12:35.2793206' AS DateTime2), CAST(N'2025-11-13T11:12:35.2793182' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (352, 8, N'K5LafChUrpr1I9kRfZoig0WB+oXYT3DenNupq1u4QuN65S2gOwCKOodmrcHDFrUQl2nBP/sY93oU1gt1EEJSqA==', N'392b6a8c-9822-48d4-af75-93b384ee9666', 0, 0, CAST(N'2025-11-06T11:30:55.3873461' AS DateTime2), CAST(N'2025-11-13T11:30:55.3873430' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (353, 8, N'g6/nOuOUbPTEK0LIqxiBo1rhPEQGwgqWltY5soqKx2j/7xdaXlt5SzxCvgDQR6yT/1yxX8AiWn1J9pJAGqs2BA==', N'de14272d-8bdc-4e9c-9ab3-76af181c9b54', 0, 0, CAST(N'2025-11-06T11:30:59.2323521' AS DateTime2), CAST(N'2025-11-13T11:30:59.2323498' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (354, 8, N'CnPxsO9SFXBVdBf3zEihuR2AanSjq2uGXzj6/aO1Gty1wCSgl3FduHy5SNP1P6wDt1AOgRn+NqjCC7siBvxgTA==', N'7fd0b588-762d-4415-9d79-56fded183aa2', 0, 0, CAST(N'2025-11-06T11:45:07.4900277' AS DateTime2), CAST(N'2025-11-13T11:45:07.4900237' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (355, 8, N'3f4te+gsEY4xf8SWHqOdinrENR3MiJKWCP/SLLoDHjH2f9gh4ZmL4xjEcpxTrVX8Z8lD0tvu1UBDuyTJcGCR+g==', N'7fd06210-6242-45a0-9c63-6d674e7606c4', 0, 0, CAST(N'2025-11-06T11:45:11.0628478' AS DateTime2), CAST(N'2025-11-13T11:45:11.0628454' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (356, 8, N'sExOC3+qjcEcV6A9kFiOO0VKWe6jAbdSS3YiWKBQuO+K7G5hZxVl+qhCYDP68zo8A8Kxk2iNcCN4l8c6lCg01w==', N'68c37a5b-bf0e-45b2-bba2-c001aa8d3d5a', 0, 0, CAST(N'2025-11-06T11:53:41.2112249' AS DateTime2), CAST(N'2025-11-13T11:53:41.2112210' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (357, 8, N'kqWHlslxp8Xj5+F8RrRJ7AW6nVBRcAP5TzclS+6byOW83qsMfOVGE9Z1Zr7S5kSTvlPmZF16uFM9O2wwNBYwig==', N'8a496887-8966-467e-aecb-4d4b36e7263f', 0, 0, CAST(N'2025-11-06T11:53:46.3288215' AS DateTime2), CAST(N'2025-11-13T11:53:46.3288192' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (358, 8, N'VBCGkJhDySWcZaPMUDeSzk1SpiRm3N5oAaVK2Ov+T83QpweWlND3R7ZIMm+BTpPj/FQxYiDaMlt4F+VETjciVQ==', N'0b2fabfe-299d-4f04-a92d-bfc489ca2623', 0, 0, CAST(N'2025-11-06T12:09:35.6451361' AS DateTime2), CAST(N'2025-11-13T12:09:35.6446359' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (359, 8, N'A6lLXJlMKGPtFSuTQyBmmBR6yRm4yjE205BNTra0kfFM9T4KcZjB4yaSS0Ar4lf9HthVoVbMHkjI0H01dolheQ==', N'24543676-a042-41bd-bc25-d0d7f8f83bb9', 0, 0, CAST(N'2025-11-06T12:09:38.6114985' AS DateTime2), CAST(N'2025-11-13T12:09:38.6114947' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (360, 8, N'QMiYU22epkDyGU3Rj1V4feajqTTWir5dPZoExe3f85bekDi7hz8ECPAKOPCsQ5sE9XrowvxLT55KDg0Q3/YLyw==', N'5bbe2054-8c6e-438d-a6b5-284d1ce1bf3f', 0, 0, CAST(N'2025-11-09T07:03:33.2983026' AS DateTime2), CAST(N'2025-11-16T07:03:33.2974049' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (361, 8, N'IK51CmocMW3uO/YJ03QrxxrNzVkJGU2zVtdA/BnXwdfhto7wuwlE9OtX2+5gdM7Ujgo9ksHjkiODWhd9hwKOvg==', N'ac0b3cd5-7370-4780-a3cd-9e0b14b94337', 0, 0, CAST(N'2025-11-09T10:25:38.5968889' AS DateTime2), CAST(N'2025-11-16T10:25:38.5961710' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (362, 8, N'TVoz5n8hyiz6jyAyt8Ia86UH19xdJPECrV/Av50lJV1LzcYYbViw6+pFs6ztMhZGIaWtlMPHfOo5Bf3tq4bYRg==', N'a83b4e72-66be-4750-bce4-284578e3ad28', 0, 0, CAST(N'2025-11-09T10:25:56.1106894' AS DateTime2), CAST(N'2025-11-16T10:25:56.1106850' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (363, 8, N'c14FZCJc1Q5PfB7GOCdx2tOVEvCFz3/NqEkozKgwxnc7mPCtkKEeHcwWggWWeG9bNqUFOa5cBHnt2+kyBwso6w==', N'a4af605f-299a-4842-abe6-e70c3149e158', 0, 0, CAST(N'2025-11-09T10:33:16.0534861' AS DateTime2), CAST(N'2025-11-16T10:33:16.0534831' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (364, 8, N'AnNypLPvHwqSZKj5RJCanD1g+1qF/WpGb3hSetREy7986nAx9Hgpg3F2E0DnIjhWUUIaDGSXioYPMkDSs3OJ8A==', N'2406e3de-5244-4e8f-ac35-f724b9347ccf', 0, 0, CAST(N'2025-11-09T10:33:22.0422819' AS DateTime2), CAST(N'2025-11-16T10:33:22.0422796' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (365, 8, N'dq3kY4iyBPGhZ1YfoM+WLV4E2+KuhgHBWKHXujrvQMItrvVR1kKurmwCUntylJRdJuDZIVtYtZUit/JkL4KyIQ==', N'7dd9109c-3f82-401a-b649-858570accf72', 0, 0, CAST(N'2025-11-09T10:33:35.7603627' AS DateTime2), CAST(N'2025-11-16T10:33:35.7603602' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (366, 8, N'e+UgbFBAfA+ns2tRmz90YSKJ8wbwolalTd+r4lWA5mDNb3J6D1y64lLAoGyCp/EjhaKt40oVrS74zSN7lyn1uA==', N'7a678d48-31e7-4c42-b916-5fa1dd197662', 0, 0, CAST(N'2025-11-09T10:33:41.2782859' AS DateTime2), CAST(N'2025-11-16T10:33:41.2782840' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (367, 8, N'A7wp0SvMR21Dp2fFwgxIV5duoYMzgmlyp5rP2d39BZ8WL/J35wVh01oB8I1KM6bWSb65gPGn/Vq4T6lnJBmgNQ==', N'5791d36b-5ca0-4587-a80c-f187a7ba7eca', 0, 0, CAST(N'2025-11-09T12:35:03.8169790' AS DateTime2), CAST(N'2025-11-16T12:35:03.8167569' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (368, 8, N'7n4fDOlMVdVontSwpET+2Qve/D5QmXwatCu7M8hLkMPjaDepb3kqflH/9ddPZxkbTmiFKIe/trzuYazLJHTLpA==', N'8a573dc5-9044-4312-8e11-23d810ef0a87', 0, 0, CAST(N'2025-11-09T12:35:26.7711367' AS DateTime2), CAST(N'2025-11-16T12:35:26.7711337' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (369, 8, N'VxHRad6FLYqM6YRJ95sVUwv/FC6w41qTAFICY3Gs37aNk8Ar+FX6KO06YUgHsn6UfA7XjRJOsYWn54bdycS3dQ==', N'b7764d15-fcae-4813-881d-0b89d309833f', 0, 0, CAST(N'2025-11-10T04:55:32.8688055' AS DateTime2), CAST(N'2025-11-17T04:55:32.8681537' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (370, 8, N'yGLrLQMAXVbi6wWJJe9bnNaWCrOAgMEmvJvKhbHXiO2y+OGFYAvLj+klnF2t/rQ9CcQOhkCt+goHEt8eRwbuEg==', N'3babfe17-de29-4229-a00a-5b295bae3f37', 0, 0, CAST(N'2025-11-10T04:55:37.7563078' AS DateTime2), CAST(N'2025-11-17T04:55:37.7563049' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (371, 8, N'XrWfwlRoSZjJznLPVTskX9tFpaGro/xRRz+AW6vgnmuyWkezXDNDBonva/q4/N8xvmWRZHG4w3xH5tA7NG9YqQ==', N'efd88821-1d0e-429b-b669-a90d73044ac3', 0, 0, CAST(N'2025-11-10T04:58:21.6277135' AS DateTime2), CAST(N'2025-11-17T04:58:21.6267937' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (372, 8, N'E5ETlW/uzmNk1CVu/g9KmHgTD3Y1yFxoZrnITiXL/uwujWrUIlCmFd0cIXeUcfhWlVd5ZMo4WGbAHbRZlUr+7Q==', N'f53943aa-df67-4284-b92c-6548b3b87348', 0, 0, CAST(N'2025-11-10T04:58:24.2084134' AS DateTime2), CAST(N'2025-11-17T04:58:24.2084106' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (373, 8, N'V5oAEt2gk2QnyV7D2JcPnQUPp2KqUEbmKEOFdS6nnSRZCFUf4WZXfINTv1yxtsoop70P2v++xX6YJvKeDEeI6w==', N'd0d11d44-c789-4a54-a5f5-503a604c35ca', 0, 0, CAST(N'2025-11-10T05:07:27.9256671' AS DateTime2), CAST(N'2025-11-17T05:07:27.9256643' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (374, 8, N'CfJqXXoY3nrLOQDM6BJyrpndnmFQDvjzo8PepGAgUSnTzdxinH/ZLx9VVY1jo/giRM79xNkUh3cokCQugJe9hg==', N'91a1b251-7012-4f66-a862-512e34ef738c', 0, 0, CAST(N'2025-11-10T05:07:33.1786830' AS DateTime2), CAST(N'2025-11-17T05:07:33.1786793' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (375, 8, N'qDh6bg3uCSg+EWzZlB/zke8vMcX3Y9uswwUG/etJInW3RiKDph9K8UHn9yNiPgXCHjrWK6zM/LqMKCH93lOSjw==', N'3eafad61-54fd-46f2-81e6-30c0a90ef3b1', 0, 0, CAST(N'2025-11-10T05:08:05.0948968' AS DateTime2), CAST(N'2025-11-17T05:08:05.0948945' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (376, 8, N'7cpZKx4eXc/PySxIcf+cFuXNfhKjQ+vC5mrbC7VpNoAo+8v4QoJo+PaDRCyw8V6pQIRm3dIhTVoZ2dgcDJnovg==', N'8fffa113-e050-49a9-b3d4-ad971f7aa1f2', 0, 0, CAST(N'2025-11-10T05:08:25.2841931' AS DateTime2), CAST(N'2025-11-17T05:08:25.2841875' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (377, 8, N'A/ooVEH/i1AtUl3eyXHbnZIaFVae6bJzzIJyMRC7QdXdkGyAo+mRu2dQ6UxB+KHZeHEN6cOXduI1EmOfo+pLzQ==', N'e5a0e7dc-e3e7-4a6e-9e08-9cdc776e0f4e', 0, 0, CAST(N'2025-11-10T05:10:38.5060078' AS DateTime2), CAST(N'2025-11-17T05:10:38.5060052' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (378, 8, N'LIp3IkWvKuYIpLQ1VqVeMpLAdrDc/VDjYvyfqRNP/zQGDb4SHZDQBMfRj6IamUN1UHQUy6sL3S9AuyvqJfIFzQ==', N'10714a27-1438-43c9-8969-2e01ae5324f4', 0, 0, CAST(N'2025-11-10T05:10:59.3165593' AS DateTime2), CAST(N'2025-11-17T05:10:59.3165567' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (379, 8, N'sKNHd7ITwuLFjBdepl2ohW+OomwQCaoknztW0nwfyqowLiMhj1vqATHfhXZfk0QCjCttoBSaNB29jdcCzSQqdw==', N'fec040cb-795f-4320-8938-3b8bade1f09f', 0, 0, CAST(N'2025-11-10T05:11:09.2097973' AS DateTime2), CAST(N'2025-11-17T05:11:09.2097944' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (380, 8, N'RiowmsLhvuUor9Xqq0P0FJUc5IyZPHfP3PBjgRJhhlf0LsYhTlwSER+IZmOa2aA+T8pD4kYdztDh2hICuP+bkw==', N'ff31f372-a56d-4c0a-bc17-b88f3087825f', 0, 0, CAST(N'2025-11-10T05:11:14.4797932' AS DateTime2), CAST(N'2025-11-17T05:11:14.4797914' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (381, 8, N'D16tJKOTpiDKV1t2na1V73JGkfYWEf2gEGr75Dt0A4B7qhTQpjZnLSrLapgThHvNzc0qglwbD2Po9i7pLKuC1Q==', N'8d91bcfd-9a66-4857-9c71-b852f7003d32', 0, 0, CAST(N'2025-11-10T05:11:29.8577527' AS DateTime2), CAST(N'2025-11-17T05:11:29.8577488' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (382, 8, N'TE2fqx6HuhIPkBS+zcDut/URuz31wF5EnWXjNFewzpSS+zMhnKeFzkDSdxuNzhxx1i65lavwdJjbvbKeurZAug==', N'8a728f40-d59e-44f1-a029-744a516b9c2f', 0, 0, CAST(N'2025-11-10T05:11:34.0348451' AS DateTime2), CAST(N'2025-11-17T05:11:34.0348420' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (383, 8, N'qYsY940zw5JaiAHW6euGGAU9meuXexDSe93EQHRugXx+45ntE5Zz7Si3atYwjjXGd0ZrXa3fcOvl6qzIR0namw==', N'28016623-6a20-4f60-8859-e77c2893b62f', 0, 0, CAST(N'2025-11-10T05:51:03.2108661' AS DateTime2), CAST(N'2025-11-17T05:51:03.2108637' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (384, 8, N'GPJxq611zT0+YQMkHWXtUjUQeV2fTNT4boPMbkggWvXOjxCppN2fM0rivELTyiffvFzqNb1fx4ok7ddaEZLR7w==', N'26816c35-2506-48b2-ab77-93afb2db874b', 0, 0, CAST(N'2025-11-10T05:51:17.2982856' AS DateTime2), CAST(N'2025-11-17T05:51:17.2982813' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (385, 8, N'8fJwVfpQo0dCKXaGHE65FSQur32/3mo98oO/Ossy3AIEDuFhAufHZGqr014X8ivMVJ9JyK+y8aJ85LQv9lFAXw==', N'90086cd1-5060-45c8-9ac3-0f38d9fd56c6', 0, 0, CAST(N'2025-11-10T06:21:39.2433065' AS DateTime2), CAST(N'2025-11-17T06:21:39.2433012' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (386, 8, N'ZJt90TSC275e46sdEm3OlCHdhYMiiCcclzSR88rLx/WlcIjfHNf8Ya0zgiaXJZVVWbAmzUj412fhrBqUAz8mwg==', N'12cd1f6a-7306-4560-a1b5-338ea096b2cd', 0, 0, CAST(N'2025-11-10T06:21:52.6606361' AS DateTime2), CAST(N'2025-11-17T06:21:52.6606331' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (387, 8, N'Vkb71YNNEx3ym+0v4KrxP2lDW1v0kMFZoOpWbFtwbgomLETrbsyRyesGbGBOdvQaf16iFgyH7BQmWl217TT6SQ==', N'e1354797-cb50-42da-9c0f-eee1292741a2', 0, 0, CAST(N'2025-11-10T12:16:06.7355958' AS DateTime2), CAST(N'2025-11-17T12:16:06.7346069' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (388, 8, N'NUZpOVIxPI4EoBnAtbnl7idfEI7+LCWkPj3A6b9QmTzGEhiAhr4EV7mlxSlAn/Ayo9Irq+ZbL5kYkVtDfIcL5w==', N'22892018-48a9-4226-ad5a-c7576d614f36', 0, 0, CAST(N'2025-11-10T12:17:18.2461190' AS DateTime2), CAST(N'2025-11-17T12:17:18.2461166' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (389, 8, N'RSOsH/1NNzOQx6u1PwLhHjNyjLOIFdNDpTptFxu/4ZSnv659drNPAWppICwFLnxIFkYIKFqvRF7Wz5Cm4zrsoA==', N'e7b6bf3e-9003-40f1-91b5-843392736cdd', 0, 0, CAST(N'2025-11-10T12:21:37.7877123' AS DateTime2), CAST(N'2025-11-17T12:21:37.7877104' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (390, 8, N'icEPNFysOWltB14ZdZE3/vJjxl2+jbjKn7sRwlhozh9pXz0JTPOWv9RssagMtGY3dQtHRfxH3EFhThlkwXlSPg==', N'7329fc0e-ae21-4272-a2d1-522f6a9400b4', 0, 0, CAST(N'2025-11-10T12:22:08.9182545' AS DateTime2), CAST(N'2025-11-17T12:22:08.9180063' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (391, 8, N'hKk2dMO46wpHylSAL8CNyD+KAWsxIozxiHM0msmRLyJlypPQ7GJRkD8OMaH+eu90QLrDcZ8XILKTBBEhDlcj4Q==', N'5162fa29-ac67-4642-a2cd-e2e6050f6820', 0, 0, CAST(N'2025-11-10T12:22:14.0604126' AS DateTime2), CAST(N'2025-11-17T12:22:14.0604103' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (392, 8, N'xPyzBMnO1SuuGy60+XjPx3Am0wjBXqyKxKIyg/mrMYQjbCv+cIIiHAKbz1HELxrWAqg7/Q2EvNFssNv0zj3gZA==', N'ce870eb7-6c29-44bf-b8b2-556bdf1d73a1', 0, 0, CAST(N'2025-11-10T12:53:26.6468731' AS DateTime2), CAST(N'2025-11-17T12:53:26.6468709' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (393, 8, N'E7LCzFfmKQ42Ryp8cCflZVbCXiDAW5ikdmde3pBBd04IR/ztVMg/Tdrr9eWeiiCSA/aD4amq0QjJhGTSpqnriA==', N'2e4c85be-e975-4e70-b7b6-ebbe2dddc56b', 0, 0, CAST(N'2025-11-10T12:53:31.5725365' AS DateTime2), CAST(N'2025-11-17T12:53:31.5725351' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (394, 8, N'bzkHHdAdz60dyiU4CZ+F4aX2C9lLWS0N4tqgagsoo9rllNwYzWqrhDqR2r7sqzKoIdFR9mNMZUqlGd7KP9U/5g==', N'8011ec46-99b7-4700-a69c-10a40c8d8954', 0, 0, CAST(N'2025-11-10T14:11:18.1804186' AS DateTime2), CAST(N'2025-11-17T14:11:18.1804162' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (395, 8, N'wGPO50k9aoRyA30i8H3a+Xx/uzztIG2G8c9KXl7du3GcjiTXSBsarhv/A/aE494FPJpRcI6h2vzgn3E49EBYTg==', N'4013aa9a-a3ac-439b-bf5b-9359faf85f52', 0, 0, CAST(N'2025-11-10T14:11:37.5827739' AS DateTime2), CAST(N'2025-11-17T14:11:37.5827715' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (396, 8, N'WIsesDVOGoLSL/zALYSJsCIMNlFPiVPKje4BmjvSlzEr+uHKP8JrCFEd7jJ4h9UVyPEkRztv3eYlp9zePf+0fQ==', N'9be5cd39-954a-479f-81e6-4bf5b7b70c64', 0, 0, CAST(N'2025-11-10T14:44:03.1266195' AS DateTime2), CAST(N'2025-11-17T14:44:03.1260888' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (397, 8, N'u7gKLs2uxLuQTI81hwzrzdn2f5Gaf2IYV1jKl847BjD4u6+Z+ocWwwEjdRaaHIanHiHHwvSH48scfBNsMQ6Vcg==', N'4bedc129-bd52-4551-a202-fc89018ec833', 0, 0, CAST(N'2025-11-10T14:44:06.7915204' AS DateTime2), CAST(N'2025-11-17T14:44:06.7915175' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (398, 8, N'/LTGzkGspiA5BkFsYTyTA7/2ssm6FZKe2c1pVkeUhdEZ8TS/xRgFpS7JPiltq/t/CFAWoQNDxxa0elS8qZ8JmA==', N'773ff5f3-69a3-44f8-be51-45a13d8ff5bb', 0, 0, CAST(N'2025-11-10T14:46:49.6253165' AS DateTime2), CAST(N'2025-11-17T14:46:49.6253140' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (399, 8, N'i/7yiMAUl8P6NsvHLKtjEuV0XsoRTC20KySDQYmD9QBIxaCeaIm1cucBnnxSreWcnh4rpX9zTbzgEkgSgjDJ5g==', N'f824d1c4-774d-40b3-a1d0-45553d33b031', 0, 0, CAST(N'2025-11-10T14:46:56.8133181' AS DateTime2), CAST(N'2025-11-17T14:46:56.8133163' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (400, 8, N'uMatUBTRyd32MD253c/sPiC+WcONMKm9vf6Vq7Za6vitdW1/O5UqSyU6gOpSAMxucQFURJqk/ANDiyZm9tTnwg==', N'2b9711f5-aa22-4794-8143-b7a9e155f5eb', 0, 0, CAST(N'2025-11-10T14:49:10.5191963' AS DateTime2), CAST(N'2025-11-17T14:49:10.5191942' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (401, 8, N'IC1l4SMx8T+657dj7H3u5R7bPIAt511NhRH4+a8t8BIa+s/ZvcTdxS46SjBoejQeI/m5qeamwtTYrndeeSoPDQ==', N'23c2f60d-8aca-4f05-ae70-d82946d5e754', 0, 0, CAST(N'2025-11-10T14:49:16.8549226' AS DateTime2), CAST(N'2025-11-17T14:49:16.8549198' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (402, 8, N'M9Rxc4wAvVA5Y1npk6Y6TwX96Ugnpm5p7iXt5p6sIxo2qKrnqU1w1V1p3EoPDAYPrLZxb14876095zk4yv+khQ==', N'231d924d-9505-4763-bdfe-53efaf5636cd', 0, 0, CAST(N'2025-11-10T14:51:18.6335686' AS DateTime2), CAST(N'2025-11-17T14:51:18.6335663' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (403, 8, N'7lX3/x1aBc6minOzq6Deo0xokRUCGo86S2OZCn5zmhWaU+K+T7JCY1PKM9eLJCMF+fQlPTjnxLKl5Oyo/pwf6w==', N'a46d999c-3e39-4c71-86e1-f0ba60836be5', 0, 0, CAST(N'2025-11-10T14:51:23.6336298' AS DateTime2), CAST(N'2025-11-17T14:51:23.6336275' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (404, 8, N'UcAFqHGMNvhOu/468AT9F6uKnQKFlyNsjQ+kt3pjrawlSNRXuX3GGzB7A6cOVuYEK7vF+fF5ErikTpcT1aK7+w==', N'995e7417-8c55-49fb-ada5-0affafe4de6b', 0, 0, CAST(N'2025-11-10T14:54:40.5524237' AS DateTime2), CAST(N'2025-11-17T14:54:40.5524205' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (405, 8, N'CIq5qJOAmVmjsF/Chtu792ulLxPUtwMzC8Tnn/xk48Sk9T8v95MrQy+dBqJedNjza4gR2MZUPZI4ygkSi1hrhw==', N'cbd44968-0e9c-49e5-b908-9de8d143f58c', 0, 0, CAST(N'2025-11-10T14:54:45.6874069' AS DateTime2), CAST(N'2025-11-17T14:54:45.6874034' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (406, 8, N'rwSpCwltzG6kJLGyJ90o3x2rIPp6yujL3HulR2IigdRSHcZhp7rqGOqiVFNRooGs5iWrpaKPOaJ/y8vYcM0fNg==', N'ad85f244-1342-4ac3-a98a-b879a1472d49', 0, 0, CAST(N'2025-11-10T15:06:46.2966144' AS DateTime2), CAST(N'2025-11-17T15:06:46.2961130' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (407, 8, N'+QDiTCA/t/m8Hi4Rvm5T4SgLOCy7uqY4WTeLOrWhqky35LlOzD7ERtVbO0eAirmLlf6s0f5xc1o8H0bppTAFUg==', N'02a700d5-63e2-4faf-9b40-125deaa86470', 0, 0, CAST(N'2025-11-10T15:06:50.1289410' AS DateTime2), CAST(N'2025-11-17T15:06:50.1289385' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (408, 8, N'sOtt3UX0qRwDaLS3RJLk64ybsUEdWi1Ly/7pxOzRAqBc6J3rpUMe7JMkoBw7bRH2Jg+q1VMG8rxnabfVB3H/jg==', N'c7d43f2c-f344-4e9a-be39-48ff4126b1eb', 0, 0, CAST(N'2025-11-10T15:09:53.4255901' AS DateTime2), CAST(N'2025-11-17T15:09:53.4255883' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (409, 8, N'eW6KpdXM9xtaz4BBwKq6j8bcm0h9c9L99wBg3o3+BKo8EKVOHNsRe5oI/1mALSy1UUFsEKbigzApKKc4ooKoxw==', N'869794ab-3c24-4fc2-9e14-d016e5da2be3', 0, 0, CAST(N'2025-11-10T15:09:57.2692802' AS DateTime2), CAST(N'2025-11-17T15:09:57.2692789' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (410, 8, N'XNmCU6tkDRyOJ+QHduPEHLNLHbZPoJGgi7NAWcjbUiy/9EtCswP/tz5GlZH/kbDFDtpC+q4LPK4wHGQo0eb0NA==', N'b6c5486f-0180-4d03-9d94-56780749db20', 0, 0, CAST(N'2025-11-10T15:45:15.6144887' AS DateTime2), CAST(N'2025-11-17T15:45:15.6136031' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (411, 8, N'NHUSP/obg+ZiXGnchsXC8EHkv6Gyu+VzPfF/IDubq8HEeZmMp0JmWi0x+kq+X84QMXZ11xhuDAyI2a6HD55jbw==', N'13f1c17c-7417-4fd5-9770-e1f59aa8330b', 0, 0, CAST(N'2025-11-10T15:45:18.3302907' AS DateTime2), CAST(N'2025-11-17T15:45:18.3302883' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (412, 8, N'S2Ot5y226pd8yoyEErD6ZyiTwHPVSw3RdvHnP+pzK0lOT5V7aS2R73e4piGQ4nqHupyigNaraKpB4/UdXJV4Wg==', N'f790c0d4-fe4f-46d9-9d75-5e7d36d79d99', 0, 0, CAST(N'2025-11-10T15:48:02.4229753' AS DateTime2), CAST(N'2025-11-17T15:48:02.4226865' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (413, 8, N'kRFxtVBX5TUpeKwcVqBsSioy/PUL8MYFo5yrW1xUIhwxnwkKlnt43+SXu4zgN5+eKV0p4vMMWbjfmsvtqvvaHw==', N'8413cc18-2ce4-4561-93d9-c836cf03685d', 0, 0, CAST(N'2025-11-10T15:48:10.3789668' AS DateTime2), CAST(N'2025-11-17T15:48:10.3789646' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (414, 8, N'krDvDT1vxNR+4BKvO+vLUWursvRsp2jDZnIGRkUhnqOC65wW1akhisuyFOfbTjpeQkUNqdqF2bbZCvvJA7QCvw==', N'3eb32cdf-2535-4dc2-b878-3513fa76e7cc', 0, 0, CAST(N'2025-11-11T05:14:06.3706470' AS DateTime2), CAST(N'2025-11-18T05:14:06.3703199' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (415, 8, N'1hslO0RiUqLe/WNFQDLU5AwvA+mTTMVsasiozh72TbTldVv80I88/Uj/ZrUiUD3+87pHKkImNG+3blsua67zLQ==', N'8fd5b161-4176-447b-9bd9-24c2b101aecb', 0, 0, CAST(N'2025-11-11T05:14:30.3598228' AS DateTime2), CAST(N'2025-11-18T05:14:30.3598189' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (416, 8, N'UlGJMPxDtva0T3arV5jU7z6UNOryIqAyadUmdV5upnspYW8BzE+WGF7M5stcHTtJt2sYRoa4AykWuB7rknOrpA==', N'85ff10a4-a253-402a-8c76-a1c449e8f565', 0, 0, CAST(N'2025-11-11T05:17:10.6617990' AS DateTime2), CAST(N'2025-11-18T05:17:10.6616000' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (417, 8, N'+v5gv6KQeAhZfSp4gHmWmpYElRZjyEO3NXFLWtuN25QbzkBTxkZc1a3iTV9DfOTXmN8U47WbBFJkVrp0GwHDkQ==', N'8599fd43-ce2a-4358-915a-9144517d07ad', 0, 0, CAST(N'2025-11-11T05:17:16.5063591' AS DateTime2), CAST(N'2025-11-18T05:17:16.5063566' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (418, 8, N'OjS7yL+cBBxP8MJT3awQJW8CnuLBXMnkR28HR7QnAUrXeeRFa3aOoK+F+9k4CZzhzxYlAPOEgbm7lEsFeFxP5g==', N'dec7db86-1b27-4473-b7a1-27ac681ba4b9', 0, 0, CAST(N'2025-11-11T05:42:09.2133419' AS DateTime2), CAST(N'2025-11-18T05:42:09.2130613' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (419, 8, N'CmBJHEhrEXf9Lx5oLDmcOmQCtW2aytr7JmTvQ5g3VN0HEIhteKItnr4OeGR+IQZ8zT4yyf4VEH45SoyBiOPcxw==', N'dd88137c-79aa-4c5d-b379-8d769071ab59', 0, 0, CAST(N'2025-11-11T05:49:38.8972907' AS DateTime2), CAST(N'2025-11-18T05:49:38.8970357' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (420, 8, N'o6dFgGTc88FvMRYOyYn+tog0+NZfd0GaMun/sRq0mYjcEkyM2kDT5Yf72YrKnjh/6f6jxavheBm/NENJMQm3Ow==', N'664c5e7f-0a62-44f4-a5fe-ce424d2e2ef6', 0, 0, CAST(N'2025-11-11T05:49:42.5713579' AS DateTime2), CAST(N'2025-11-18T05:49:42.5713551' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (421, 8, N'uzHM06fBCBII90nAnHV9kYcpwx8pQbJrM8bFpCfwRN7hfFSEFvSzv/zrzEERjjIgsyO4rw42u7D9ipgAkwVd+g==', N'38ed817b-5db5-490e-acca-be92b0ce3eb2', 0, 0, CAST(N'2025-11-11T06:02:31.4296376' AS DateTime2), CAST(N'2025-11-18T06:02:31.4293006' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (422, 8, N'5u39p6sX987RLvP+EjuHluoKo39XevOiEslU3C4TZPY3wEJpeb7DfMKvDrtlquZrWZgHqaScb/ig+VhziMEhrg==', N'bb985e1a-fbba-43cc-a55e-39d77c68aa21', 0, 0, CAST(N'2025-11-11T07:36:47.0683280' AS DateTime2), CAST(N'2025-11-18T07:36:47.0679898' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (423, 8, N'QW8p+LBWtMcjXlmTmOZMYLNCzPpzSaypw0gFdYfyiCRta5nl+Eu/7rMJ8UJoCq6fj7wrrcn+pDCfmFr5xtSBGw==', N'd0af5f48-e627-4c49-ae92-c4844869dab3', 0, 0, CAST(N'2025-11-11T07:48:23.7577144' AS DateTime2), CAST(N'2025-11-18T07:48:23.7573769' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (424, 8, N'arll2sVji8idAo5rtwVeE9/bsqZa+5bv8qeo8LI+zW5DUELWaSi5aJhjRHeYSTs4bsdNefP5GXnjTbhECC5atg==', N'5758d273-66e6-446a-ad83-30a3361cacd2', 0, 0, CAST(N'2025-11-11T07:51:16.1837270' AS DateTime2), CAST(N'2025-11-18T07:51:16.1832284' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (425, 8, N'iVzK0LWvF5uS3axAqQkb6UbHUFCnVTkshKsvvBwnmg256xSvuT2/ljKs79Lbt2P6ERzYNI7ssF7c8w77KW+M7w==', N'4977ee1a-af85-4f46-a7ec-a35dcfc49664', 0, 0, CAST(N'2025-11-11T07:51:19.2958055' AS DateTime2), CAST(N'2025-11-18T07:51:19.2958025' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (426, 8, N'kqgEQabr7T8v/VqhuzvyqFZp4L7OCJ8Wg77XlrePwp9o1GB6Q6ooedeYAJDzh7K13vXOMHBvGvwUwxMirNeCzA==', N'4695fc8c-7085-4c2c-b530-f67f4981c29f', 0, 0, CAST(N'2025-11-11T08:09:35.3966279' AS DateTime2), CAST(N'2025-11-18T08:09:35.3966244' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (427, 8, N'xP2dYXO8SSHFJh7WGSYHCsRbIUFVSJSH0TqzzSIoKfG/BH38EZ8FgPAq3rB/Cd0lncTSRMtIseDzu/se0uiBmw==', N'22f79383-41e0-4752-acba-baa95e1ff473', 0, 0, CAST(N'2025-11-11T08:09:38.5244500' AS DateTime2), CAST(N'2025-11-18T08:09:38.5244477' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (428, 8, N'5EhWwkJeWPTzyrXAFleE9HFtve6Ba6gFlNVv4qBmeylwDvcc233p1TTLm/0dwVYYrdqXdYdLi2x3naQjoP9AWw==', N'fabfec38-39f3-4af3-94c2-dbc5c8a1be7e', 0, 0, CAST(N'2025-11-11T10:15:51.8635000' AS DateTime2), CAST(N'2025-11-18T10:15:51.8626273' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (429, 8, N'iwHXye2rn4LrI5pIcGFzOmBpT99llkVQgSPy0ufzKKUyyffZsQA8+C5uj3Gw4Ql31pa8tV609pltqw4T75tyZQ==', N'6c1b356e-b23b-4abd-b04c-ae6c03580e7f', 0, 0, CAST(N'2025-11-11T10:15:54.8331052' AS DateTime2), CAST(N'2025-11-18T10:15:54.8331016' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (430, 8, N'L+zXFCiuYSDsedetDbLv8VkgI7+pDYJKwnERzIOWpnuY53xzULw6fF9P8zHckG8Q7JVwBBA/8wVJU3iNZUH7sQ==', N'7df87770-eb2a-464b-9c48-d2c65073f9a7', 0, 0, CAST(N'2025-11-11T10:16:17.6592210' AS DateTime2), CAST(N'2025-11-18T10:16:17.6592182' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (431, 8, N'ZiWWaiTV6TfL2VOi5XtGb1Q+WUxaYnhB7OaEUbZUrrTYbpjNEdaFiQ0hndarNaPF+ubXLswvR9JO9Dv4lCwH4w==', N'3d89412c-30d3-4989-a19a-0720ea24e55a', 0, 0, CAST(N'2025-11-11T10:23:55.2495304' AS DateTime2), CAST(N'2025-11-18T10:23:55.2495261' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (432, 8, N'cNbWGUSp2K8ZshHA3qCj7HtPJJY3mxIeUzL2iimKhHJUzyFQZhiGPUwUM79y1GRcQxcP5LhZPQHBjJxEsRoA0g==', N'0313d66e-ccd3-4c64-82b9-42b4ec9f63db', 0, 0, CAST(N'2025-11-11T10:23:59.3937732' AS DateTime2), CAST(N'2025-11-18T10:23:59.3937711' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (433, 8, N'zL96cRdWP4A/RQ4t/4Nj4jynfGzzFivkAd1qOz78aQwkPQHe+XYFp1Wwbuy3TtICa1wEEl9j4pdNa+wKHKj12Q==', N'408e6b13-1d6a-41cf-9246-4a7fd1065996', 0, 0, CAST(N'2025-11-11T12:34:12.5531770' AS DateTime2), CAST(N'2025-11-18T12:34:12.5531729' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (434, 8, N'gPgcvebkKU1J3VufTZW3qZ1TwhFIpw0A6uPJGVvjDHnuUvcd37poKRLTySQ5EWOBQyawdPCP7ocahX+NaIuSPQ==', N'a194c654-9420-4762-9749-4acf6fea562d', 0, 0, CAST(N'2025-11-11T12:34:16.3037688' AS DateTime2), CAST(N'2025-11-18T12:34:16.3037673' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (435, 8, N'8nGr9nBkr9NfTVzeZFPwwrowXPF/aDa+M82m9Yw6RvVSCk7op0EHSPQj4V56f955wJ8vgxVB8mJtekoAPOQ1mA==', N'5737212b-3503-43f0-85a3-088260d30d6f', 0, 0, CAST(N'2025-11-11T12:35:56.0630149' AS DateTime2), CAST(N'2025-11-18T12:35:56.0630119' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (436, 8, N'lC1T5ES3dYBg0SB864ewUSup6Y6UX1mNBytItnn1ZjkQLRlYoSbXcGfGSdvphH1OelmNultj41iwgXwmWIF3rw==', N'5b513c24-d80e-41e2-bf4b-c28e618a4c7c', 0, 0, CAST(N'2025-11-11T12:43:28.2946679' AS DateTime2), CAST(N'2025-11-18T12:43:28.2943309' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (437, 8, N'H4yWteUAA9mdQr7vvIOE7fm2rQOxtoPAVRCfScV7hHr+XZY1cUyH/RXE7jv5/u4OwEgQaBYISaW0BYlLfpOoxg==', N'6af527d9-d822-4dd2-b76a-67891d8a08ca', 0, 0, CAST(N'2025-11-11T12:43:31.0569821' AS DateTime2), CAST(N'2025-11-18T12:43:31.0569793' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (438, 8, N'x8SVjUs515K61JzsvmNmh+EHBUCimlfkAt3mTHQkXyEDf6gCWWAD3Q5lpJ3C2DcY2iEXldc9lpxDnraUBhsAMg==', N'e7b96be3-c950-45ee-8646-7bd83d38be1e', 0, 0, CAST(N'2025-11-11T12:48:41.1408899' AS DateTime2), CAST(N'2025-11-18T12:48:41.1408875' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (439, 8, N'Z6uBQKvWzJ9Fu6RBWHB/pw7Aeh7UzHsAg9NH/X5iT3/PBMWjbYJDqR3U4ze4iVJBEslLspk31L6+0E6mPbNzXg==', N'bf3bbbb7-77b2-4f63-b5ec-31586fb3745b', 0, 0, CAST(N'2025-11-12T07:45:02.9572328' AS DateTime2), CAST(N'2025-11-19T07:45:02.9567540' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (440, 8, N'n/Pgs3Mgs0UFmiUIGwNvB+oX+w9bHTiJ4e0HeROYu/6wZwMWD4JA8ehks0e310QxZL03FF2eTEKObMiVabDoMw==', N'18ddf1a9-12f5-47c1-ae70-073a3e0d6ad7', 0, 0, CAST(N'2025-11-12T07:45:05.5947811' AS DateTime2), CAST(N'2025-11-19T07:45:05.5947786' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (441, 8, N'wl70Z3qV0Qlod8yf/TGXruSSuOuMC4avttx0dL2Fw/3U8ROmQYic4RCbiktZEY8ZoiVyedrEl2lCepJif7GVcg==', N'376e061f-1eef-45b8-aae2-8f888d08b4c3', 0, 0, CAST(N'2025-11-12T09:19:13.1034235' AS DateTime2), CAST(N'2025-11-19T09:19:13.1029690' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (442, 17, N'xr6zQk3Xaj9TEU//4BNi1t2BGbhRZIMj+9DtIffguTfma+HzL95YHRI0G58Qia35wqB7taopCRNUEZagueCprw==', N'b30c1461-2eb8-43b3-bfc6-7502b1d14f9a', 0, 0, CAST(N'2025-11-12T11:41:33.7996449' AS DateTime2), CAST(N'2025-11-19T11:41:33.7993622' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (443, 17, N'uU/Hok31kF3p3kbFUGY0nfXYI82l5shK5vjMmmwHkCQtooeslYivSkwIxZs4bWQpztGXjEsbUW4s25LJsRORJQ==', N'3eb623f7-1b75-4445-8746-8ed9d1d0a5e4', 0, 0, CAST(N'2025-11-12T11:41:38.8802350' AS DateTime2), CAST(N'2025-11-19T11:41:38.8802318' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (444, 17, N'e3B7igaETBiFV8FgJi6scRgPWjsAJueGlqgJEQs+QSBdI6+YhKgdKaNNbWtVBncxRuhWewzeBHq6/9wQyoEOaA==', N'7ff837f2-2b8f-44a6-963b-770dd7b0c528', 0, 0, CAST(N'2025-11-12T12:00:26.6465162' AS DateTime2), CAST(N'2025-11-19T12:00:26.6458784' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (445, 17, N'PJwOGdIgDmY6l4lpBU3U6zt5pF1t9SXzBpDFD/d3Hiu7jBUf0hlosGGZlCzqbaxAhGzQBKZK+VjFinIP7nlTFg==', N'ae3799cc-b7cf-4fbb-843c-16edabc9dd93', 0, 0, CAST(N'2025-11-12T12:00:28.9964030' AS DateTime2), CAST(N'2025-11-19T12:00:28.9964016' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (446, 17, N'i1jWbkm8j6nMIMffhFhMFcIv/CGsNhuxiNMU5I/W+SDojX/gcwQiyMZ5Bi7LL2YhmwbQmTMfjHG9ZdB8Hx4gGw==', N'd989a9ee-5d9d-43ce-b1e5-108fbc614f48', 0, 0, CAST(N'2025-11-12T12:01:11.3555378' AS DateTime2), CAST(N'2025-11-19T12:01:11.3555360' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (447, 17, N'OTIyPa9ofHxVSsa87J39yHOEPGCJqwEt1jKmmnbWyRaTP7tWKhvl57SzfzvWZlcEvJ/1AMm978ftBlnVmQv2yg==', N'da8a5cc6-8a38-4ce3-ac5e-6682c6a35fe0', 0, 0, CAST(N'2025-11-12T12:01:14.6878325' AS DateTime2), CAST(N'2025-11-19T12:01:14.6878304' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (448, 17, N'3/82xDNZh02kwiertiWoe58nwuWN3kzX2Tk6wlkthcBu56W3t1dSafgCpUXRmWtCLL/cvzoKidJ7jFyYMSRaZw==', N'b11439b4-92eb-4d2f-bca6-9b4ce5243c05', 0, 0, CAST(N'2025-11-12T12:01:38.4318881' AS DateTime2), CAST(N'2025-11-19T12:01:38.4318859' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (449, 17, N'1XrmonxkP5xFTXEYkEAKYSgtJNKOv/mHKZPgWawSfPfCFXoFGmP9WVwZeZAwjKFh31WPQHvmoDMCrRg/yFC2iw==', N'80fd273e-990a-4a28-b4c5-2d77e333ad87', 0, 0, CAST(N'2025-11-12T12:01:45.2150567' AS DateTime2), CAST(N'2025-11-19T12:01:45.2150528' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (450, 17, N'8JVxP6x9SCf2mxmHE10Z9inA0jrPpm/ehmCvztClhapCbPgUcoA9wC5uC7Y5B1ddM/PwMaTLn0Z8YE5KXkaIUA==', N'79b29494-a941-434a-acd5-7ef09c39cb92', 0, 0, CAST(N'2025-11-12T12:02:59.4396260' AS DateTime2), CAST(N'2025-11-19T12:02:59.4396246' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (451, 17, N'FLgbIbN+p1gW9m67qKYLWVdP5K1QX39iQBv//SBmYWr0ZZtbJobFHUt6pjhlka7cf/Ms2MNucwQGkf78/MC+og==', N'cfad894b-4f4f-4b9c-aa0f-b91845419bd9', 0, 0, CAST(N'2025-11-12T12:03:02.6675535' AS DateTime2), CAST(N'2025-11-19T12:03:02.6675503' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (452, 17, N'ODt7NbB06ym4NDjfeoWh6NoCaTYbFBJ3QZtCQIC/7K3ImI7N7YGQ2Jp3++ihIww65hVTyCXUO0zAORjMvGlWAg==', N'aceed5f3-fb2c-46ab-9125-c3c0b154896e', 0, 0, CAST(N'2025-11-13T05:08:53.1561604' AS DateTime2), CAST(N'2025-11-20T05:08:53.1557537' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (453, 17, N's1A6HEqeotLU6JYcX283IMGvCtvBsdRwOTvhvoaHDmLZxddv3UlSkZmaJeDhG+gWd+eT0X2ZMnG6eaWJVPkIaQ==', N'31ed6248-8c64-4075-8f1d-6c5c8a74a87e', 0, 0, CAST(N'2025-11-13T05:08:57.5223812' AS DateTime2), CAST(N'2025-11-20T05:08:57.5223771' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (454, 17, N'AxcMaoRHDg0eVIkzOhM159bPy4d0bR4HO8wG6PvKUPRHr0AFnOqp4Xeee7vyhE+R4wy//vN+pNWruZoNGKDlzw==', N'1fec9f45-aa02-4881-bbdc-44287b526f77', 0, 0, CAST(N'2025-11-13T05:12:00.0935697' AS DateTime2), CAST(N'2025-11-20T05:12:00.0935670' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (455, 17, N'3FTJIO9AFQP7JbwScoozPMsWamL6k9tT86bIYdu6ugBbxkQ8U83P/uSvm39D4gv57xcNQ57vNeVX7ZTH6gyHHg==', N'881182f1-8cb2-47c6-96a5-e45157f7dd09', 0, 0, CAST(N'2025-11-13T05:12:05.5915557' AS DateTime2), CAST(N'2025-11-20T05:12:05.5915528' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (456, 17, N'e8hx8/fUuscrV/GshikFU1R3b5ft9YB+KbGlMZRVavG8sDhw3athQRWnVwP3aYay82aFkYSA7hX496B5aoTAFw==', N'9c2e748a-96fd-47fd-ba9c-170ce3541438', 0, 0, CAST(N'2025-11-13T05:12:52.7439371' AS DateTime2), CAST(N'2025-11-20T05:12:52.7439348' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (457, 17, N'ocLl3rh6X19kUwKuxcSwYNqlv7AEowdVHahElW7TgdXQBg+oAEHEuT4kQcRmQt1BjSOwgMfUIwsiRaqObFQCNg==', N'ad0000bc-04ab-44a2-b5bb-b8cd1f9592e3', 0, 0, CAST(N'2025-11-13T05:12:56.8148002' AS DateTime2), CAST(N'2025-11-20T05:12:56.8147984' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (458, 17, N'bUD0vVyYk5rU+li3CwOdve/2eqh1Qe27vdcC9GtVnnyMKiguqMUFwLZNu5UUkJDXhATse9KlwCKHO/h8Rn+phg==', N'ab2a7bc2-4bc3-4f99-99bd-d88b81af3cd3', 0, 0, CAST(N'2025-11-13T05:18:58.3058830' AS DateTime2), CAST(N'2025-11-20T05:18:58.3058804' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (459, 17, N'PpOlkqPPi8wilakYXqXLaQ3kh0KZmPEmQlBQyx/80ss8SoT0hKsdOhF43OJuv9NoRdSwhnlU7YkhP1P3Bu69pQ==', N'43b40704-3d93-44cb-86e5-948ced039656', 0, 0, CAST(N'2025-11-13T05:19:06.5370208' AS DateTime2), CAST(N'2025-11-20T05:19:06.5370187' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (460, 17, N'QUM+WkMr0qxx7vHZEBqZJ23wYjTD8QLJe9uB1Vr3KWLaWTadX+XTWAR76iJc9sHuu3nSc1fkcBBWplidTlCPlQ==', N'c55a4c6c-5abf-4b91-92fa-7964b18e4993', 0, 0, CAST(N'2025-11-13T05:20:28.0293837' AS DateTime2), CAST(N'2025-11-20T05:20:28.0293820' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (461, 17, N'VCuMpMeIKoUZpApQtulcoPiwuZ/6JkT0+ieheUN7wXkoOscNJsqXfNl7VEtEQbumNh6TOv+Vf3azaX9xhtaSuw==', N'17f2a387-c345-415e-ad25-cd5d212d7eb5', 0, 0, CAST(N'2025-11-13T05:23:29.8032073' AS DateTime2), CAST(N'2025-11-20T05:23:29.8032039' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (462, 17, N'x3BfyZKkUvumalJNpj0XJEouvsvGf7KFqNNzU+GfQeqSzyc6Mjar6BsiQx4bVvLa8iKQuCVF7Hj7vjxuyGbgRQ==', N'4afab90a-2c08-45cb-9450-1e0fcd7073cd', 0, 0, CAST(N'2025-11-13T05:23:47.9105497' AS DateTime2), CAST(N'2025-11-20T05:23:47.9105477' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (463, 17, N'EzBoMOZ7UpNfY5ARiiQZfOnPw7ByJqsBtTCrdN6dC2iYWTL0rbfGJ61EIbUugn7QBmDUUsxrHafNgFQejPeBjg==', N'a6cc7c13-3c30-4acb-b5cd-ea067197e85c', 0, 0, CAST(N'2025-11-13T05:23:53.3497917' AS DateTime2), CAST(N'2025-11-20T05:23:53.3497889' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (464, 17, N'CWhUyFqGd3TpEIED3o0FKJMx+yPx6CelgKEeHvpQD0+eAd3oX0mZDYjRCQXgP1Sn7c2/cHYe1T4zUMafMICqVg==', N'ea419380-367b-4f90-b768-a7e4905cba78', 0, 0, CAST(N'2025-11-13T05:24:50.6471477' AS DateTime2), CAST(N'2025-11-20T05:24:50.6471426' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (465, 17, N'Jo27I4qZKT+wm4/PT37iXvC5UtpuUr5MLxLZ4aRMsAML65ZXlyl6o6aPgaP6JAQNk7DA7N6jnw+u5iO2JX79LQ==', N'5aed5fa4-01b4-4f88-8b58-63c1a5eb1f89', 0, 0, CAST(N'2025-11-13T05:24:53.9254294' AS DateTime2), CAST(N'2025-11-20T05:24:53.9254275' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (466, 17, N'FrldrFvzF7CGaOHcLZiEckv/XRsp6iWNr8UJTxZBM8Oh1Phcms5PZg9KJDnrXzcKfWK6nDj75/iuvl9CpUaqHg==', N'ff5c408e-78ec-4418-84d1-086913f9a5cc', 0, 0, CAST(N'2025-11-13T05:25:20.1208345' AS DateTime2), CAST(N'2025-11-20T05:25:20.1208327' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (467, 17, N'p4ZDzMP7ZYQB9Mn0J3ZSvcscS3bMT0w2Nmjtp2LQkYv6ZjXMh6OKEPAw6fYgsSUiKQ0Jj1tmQhZtF1nS5EjGtQ==', N'949c3cd8-c826-4bf2-9467-efbdf786e8cc', 0, 0, CAST(N'2025-11-13T05:25:25.4933046' AS DateTime2), CAST(N'2025-11-20T05:25:25.4933017' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (468, 17, N'Uuw4rf53rDeHtm+f+nfdRQblfwJJoXaO7oVenRs2z6ai1rR4EkbzHamQDHx2F/KWy2Gbcl9h5AU017SIpeBCJQ==', N'05acb5e4-468f-4b05-b8f8-fc7cfda0b977', 0, 0, CAST(N'2025-11-13T05:27:12.3112290' AS DateTime2), CAST(N'2025-11-20T05:27:12.3112264' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (469, 17, N'uIidFLNEH+lY2Iyxpe611lMtYij+aRSReHuRJ0wuJ2XddbQOQRVQPjCJHSo9PFtaX7MulRCGhk1LNzxyzQfcAQ==', N'd31bc7ca-066f-498a-aea8-1672d907a9a1', 0, 0, CAST(N'2025-11-13T05:27:16.2094940' AS DateTime2), CAST(N'2025-11-20T05:27:16.2094908' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (470, 17, N'+VTvOcZmFURipf92P4hPFNw+L1fRS9GULof0gBuFWgIS6lmqhQwMZ3bKy1QKIAq7ryZDHl02hkz1ncq8emtaHw==', N'a75fc608-1537-490b-ac9b-c35080ae9a54', 0, 0, CAST(N'2025-11-13T05:28:40.9444541' AS DateTime2), CAST(N'2025-11-20T05:28:40.9444508' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (471, 17, N'cHZn6Uu08V/QG1sQlm50f0efcuDIu+zag3nW7PAgxRoEfRaOfsyJtpnBA1IyUGvu3MJSoqM2ft4ERxoRRExjqA==', N'185832a3-2310-4702-81aa-017d4edf59d3', 0, 0, CAST(N'2025-11-13T05:28:45.3807991' AS DateTime2), CAST(N'2025-11-20T05:28:45.3807971' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (472, 17, N'2nUw5O3/8yuYTiXtwp4EYHdhS/N72JLJcWSEdRhNZRl6kaU+Yvb+/idy33+y1WEg0Ey/KUWTCbZesuvuXtUa0A==', N'05496220-c283-4932-b9ce-17bfdd1f856a', 0, 0, CAST(N'2025-11-13T05:34:28.9829667' AS DateTime2), CAST(N'2025-11-20T05:34:28.9829641' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (473, 17, N'lZfoH0e1IKgI1dYev60Zlt6x+5hjdbrwPmPDDNnGvCA2/eu5rhVOEagBD/VriIqJrPAmvUDJ8SZ2AsNPc0mSUw==', N'b31716a8-f496-407e-9853-47bafadca058', 0, 0, CAST(N'2025-11-13T05:34:32.1570353' AS DateTime2), CAST(N'2025-11-20T05:34:32.1570338' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (474, 17, N'p/3QspeALA17fUIKZ4Ca/1YYood+/bvINFfLj9P/Ghxr/yr16Uy5gvga7Nj6cifG3VxzptVnvZr6aOItI834wA==', N'a3067fef-4eeb-4701-aa62-7b0aa6c458cc', 0, 0, CAST(N'2025-11-13T05:34:46.3653081' AS DateTime2), CAST(N'2025-11-20T05:34:46.3653067' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (475, 17, N'2Qoi2fKJJn9V4JBQf9tt9LvtPgbf6KLkFFS/r/7Fs+BkgPw2rvEtbBg3bzAzwvB0MepwCuiLC95x1CjXNXfFiA==', N'e01ca190-74d1-465c-b995-65dc14b804f6', 0, 0, CAST(N'2025-11-13T05:34:50.3667410' AS DateTime2), CAST(N'2025-11-20T05:34:50.3667388' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (476, 17, N'/NB30FZrZZRGWp70d6GMoId5aSeUQ+XxXqvusk4mLMbFPTwlmTMWO2B+yZ3PfUck990NipjHLQNIo3S5m5HEwg==', N'513f97ef-43c8-4bb2-9c7b-1de00fc2b55a', 0, 0, CAST(N'2025-11-13T05:37:31.7965457' AS DateTime2), CAST(N'2025-11-20T05:37:31.7965430' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (477, 17, N'hHTQOSBMqNS05nkJG9XYIcTOCcS6P94p0vij67qZX77JsYouAWZmjlwBQfkiWvGtQGLlhmGMvkzCtO+YOaQ5qw==', N'7a64db3b-c6bb-40dd-ae80-9650868ffebf', 0, 0, CAST(N'2025-11-13T05:37:35.6889106' AS DateTime2), CAST(N'2025-11-20T05:37:35.6889080' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (478, 15, N'qwuraLuELQ+Qa0rhTimIW/6JVjrDMooRsv/0dQwOWPZnoUAik4VFjpNtwludzFcOtL8sNUOwRa3AeCXwsm81mQ==', N'dbc2e532-5704-4aca-8d9b-34a26732e08c', 0, 0, CAST(N'2025-11-13T05:38:06.7962866' AS DateTime2), CAST(N'2025-11-20T05:38:06.7962842' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (479, 15, N'AQGm6TEmu82fFfW7dSBVwIRN+HkgBkohVijFXTxhULGzU5XsjENTHHlEAHJW9W3PGdIlz6iXR5WN1p/fEi4Wiw==', N'c7f9c3a4-6bba-47db-b866-9d0e733ac825', 0, 0, CAST(N'2025-11-13T05:38:10.2344044' AS DateTime2), CAST(N'2025-11-20T05:38:10.2343966' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (480, 17, N'4YvQtU7CFDp2jxX6T7fJjs2PYyU0u2/YhgqR995osPjTynfWyvh31Y8lmKDyNECajQvDSh1nEla8uxvFnQyWiw==', N'7acf25fe-bc27-4b13-a7a8-e58653400370', 0, 0, CAST(N'2025-11-13T05:39:18.2211494' AS DateTime2), CAST(N'2025-11-20T05:39:18.2211475' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (481, 17, N'y+Thqcqupv5mF8DlQ3U+qEkSQriJfc6UE5x/iehtIwkDv7IM2bH+3a1DsPYNAbPUv3dSctZbOMMcURK0l3f8HA==', N'2f6e7f3c-da42-4377-9599-637853441e63', 0, 0, CAST(N'2025-11-13T05:39:21.6464370' AS DateTime2), CAST(N'2025-11-20T05:39:21.6464338' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (482, 17, N'FDUKeJEcC7p/zYGRXCDCZIClfiNXi4VAvZwekj9NNOAFKYbs/g7dABS1DZMTokUDl5ogESRXew7+o0N5oxRpBw==', N'b9ebb407-2e64-4227-ac05-e23781259fc1', 0, 0, CAST(N'2025-11-13T05:40:28.9789974' AS DateTime2), CAST(N'2025-11-20T05:40:28.9789933' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (483, 17, N'sy45ACZAQunUz2n+PL1l03FxW6JKimsvdOlkLr58ZEOdOHUc2/vD0xfnH4QsRViFSV4mHrG9SN1y/THKo10MqQ==', N'843493d3-4ece-4c16-b173-b82f7fac9bb2', 0, 0, CAST(N'2025-11-13T05:40:31.7699397' AS DateTime2), CAST(N'2025-11-20T05:40:31.7699380' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (484, 17, N'jHhtA2XNYdmzo9NFRdsim0pvgrWWg1vO4SLEMo8iiJeHLikVzwM6I7JFTu92St/6NLAobNnzraVeUrupfRg88w==', N'ccb16e63-2065-4fb0-90a4-ea69682e209a', 0, 0, CAST(N'2025-11-13T05:46:54.9393513' AS DateTime2), CAST(N'2025-11-20T05:46:54.9393490' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (485, 17, N'LIbA+FWL8fRjaIAu+fr1V70YVnIDlpZsJLJWMtOjd02wmiutELWFf6pOfge1ZvqTUJIzG5RcAb1sBtC1s63Bww==', N'e38fe54a-1314-45d0-b01c-057f31a0f30d', 0, 0, CAST(N'2025-11-13T05:46:58.7681841' AS DateTime2), CAST(N'2025-11-20T05:46:58.7681825' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (486, 17, N'TJNzF6LArQ0JvdwYwZxs2Z/pNwYgsB0uzPGEc7uD/wC3Tp/reHtuhYD5lW3hvEkj1xUX4Ugt321/jvD//vvErQ==', N'651210fc-f55b-4db5-9994-db3d65dd7c2e', 0, 0, CAST(N'2025-11-13T05:48:36.1476072' AS DateTime2), CAST(N'2025-11-20T05:48:36.1476062' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (487, 17, N'sZQV/MazxX4RpTGjM8QBATWf/ZIbCZk6U5p7hn6aDysN/P9wlle90OLQ4eJTQb00wf4yVnhx1QltlN3J3GJVQA==', N'9e062b4e-bc8d-4385-a385-75e6ebe9df51', 0, 0, CAST(N'2025-11-13T05:48:39.3298861' AS DateTime2), CAST(N'2025-11-20T05:48:39.3298849' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (488, 17, N'VqSb1RV20wixZCe05M88nuvUELgkd7b6S/oohSRNGz4HPOY41vUf8Z1yYK7vOeQYWp0b1P8q6yH94mjP/xxr/Q==', N'ab3c2dd2-4285-454f-a6c8-e6a216419f06', 0, 0, CAST(N'2025-11-13T05:50:55.6927244' AS DateTime2), CAST(N'2025-11-20T05:50:55.6927229' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (489, 17, N'tWnUTWoVpA0l50zx9PORjK5lQN61FjvDc8i3OIkk7HiUNMpBMILshVskuGXBNqZgEcJBtAIYEr9xws2cHII86Q==', N'31598617-265b-4889-9e94-ce0bc6136ef1', 0, 0, CAST(N'2025-11-13T05:50:58.6886613' AS DateTime2), CAST(N'2025-11-20T05:50:58.6886600' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (490, 17, N'ThRYoo+1hmil/pCEjDEH18QxYAdomUKgsxJL+6fNfPwYkh7v2LGEBlltY7sOtdiQnm+i4lD2/zpaADQGvmMr0g==', N'cac04870-cd4e-4801-9251-f457ceb8976e', 0, 0, CAST(N'2025-11-13T05:54:11.8435350' AS DateTime2), CAST(N'2025-11-20T05:54:11.8435329' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (491, 17, N'50suMVOVN9O/EnB+XQxTgDPbCeRQznjyqMq1+d783Sn66vfkGQwxy7ge+4wB8itpa6Rcn9oPgX7z/VGvN0WQOQ==', N'b1fe9254-a0dd-450e-9db1-926aee710bc4', 0, 0, CAST(N'2025-11-13T05:54:15.1441085' AS DateTime2), CAST(N'2025-11-20T05:54:15.1441073' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (492, 17, N'ZVQ7E1HS2ssijYXwjEWLESt43TflZmbTj7hp/G914qpoelhVZligmpCIoeWavFU+t9WLGt6qyUGpGrg5mNujcA==', N'12977b1f-abe0-4d0a-a6a0-944ce15eba7f', 0, 0, CAST(N'2025-11-13T06:04:43.3060298' AS DateTime2), CAST(N'2025-11-20T06:04:43.3060275' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (493, 17, N'IcM9AMxuxTf8+4c7DVLEVgxs6rtof3R4nT6hqlvJYiBa9QUn25TOtGiwbajDHSAlVFbM7flt8fZS5XgWVWMQzw==', N'74d0d8fc-804c-4061-a9ca-4cc9dacf5dde', 0, 0, CAST(N'2025-11-13T06:04:47.7544558' AS DateTime2), CAST(N'2025-11-20T06:04:47.7544546' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (494, 17, N'dls5OWSrqZQrSbmuqXE4xcogOanum+P0DcO/SDb22nhSGjLEtiF6qeInOiZRiSR7wFRK9/6pRw/C5qGASM6QWg==', N'9d59d41e-d615-4b68-a2dc-76756ff60674', 0, 0, CAST(N'2025-11-13T06:05:07.3390551' AS DateTime2), CAST(N'2025-11-20T06:05:07.3390532' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (495, 17, N'yiWEClcG5OPNdfa0tK/q+22r7dk/EOAewb0b4tbHYm8aDEwfdTWytjypwbOz01NFBT+opFU79aBwGootjgNoHg==', N'c657e8f9-0e1e-47c3-844e-a3859140a290', 0, 0, CAST(N'2025-11-13T06:05:11.2747612' AS DateTime2), CAST(N'2025-11-20T06:05:11.2747587' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (496, 17, N'UivLuOmQjY4/udidceU3GfYmIfEJPZsfDXRNXeOLhf8+l1nsjevx7G8ZrFCnvm/5yIBQtW4LHI2mAtc6ivydyA==', N'7a2c2fc4-aa86-4368-a54e-911b8b72b6bd', 0, 0, CAST(N'2025-11-13T06:13:51.1297240' AS DateTime2), CAST(N'2025-11-20T06:13:51.1297183' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (497, 17, N'zeJ3yQcJaEW4mOzR3+gCA829DzakEk5CQwr0q3oPisGqqV9u6TrIjLVMb3ZMjqSWqJz0RNXsvAM/hIszKzN6RA==', N'def92e55-38db-4673-b4ea-2b6f03cff17d', 0, 0, CAST(N'2025-11-13T06:13:54.1137155' AS DateTime2), CAST(N'2025-11-20T06:13:54.1137140' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (498, 17, N'0emvdQGr7Y+WiY/VUSaEKvTi4OvmTZSNFkWN9yLh8plN8/cFNPQuSRG4KCz+l+ufDWrZiOLWGJ5Pp0Zlm76ugQ==', N'abd175b8-26b9-452d-8418-544224ed0b4a', 0, 0, CAST(N'2025-11-13T06:14:36.1759633' AS DateTime2), CAST(N'2025-11-20T06:14:36.1759611' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (499, 17, N'xSaiJph+C1/mW/lIHe1tnI1pBN3HUN8oWdX9ICwi2oqqjolwyNJeZxmlAUrUNJJWZkkcuW6YM/JV/lCwtN+rDw==', N'2afd23c4-66ba-4adb-96c7-fd9b3a8258f7', 0, 0, CAST(N'2025-11-13T06:14:40.7041196' AS DateTime2), CAST(N'2025-11-20T06:14:40.7041184' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (500, 17, N'bKb26PkDNG1kLxoo/iEC/hV6FZq2J9unuYDIKLeXfLj0gz+kHXcA67qLufzvnqS+9e8yDQhCBruo7hlrukpQHw==', N'491e8424-ac91-435f-8817-4e520589e360', 0, 0, CAST(N'2025-11-13T06:22:42.8850749' AS DateTime2), CAST(N'2025-11-20T06:22:42.8850728' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (501, 17, N'1JGMt0CnAPOxLbrVTyiz4w0x+FwBzE97OuQrBNG7uO/+fm5o/drKa5X1gsMbPjyH4gqOkKW6eRnKLp+Br0Gkww==', N'5aaf690a-28fa-478f-9215-bf8bc38d94e4', 0, 0, CAST(N'2025-11-13T06:22:46.1797299' AS DateTime2), CAST(N'2025-11-20T06:22:46.1797270' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (502, 17, N'ys7A5GTM8HeTCBckm5DyAVZbnM/UdJrNk+JfMZ+b8a+Dw7FTmSIccm4EbmftGswpkObJVt8yiMv5WEZRzf8ZvQ==', N'9bef02a9-19bb-46dd-aa09-68c0db8a84d2', 0, 0, CAST(N'2025-11-13T06:24:50.8971725' AS DateTime2), CAST(N'2025-11-20T06:24:50.8971708' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (503, 17, N'7Wvatw3kgMBp5n+qPHES1v9xKpT+z5Ep6Zz+ohbchjICJvWqycGVA2VX2luwcbe5x0tVu6zcSqL2ERco/tdYBQ==', N'86f2fe29-3aa2-4f25-8b7c-c12cd9857d71', 0, 0, CAST(N'2025-11-13T06:24:54.1938154' AS DateTime2), CAST(N'2025-11-20T06:24:54.1938130' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (504, 17, N'ymSwpJ5JPl2KwIeHXQ69N8uo+IiGwSx809pGto1jm9gOFEm0p7MxOWBigfRfZRVrfJeVKJ9kKb6okHQk+PzKcw==', N'34a7fee0-58ce-4515-9788-ea71a6dcdfd8', 0, 0, CAST(N'2025-11-13T06:26:33.8643942' AS DateTime2), CAST(N'2025-11-20T06:26:33.8643922' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (505, 17, N'umPtfmWqHG7jYfjZ0rsgKBnAqG8ynTynBDQT5aobhRQWwnn+2u+wrh+dN79Bp3hfXHGDWrI2Eh2LHooppuf+cg==', N'0a46830e-f616-4f11-8abe-6521f2afddfb', 0, 0, CAST(N'2025-11-13T06:26:37.3259376' AS DateTime2), CAST(N'2025-11-20T06:26:37.3259354' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (506, 17, N'IsNIWymq9yG1RsfNjCrlauwsrb3JuXW66paDaXtkF8XJu7/mFnQVg9/Dqsj4zl+veFj2BdVL1d0IBEq+rmZaiA==', N'61a18a9a-3838-48b5-bf30-69860907fa6d', 0, 0, CAST(N'2025-11-13T06:30:15.9481425' AS DateTime2), CAST(N'2025-11-20T06:30:15.9481405' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (507, 17, N'lP1r3Ch8L44QKDfyMYa5CZdQWgEQs5YWa1BSZaM/RcIgIJVSjT3ykjIdwFu6otKL07hWIdUckxXferQlhWENfw==', N'e2a36426-c565-44b9-a1d6-5ea894a253cf', 0, 0, CAST(N'2025-11-13T06:30:19.6488347' AS DateTime2), CAST(N'2025-11-20T06:30:19.6488329' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (508, 17, N'rvjX3IlfqY/+r+POvOC2JfzvzY5rf/AMlRDeK4bh++OGzGBpe+BIKRWG8mxw8fkJUSYNOUqopoj1Do2Px6q19g==', N'6305dcab-e872-4ff4-b854-a9304218906b', 0, 0, CAST(N'2025-11-13T06:32:26.3748346' AS DateTime2), CAST(N'2025-11-20T06:32:26.3748324' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (509, 17, N'v07R98mZlewwHgi0rTAWpmfWKT8MJrHr1p85IPO2Ib903y5YePUv8Q3nfZmUWpQIOnlQXIaz7mPuGMrCCHl/2g==', N'7d8409b9-93b0-4782-aa65-ef104abccf7e', 0, 0, CAST(N'2025-11-13T06:32:29.8435645' AS DateTime2), CAST(N'2025-11-20T06:32:29.8435624' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (510, 17, N'VnGEVyl6vqSFWThU+vJxDjOTbckRNiRM9uAkfrzf521yihM2WYHTFdsnEO1GPiOPCczUlc6TGmrwfM9BJKcvpg==', N'0099c03e-e513-483e-bdaa-c60743825d57', 0, 0, CAST(N'2025-11-13T06:40:39.4044355' AS DateTime2), CAST(N'2025-11-20T06:40:39.4044328' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (511, 17, N'N4qn7nRuKoYoKa6vtXp6rIkEsOcDmfESfAALKCSesatZkk7t4v1MGFEN/UXP60cAKl5J7HOgLfC3x+CaLAJayw==', N'7a91411d-2a0a-45c4-ae2d-639d5519dec2', 0, 0, CAST(N'2025-11-13T06:41:29.1489894' AS DateTime2), CAST(N'2025-11-20T06:41:29.1489871' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (512, 17, N'Py/l4tJPj8Ba5xPD3RW5Y4AviC5hDKD1d4s+7gJRUgPuPKdk0fpxUBxoVXX4VzCvWVEU9kxIeCHyYUsXyE0eaw==', N'7d7dd4aa-a1e6-4fa6-9c02-48a1d977359b', 0, 0, CAST(N'2025-11-13T06:48:21.1995144' AS DateTime2), CAST(N'2025-11-20T06:48:21.1995103' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (513, 17, N'oq6cqJTyS3sCBXXBLtbE6LXXjpXUve65l7s3MP37iKlVsFR94PuSp3c+CLJ2j5XXhSwrIygrU6WrzaIShb506g==', N'141a64a0-f039-46d4-96df-5a0d6056c53a', 0, 0, CAST(N'2025-11-13T06:48:32.0353266' AS DateTime2), CAST(N'2025-11-20T06:48:32.0353250' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (514, 17, N'q4xsHd5PyK6lOAu+7lG4vey18EFnM0DL7sPat1SGi2JMeGi+4lanENH8ifopIrXfKInce/QMqFTmS2Zmx+PdPw==', N'af4fb378-f83a-4ce1-8bfc-0c619e2cbe66', 0, 0, CAST(N'2025-11-13T06:49:46.8377632' AS DateTime2), CAST(N'2025-11-20T06:49:46.8377619' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (515, 17, N'6hgEZMSwlhL9l5EUTcu27yqha3qRPKzi0vtikFGXRTsn+QLIhWCa9nR17QBw6P3tS8x5gXXQTK51rN/d+GV/rg==', N'5a24fdcd-79f2-4e12-b893-bac036b2cb5c', 0, 0, CAST(N'2025-11-13T06:49:50.4923596' AS DateTime2), CAST(N'2025-11-20T06:49:50.4923582' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (516, 17, N'xKPmZSXinpXrCuqIrWi65zEZcBBSEapwJzk8tdWDk5K7kCOuPR5/UqUmPzpby015XGVi5BrA7jYvDuoM9gqogQ==', N'352b05dd-a64f-40b0-beda-51e0aa89dd25', 0, 0, CAST(N'2025-11-13T06:51:48.4287055' AS DateTime2), CAST(N'2025-11-20T06:51:48.4287033' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (517, 17, N'Iu1g/X2W4IbGVLL9tjy2CrWaUYDzMW9afd3CN230h7OlO97uEMHRpgjeJ8mJ2/v/Vw8GrI1ulSttJ0QWwEErkA==', N'a4fbd765-3be3-485f-935c-e43007b1c004', 0, 0, CAST(N'2025-11-13T06:51:51.8499694' AS DateTime2), CAST(N'2025-11-20T06:51:51.8499683' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (518, 17, N'c05vqB/Bk/YxzgNx6aAr06dxmDvzH5S4eVr2SKhPZNVd21eVlP4fUnfTvKjxPdtdEwRo2i32X/u/RaOnHEpjig==', N'8f0610b1-de70-471d-94e5-a14ae2d1d7df', 0, 0, CAST(N'2025-11-13T06:58:02.2582200' AS DateTime2), CAST(N'2025-11-20T06:58:02.2582185' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (519, 17, N'QNOPjRcmG32nt5uU3tKfGsPXHmCaS3tjcr6VdvwZv93IpGTFrsC/6KgQ5vlzH01SNQdirjqthxrSLO5Dxvgb0A==', N'1dbe841e-d29e-424f-b717-88cec2e60b4d', 0, 0, CAST(N'2025-11-13T06:58:06.1540278' AS DateTime2), CAST(N'2025-11-20T06:58:06.1540265' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (520, 17, N'/KfepGuekuWv1luXbQqWET3Y9OxsqJJIbls64UQp6WCXp4fNok9rWucWvrcGqGR0Xt3JdIJ6jTabJZXbGHaNtg==', N'ca6634f1-7999-44b6-bb05-3379f43a5378', 0, 0, CAST(N'2025-11-13T06:59:05.1914241' AS DateTime2), CAST(N'2025-11-20T06:59:05.1914227' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (521, 17, N'kSY3QwAEr90uOt9vboJZPcM6BBzF51iiCDfFO3OvOZDjSfYzx1ueFlrFfNn8h3W8VvpQ0MNnnoZ8Jo116OWafA==', N'7c7afbaf-a4c1-4775-b6e4-6b49869ae965', 0, 0, CAST(N'2025-11-13T06:59:08.3670698' AS DateTime2), CAST(N'2025-11-20T06:59:08.3670678' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (522, 17, N'JTtbpjo+7FM1iKGSc1ABJ8InGz4xL2G9D+56Hh70DTYU+AvMUSzt7JHyyKZ7xjO8p+caiJvLttHbjX1udVs0CQ==', N'41df50e8-032a-4b15-b9ef-e5a7edce3960', 0, 0, CAST(N'2025-11-13T07:04:35.3687466' AS DateTime2), CAST(N'2025-11-20T07:04:35.3687451' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (523, 17, N'X+ZwPGIIL+mKt7O4IvpvP1xTkZq3paiKB/dSqEZFqWsCBXrJIBx+1Fk4Yux4Jg65M3V/H7MqUy0+7RycqS336g==', N'bc274a48-b474-47fa-bd81-6c5385c50634', 0, 0, CAST(N'2025-11-13T07:04:38.6376485' AS DateTime2), CAST(N'2025-11-20T07:04:38.6376471' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (524, 17, N'WX7rZKuMguTTHGj2F0nCMncu+rFl/70gVB2JVjIW+tbG7y9uD19r8UZNxHOz5CgZEcQo0SWxXpfutTCzF12bOw==', N'471e5934-17d7-484d-af19-22f4f98fd6f9', 0, 0, CAST(N'2025-11-13T07:06:01.2377493' AS DateTime2), CAST(N'2025-11-20T07:06:01.2377479' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (525, 17, N'rCbVhHVv2yOZFeUel/2VFqLnCSsZNJrndezJJmHzClSnHUllpUnSld3McGi2V66EdZ0KQZx938gBngI3sOJc7A==', N'717ea44c-3919-4989-9f41-973ab76f3b96', 0, 0, CAST(N'2025-11-13T07:06:04.2990462' AS DateTime2), CAST(N'2025-11-20T07:06:04.2990429' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (526, 17, N'zuhx2asIuSLqV7ziQlqrRY4pjaXnXTZSgrIRQn7XDwkK/kE7o7o9Zu9S5H3nA7kmmMtBazxouubH+BwbuS7m+w==', N'9a10853b-22a9-414c-8856-87f44e439888', 0, 0, CAST(N'2025-11-13T07:08:03.0849891' AS DateTime2), CAST(N'2025-11-20T07:08:03.0849881' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (527, 17, N'ATh62qainPrss+Php5bFLPEspL6FbbaY4gW/MhSXdlMEXB/p9m6gfdlXbP7Ohi7eByrJ7xeMAZPVswsT6jyhUw==', N'cb270e81-83ee-4744-afae-3fdefb12187c', 0, 0, CAST(N'2025-11-13T07:08:07.2613442' AS DateTime2), CAST(N'2025-11-20T07:08:07.2613432' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (528, 17, N'9Y/J6xGHEZRCjhiW8Qil8s8KWtm5YB6BScLP2nKZ054hyvkmNJpayRxJYQ4vsfckjupV8fLsUnz/bZk28NdqNA==', N'24af3a7f-bea6-40c7-916b-09a1a81602c2', 0, 0, CAST(N'2025-11-13T07:11:19.7600429' AS DateTime2), CAST(N'2025-11-20T07:11:19.7600414' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (529, 17, N'Jm8I47OyTo6pL+3Xb5kNL1SSMdO19dKgXH+rwcrUtQr7L6DowWdYxnkG0XRQrjOZVgrN03PTEEe2cnrpJWoVvg==', N'9f7eb948-616b-4a44-b0bc-f81c5348f5db', 0, 0, CAST(N'2025-11-13T07:11:22.9318129' AS DateTime2), CAST(N'2025-11-20T07:11:22.9318117' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (530, 17, N'UtDSHYmCx1F3kh5WGCNer8NfKPhRZmOq4OCMsz6dkEV1crw1UTEaRYtBk0p9isw+E4L/9jbMYPrwYjVPusGz0w==', N'7b2fc67a-fc1d-49e2-9a9c-29dbc3632f2d', 0, 0, CAST(N'2025-11-13T07:21:07.6365632' AS DateTime2), CAST(N'2025-11-20T07:21:07.6365614' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (531, 17, N'Q9JVkwiM0Ad8qrxBdjgUZj+o5VX6IJ0u5tpBW7aIc3hWfdcASWTUcInpNfdPCgvFIllO9hjGLPJsCMAoSOxq4g==', N'ca5431a7-6a8c-4f3c-aa06-a3b3541944b5', 0, 0, CAST(N'2025-11-13T07:21:10.9396947' AS DateTime2), CAST(N'2025-11-20T07:21:10.9396930' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (532, 17, N'oyyzI7LlU7Rlnx9Yp4MGb1ZrBFsLRpTKIt+F3vpOOWWYK5yaE31z2OZr1Hk4uqUymiPkOZgZ1m0GqR7dB3t14g==', N'02753cfb-2f7c-41f4-91ca-42f3a063d1f3', 0, 0, CAST(N'2025-11-13T07:29:11.6985041' AS DateTime2), CAST(N'2025-11-20T07:29:11.6985018' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (533, 17, N'abpKg1aApuBrjlbOEvxVvNAc/NPZD+8rZKucE6X27q7Mxrr69BstcfuG8hL1u2woehRFmVbhVcuj7skGW/DEjg==', N'cb602d08-ca06-475a-b146-14b88ecb1739', 0, 0, CAST(N'2025-11-13T07:29:14.8043395' AS DateTime2), CAST(N'2025-11-20T07:29:14.8043382' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (534, 17, N'ISdiAP5TGggKz53ZKdH1rarfHYXn+SAFWFslx6aduU6Kt5ZCrEGmRbw1iFOcvST0QVZUMOPCsvAkYvy9vMWOdA==', N'04bae091-14be-4d2c-a391-076bced62757', 0, 0, CAST(N'2025-11-13T07:30:32.7793768' AS DateTime2), CAST(N'2025-11-20T07:30:32.7793755' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (535, 17, N'wWZGzGU0WL8OoWqNLpz5SclGPTasky9IZFpo2kyASvsgXeufJPOLrKuq9/k1THQ6dqDQX67LBg0Tn3PVAQZ45Q==', N'a2a9a1f2-ece5-49f3-ab96-64c4e3bce43f', 0, 0, CAST(N'2025-11-13T07:30:35.9153661' AS DateTime2), CAST(N'2025-11-20T07:30:35.9153607' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (536, 17, N'G7b3OPkYN3HX0qOC9hUhiVvR6fqT//oK5FZ4urgKrZMRHWJ588BemyCiN7Qb6n0LeWxafBefdvLJSUhBQv4FAw==', N'37dd2765-14fc-417c-b378-96f9f693cef5', 0, 0, CAST(N'2025-11-13T07:40:27.0688087' AS DateTime2), CAST(N'2025-11-20T07:40:27.0688061' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (537, 17, N'4ruHn4lzlaQosnwfVFRseG+AP67CAWii2lNwVFOmvWyx9RG8VzNdBWx0VhGhstCXbhTM7JGu52+PMJO0PqoaDg==', N'4497d530-8d04-44bb-8ae5-6055d9de3890', 0, 0, CAST(N'2025-11-13T07:40:43.2601781' AS DateTime2), CAST(N'2025-11-20T07:40:43.2601769' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (538, 17, N'DYUpf8FUCLMKSjHwQPNVh8XJNJDdAPNSvDqYV+cPNqfhh1Gfq3kEAty233WW2HRF0SoFfMJGHBKaD4EEQZuW2Q==', N'ab6a15e4-fe44-41f4-bcc7-da4e8eda22f0', 0, 0, CAST(N'2025-11-13T08:17:46.3761731' AS DateTime2), CAST(N'2025-11-20T08:17:46.3761714' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (539, 17, N'wxrMVaPrELfvmHZzUTp3mlv9z1PLVy1VEEaxGQVIz0983k1vBKP3/Z9ZqvIUHeh58FnX5IA54KzT6e+dobhVlw==', N'a3d11ee8-4d20-43f3-aac3-a4eef790955c', 0, 0, CAST(N'2025-11-13T08:18:02.0287939' AS DateTime2), CAST(N'2025-11-20T08:18:02.0287927' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (540, 17, N'4t56jPAY70LcMEZL5sQYKwN0lhkujNIr3Ke19FMAktV+KD6VJ3yBiIXXRXr1gCSEYCaESHIpvsAaM8Sb+fbPDQ==', N'68c17f93-e3ab-48bd-9406-13cbc9725e15', 0, 0, CAST(N'2025-11-13T08:19:03.0984317' AS DateTime2), CAST(N'2025-11-20T08:19:03.0984288' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (541, 17, N'AgN3FPcWF8UBKOCQf42lEdBIJWhETYPhMQHO1MtNzuJzS/K2xNkE2tu64/dEehKwcZ1tbfP6oy7sS/lLe0f6hg==', N'54e7f5c4-9a4c-4d38-91b7-fb64bfeda2ae', 0, 0, CAST(N'2025-11-13T08:22:07.9549987' AS DateTime2), CAST(N'2025-11-20T08:22:07.9549968' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (542, 8, N'WNCK5GW4Bfjla6fa2RrSsF+wl/Fd9QZWJp+8MCxJzFxq9OjxWiwPSr1czcwVgKHomydAotOcDrEO6jjtNPNSbQ==', N'19029fe9-0da9-48f7-a647-e66d87487e1c', 0, 0, CAST(N'2025-11-13T08:25:24.3948036' AS DateTime2), CAST(N'2025-11-20T08:25:24.3948023' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (543, 8, N'OogLdfybFeutkXpGWb+6UfyE+naa/FHvc2+KJ2U6PDn7C3uCpigbXfbfp7Mk426lRhYdeVCB5gngi5BN3GOo3g==', N'77b18051-3884-41ca-bd60-b3ef5cca5477', 0, 0, CAST(N'2025-11-13T08:25:27.4480280' AS DateTime2), CAST(N'2025-11-20T08:25:27.4480268' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (544, 17, N'XSh+37ZftKloL7WUMSZO/FD0/c230cqvJ+0BZ7Sp7musXrrJp9yXAs3umfAeRNoHsrRYpWKLIQZ8WViBj6r28Q==', N'5a0221b5-2a39-451a-94ba-9f735f796824', 0, 0, CAST(N'2025-11-13T08:25:38.8269244' AS DateTime2), CAST(N'2025-11-20T08:25:38.8269232' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (545, 17, N'A8wvJrtjjGKlXkY67EYn0XfamQUyecbRY7o+TzM/35MEP6+J6JYqCV2WgLZNro9JQapA35m/Ufow1yQxTNXJng==', N'cff9af6b-55e0-4da1-823b-e57d03dbb629', 0, 0, CAST(N'2025-11-13T08:25:42.5419282' AS DateTime2), CAST(N'2025-11-20T08:25:42.5419257' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (546, 17, N'6bDzRgmj5s9ofz7Sjbn94tx68HSYji47wSmpw5NGLyOnEjmql32CPTbf9LcObM7NoOpluIVsGjEAzHExaFASmg==', N'2acf7bf4-3edf-4709-98f3-2fe08a90b665', 0, 0, CAST(N'2025-11-13T08:31:49.2963634' AS DateTime2), CAST(N'2025-11-20T08:31:49.2963616' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (547, 17, N'zsbdnmfrKfV7mWzMh20/oB1xmXlS/c7ZVsH0MfoSY8m8iNVudmhu6QnxbLE3vyk9rtJjI3g+nG8NnSkKMyeZ5Q==', N'ce312cde-5d2e-4eea-ba1d-489f2eac30d8', 0, 0, CAST(N'2025-11-13T08:31:52.3049254' AS DateTime2), CAST(N'2025-11-20T08:31:52.3049236' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (548, 8, N'vKTrlXK885Pu5bxENXUgwb489NzXkIHSR3oiXApAvF8YTi7MIQOmwI5qN2scmEOdLJWNEAOU4izRb8oLcb6bhA==', N'caecba63-235c-4545-a598-7387b6d5dca3', 0, 0, CAST(N'2025-11-13T09:46:05.5920329' AS DateTime2), CAST(N'2025-11-20T09:46:05.5916771' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (549, 8, N'IBgGgUJGMf/sy8lwy11AUM/PHeuS5YU3PItR3Ry4gRATHi6FfPKuCtFF21FmYytd0k49jvrp+Nv2FOYLeZDTag==', N'6bc6260d-6148-46da-a602-8bb1b8e8f476', 0, 0, CAST(N'2025-11-13T10:03:13.7598805' AS DateTime2), CAST(N'2025-11-20T10:03:13.7598776' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (550, 8, N'A2NquC5BNU0qJ1CzROu5lDrv+AG+BSev8yPllrQR8xxwVDa6AbICMumYXM7PvdxhvmUYvKyvhvoVmO0hGYxNrw==', N'6c72210e-a41a-4d7a-abc0-17c05399f5b0', 0, 0, CAST(N'2025-11-13T10:03:17.0320999' AS DateTime2), CAST(N'2025-11-20T10:03:17.0320981' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (551, 8, N'ndgfjYFNPlBYwt26BBFKDUYj03VkMbUHnnJ+34cjgy9JYBC3Wlr4kMbuv5f857WzK/Z76e+aCoHDd6qgViGsjQ==', N'0c2e96e9-3341-468a-9923-39d669999a93', 0, 0, CAST(N'2025-11-13T10:56:37.6575027' AS DateTime2), CAST(N'2025-11-20T10:56:37.6571822' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (552, 8, N'yvGL9tiv4Xv5LDcrqUm9f2Oz76fs/T4VNjMj2uzyYBb9NRZZwvPQ9MJ3Hz3SslkG58W91Qvq2ZvtegRbKZVolw==', N'17375874-4303-43af-82a0-b236414b0e0e', 0, 0, CAST(N'2025-11-13T10:56:41.9809485' AS DateTime2), CAST(N'2025-11-20T10:56:41.9809453' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (553, 8, N'wuNiKBP70JXDLwDgaeodUCaqyED/CqH2gvtyNCeaNEpkM6qVit+xaWXLzpzpikPCKNgo8gM6FnXi3XC5rgqu+g==', N'5d9efbb4-e0d9-4832-91a3-36711bc513e8', 0, 0, CAST(N'2025-11-13T11:52:53.0673809' AS DateTime2), CAST(N'2025-11-20T11:52:53.0673759' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (554, 8, N'XEirgRM4a9MVGc8o3eEeuJZISo0WhBpeItNMDEAHlzzGZtJvepBIEii4FA9AbYwxaq5uqfGwfYaPFmMh6ZmtPg==', N'f9e85f98-6986-418f-be18-4b5a78cc728b', 0, 0, CAST(N'2025-11-16T05:42:47.9891306' AS DateTime2), CAST(N'2025-11-23T05:42:47.9888552' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (555, 8, N'gT4SAHgSVQprlBJTikQPFYNABv27i2XUygws/XfRweAwk8gFsw3epK55G0KsJejpgPwE3wnUY0KuhJdinz/f0Q==', N'9c451d43-5fef-47a6-90aa-269750592f48', 0, 0, CAST(N'2025-11-16T05:42:50.1332709' AS DateTime2), CAST(N'2025-11-23T05:42:50.1332693' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (556, 17, N'qAKA+Xd1M81IJma9tTeIDWO3p2bBR9KXL2BICmicAGVBJliLgpEYej+0Ir/N1HFVEqILbPlnvoDgMEia8rWaPQ==', N'7ef318ab-1113-4ce0-976e-7e2ec08bf9d3', 0, 0, CAST(N'2025-11-16T07:09:21.0209782' AS DateTime2), CAST(N'2025-11-23T07:09:21.0209751' AS DateTime2))
GO
INSERT [dbo].[Security_RefreshToken] ([Id], [UserId], [Token], [JwtId], [IsUsed], [IsRevoked], [CreatedDate], [ExpiryDate]) VALUES (557, 17, N'/CcliKsT5SwD8q8usjEPdTgHdx8cIlukW4c8TDXPLGtKqe6dMiRPqVbs/Y7Lxpcdf7JvjCKsAWFXwWbjGXktPQ==', N'ec2e1fa0-af8c-4b86-85c2-bc50c1890487', 0, 0, CAST(N'2025-11-16T07:09:24.7515407' AS DateTime2), CAST(N'2025-11-23T07:09:24.7515380' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Security_RefreshToken] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_Master] ON 
GO
INSERT [dbo].[SmartRx_Master] ([Id], [UserId], [PatientId], [ChiefComplaintIds], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [Remarks], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [IsRejected], [RejectedById], [RejectedDate], [RejectionRemarks], [IsExistingPatient], [HasAnyRelative], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [HasInvestigationFavourite], [HasMedicineFavourite], [PrescriptionId], [PrescriptionDate]) VALUES (2, 8, 1, N'', CAST(N'2025-06-07T18:33:18.4233333' AS DateTime2), N'05:30PM', CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-02T18:33:18.4233333' AS DateTime2), 2, CAST(N'2025-10-28T15:04:48.8549597' AS DateTime2), 8, 1, 1, 3, CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SmartRx_Master] ([Id], [UserId], [PatientId], [ChiefComplaintIds], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [Remarks], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [IsRejected], [RejectedById], [RejectedDate], [RejectionRemarks], [IsExistingPatient], [HasAnyRelative], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [HasInvestigationFavourite], [HasMedicineFavourite], [PrescriptionId], [PrescriptionDate]) VALUES (3, 7, 2, N'', CAST(N'2025-06-07T18:33:18.4233333' AS DateTime2), N'05:30PM', CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-06-02T18:33:18.4233333' AS DateTime2), 2, NULL, NULL, NULL, NULL, 3, NULL)
GO
INSERT [dbo].[SmartRx_Master] ([Id], [UserId], [PatientId], [ChiefComplaintIds], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [Remarks], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [IsRejected], [RejectedById], [RejectedDate], [RejectionRemarks], [IsExistingPatient], [HasAnyRelative], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [HasInvestigationFavourite], [HasMedicineFavourite], [PrescriptionId], [PrescriptionDate]) VALUES (4, 8, 8, N'', CAST(N'2025-12-10T00:00:00.0000000' AS DateTime2), N'08:00PM', CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(18, 2)), N'', NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', 1, 2, NULL, 1, 2, NULL, 1, 2, NULL, NULL, NULL, NULL, N'', 0, 0, N'', N'', N'', N'', N'', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL, NULL, 63, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SmartRx_Master] ([Id], [UserId], [PatientId], [ChiefComplaintIds], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [Remarks], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [IsRejected], [RejectedById], [RejectedDate], [RejectionRemarks], [IsExistingPatient], [HasAnyRelative], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [HasInvestigationFavourite], [HasMedicineFavourite], [PrescriptionId], [PrescriptionDate]) VALUES (5, 8, 12, N'', NULL, N'', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', 1, 2, NULL, 1, 2, NULL, 1, 2, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', N'', N'', N'', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL, NULL, 64, CAST(N'2024-08-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SmartRx_Master] ([Id], [UserId], [PatientId], [ChiefComplaintIds], [NextAppoinmentDate], [NextAppoinmentTime], [DiscountPercentageOnMedicineByDoctor], [DiscountPercentageOnInvestigationByDoctor], [Remarks], [IsLocked], [LockedById], [LockedDate], [IsReported], [ReportById], [ReportDate], [ReportReason], [ReportDetails], [IsRecommended], [RecommendedById], [RecommendedDate], [IsApproved], [ApprovedById], [ApprovedDate], [IsCompleted], [CompletedById], [CompletedDate], [IsRejected], [RejectedById], [RejectedDate], [RejectionRemarks], [IsExistingPatient], [HasAnyRelative], [Tag1], [Tag2], [Tag3], [Tag4], [Tag5], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [HasInvestigationFavourite], [HasMedicineFavourite], [PrescriptionId], [PrescriptionDate]) VALUES (6, 8, 14, N'', NULL, N'', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', 1, 2, NULL, 1, 2, NULL, 1, 2, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', N'', N'', N'', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL, NULL, 66, CAST(N'2020-12-24T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[SmartRx_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientAdvice] ON 
GO
INSERT [dbo].[SmartRx_PatientAdvice] ([Id], [SmartRxMasterId], [PrescriptionId], [Advice], [AdviceKeywordToRecommend], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, 2, 3, N'Rinse with warm water', N'দাঁত, দাঁতপরিষ্কার, দাঁতব্রাশ, Teeth, TeethClean, ToothBrush', CAST(N'2025-06-03T12:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientAdvice] ([Id], [SmartRxMasterId], [PrescriptionId], [Advice], [AdviceKeywordToRecommend], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, 2, 3, N'Do not use cold water', N'এলার্জি, পরিবেশগতঅ্যালার্জি, অ্যালার্জেন, Allergy, EnvironmentalAllergy, Allergen', CAST(N'2025-06-03T12:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientAdvice] ([Id], [SmartRxMasterId], [PrescriptionId], [Advice], [AdviceKeywordToRecommend], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, 4, 63, N'Restriction: Avoid Fat', N'To avoid fat, limit foods high in saturated and trans fats, such as fatty cuts of meat, processed meats like bacon and sausage, butter, and full-fat dairy products. Also, avoid deep-fried foods, baked goods like cookies and cakes, and products made with palm or coconut oil. ', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientAdvice] ([Id], [SmartRxMasterId], [PrescriptionId], [Advice], [AdviceKeywordToRecommend], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, 4, 63, N'Exercise Regularly', N'Exercise can help prevent excess weight gain or help you keep off lost weight. When you take part in physical activity, you burn calories.', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientAdvice] ([Id], [SmartRxMasterId], [PrescriptionId], [Advice], [AdviceKeywordToRecommend], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (7, 4, 63, N'Measure BP Regularly', N'To measure your blood pressure regularly, the frequency depends on your health, but a common recommendation for those with high blood pressure is to measure it twice a day (morning and evening) for a week when starting or changing medication, and less often once stable.', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientAdvice] ([Id], [SmartRxMasterId], [PrescriptionId], [Advice], [AdviceKeywordToRecommend], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, 5, 64, N'Exercise regularly', N'Exercise regularly', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientAdvice] ([Id], [SmartRxMasterId], [PrescriptionId], [Advice], [AdviceKeywordToRecommend], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, 6, 66, N'ডাক্তারের পরামর্শ ছাড়া কোনও প্রকার ঔষধ ব্যবহার করবেন না।', N'medicine', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientAdvice] ([Id], [SmartRxMasterId], [PrescriptionId], [Advice], [AdviceKeywordToRecommend], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, 6, 66, N'মাথা ঝুঁকে কোনো কাজে করবেন না।', N'', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientAdvice] ([Id], [SmartRxMasterId], [PrescriptionId], [Advice], [AdviceKeywordToRecommend], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (11, 6, 66, N'গরম সেঁক দিবেন।', N'', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientAdvice] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientChiefComplaint] ON 
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (1, 2, 3, CAST(N'2025-09-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'    Increased creatinine level since 2015, 
    Fluctuation in BP since 2007 
    Diabetes')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (2, 2, 3, CAST(N'2025-09-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Test Chief Complaint')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (3, 4, 63, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Headache')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (4, 4, 63, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Vertigo')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (5, 4, 63, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Insomnia')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (6, 5, 64, CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Fever')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (7, 5, 64, CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Pain')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (8, 5, 64, CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Foot Injury')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (9, 6, 66, CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Dimness of vision of distance')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (10, 6, 66, CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Eyeache')
GO
INSERT [dbo].[SmartRx_PatientChiefComplaint] ([Id], [SmartRxMasterId], [UploadedPrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Description]) VALUES (11, 6, 66, CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Headache')
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientChiefComplaint] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientDoctor] ON 
GO
INSERT [dbo].[SmartRx_PatientDoctor] ([Id], [SmartRxMasterId], [PrescriptionId], [DoctorId], [ChamberFee], [DoctorRating], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ActiveChamberId], [ChamberFeeMeasurementUnitId], [ChamberWaitTimeHour], [ChamberWaitTimeMinute], [ConsultingDurationInMinutes], [OtherExpense], [TransportExpense], [TravelTimeMinute]) VALUES (1, 2, 3, 3, CAST(1200.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(5, 2)), N'', CAST(N'2025-06-02T19:13:19.0566667' AS DateTime2), 7, CAST(N'2025-11-02T10:48:05.9175101' AS DateTime2), 8, NULL, 17, NULL, 40, 5, NULL, CAST(300.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[SmartRx_PatientDoctor] ([Id], [SmartRxMasterId], [PrescriptionId], [DoctorId], [ChamberFee], [DoctorRating], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ActiveChamberId], [ChamberFeeMeasurementUnitId], [ChamberWaitTimeHour], [ChamberWaitTimeMinute], [ConsultingDurationInMinutes], [OtherExpense], [TransportExpense], [TravelTimeMinute]) VALUES (5, 4, 63, 12, CAST(1500.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-11-11T07:40:37.6679490' AS DateTime2), 8, NULL, 17, NULL, 10, 10, NULL, CAST(200.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[SmartRx_PatientDoctor] ([Id], [SmartRxMasterId], [PrescriptionId], [DoctorId], [ChamberFee], [DoctorRating], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ActiveChamberId], [ChamberFeeMeasurementUnitId], [ChamberWaitTimeHour], [ChamberWaitTimeMinute], [ConsultingDurationInMinutes], [OtherExpense], [TransportExpense], [TravelTimeMinute]) VALUES (6, 5, 64, 13, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL, 17, NULL, 0, 0, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[SmartRx_PatientDoctor] ([Id], [SmartRxMasterId], [PrescriptionId], [DoctorId], [ChamberFee], [DoctorRating], [Comments], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ActiveChamberId], [ChamberFeeMeasurementUnitId], [ChamberWaitTimeHour], [ChamberWaitTimeMinute], [ConsultingDurationInMinutes], [OtherExpense], [TransportExpense], [TravelTimeMinute]) VALUES (7, 6, 66, 14, CAST(0.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, NULL, 17, NULL, 0, 0, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientDoctor] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientHistory] ON 
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (13, 2, 3, N'Due to that had a stroke as per Pt was on medicine 2023', CAST(N'2025-06-02T22:19:11.6200000' AS DateTime2), 7, NULL, NULL, N'H/O COVID (2022)')
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (14, 2, 3, N'', CAST(N'2025-06-02T22:19:11.6300000' AS DateTime2), 7, NULL, NULL, N'H/O Dengue (2024)')
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (15, 2, 3, N'', CAST(N'2025-06-02T22:19:11.6333333' AS DateTime2), 7, NULL, NULL, N'Presence of hernia in right side of Aabdomen')
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (16, 3, 3, N'Due to that had a stroke as per Pt was on medicine 2023', CAST(N'2025-06-02T22:19:11.6200000' AS DateTime2), 7, NULL, NULL, N'H/O COVID (2022)')
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (17, 3, 3, N'', CAST(N'2025-06-02T22:19:11.6300000' AS DateTime2), 7, NULL, NULL, N'H/O Dengue (2024)')
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (18, 3, 3, N'', CAST(N'2025-06-02T22:19:11.6333333' AS DateTime2), 7, NULL, NULL, N'Presence of hernia in right side of Aabdomen')
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (19, 4, 63, NULL, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Headache, Vertigo, Insomnia')
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (20, 5, 64, N'Present in family tree', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Present in family tree')
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (21, 6, 66, N'Combined SICS + PCIOL', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Combined SICS + PCIOL')
GO
INSERT [dbo].[SmartRx_PatientHistory] ([Id], [SmartRxMasterId], [PrescriptionId], [Details], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [Title]) VALUES (22, 6, 66, N'Chemical Injury', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, N'Chemical Injury')
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientInvestigation] ON 
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (11, 2, 3, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-11-06T16:09:22.2949929' AS DateTime2), 8, CAST(5.00 AS Decimal(10, 2)), 3, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(500.00 AS Decimal(10, 2)), 1, N'50', 17, N'50', N'50,11')
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (12, 2, 3, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-11-06T16:09:22.2967993' AS DateTime2), 8, CAST(0.00 AS Decimal(10, 2)), 4, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(10, 2)), 10, N'50', 17, N'50', N'50')
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (13, 2, 3, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-11-06T16:09:22.2983305' AS DateTime2), 8, CAST(0.00 AS Decimal(10, 2)), 5, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(800.00 AS Decimal(10, 2)), 11, NULL, 17, N'50', N'50')
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (14, 2, 3, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-11-06T16:09:22.2983526' AS DateTime2), 8, CAST(0.00 AS Decimal(10, 2)), 6, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(200.00 AS Decimal(10, 2)), 12, NULL, 17, N'50', N'50')
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (15, 2, 3, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-11-06T16:09:22.2983688' AS DateTime2), 8, CAST(0.00 AS Decimal(10, 2)), NULL, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(10, 2)), 13, NULL, 17, N'50', NULL)
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (16, 2, 3, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-11-06T16:09:22.2983883' AS DateTime2), 8, CAST(0.00 AS Decimal(10, 2)), NULL, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(10, 2)), 14, NULL, 17, N'50', NULL)
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (17, 4, 63, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, CAST(0.00 AS Decimal(10, 2)), NULL, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 17, NULL, 17, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (18, 4, 63, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, CAST(0.00 AS Decimal(10, 2)), NULL, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 18, NULL, 17, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (19, 5, 64, CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, CAST(0.00 AS Decimal(10, 2)), NULL, 0, N'', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(350.00 AS Decimal(10, 2)), 19, N'', 17, N'', N'')
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (20, 5, 64, CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, CAST(0.00 AS Decimal(10, 2)), NULL, 0, N'', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(470.00 AS Decimal(10, 2)), 20, N'', 17, N'', N'')
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (21, 6, 66, CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, CAST(0.00 AS Decimal(10, 2)), NULL, 0, N'', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(500.00 AS Decimal(10, 2)), 1, N'', 17, N'', N'')
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (22, 6, 66, CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, CAST(0.00 AS Decimal(10, 2)), NULL, 0, N'', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(500.00 AS Decimal(10, 2)), 21, N'', 17, N'', N'')
GO
INSERT [dbo].[SmartRx_PatientInvestigation] ([Id], [SmartRxMasterId], [PrescriptionId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [DiscountByAuthority], [DiagnosticCenterWiseTestId], [IsCompleted], [Remarks], [Result], [TestDate], [TestPrice], [TestId], [UserSelectedTestCenterIds], [PriceUnitId], [Wishlist], [DoctorRecommendedTestCenterIds]) VALUES (23, 6, 66, CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, CAST(0.00 AS Decimal(10, 2)), NULL, 0, N'', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(450.00 AS Decimal(10, 2)), 22, N'', 17, N'', N'')
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientInvestigation] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientMedicine] ON 
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (1, 2, 3, 30, N'Massage below eye regular', CAST(N'2025-06-15T17:16:31.3866667' AS DateTime2), 2, CAST(N'2025-07-24T08:20:29.6268482' AS DateTime2), 8, 9, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(2.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'1 Month', CAST(N'2025-06-17T17:16:31.3866667' AS DateTime2), CAST(N'2025-06-15T17:16:31.3866667' AS DateTime2), N'4', NULL, NULL, NULL, N'test', NULL)
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (3, 2, 3, 30, N'Massage below eye regular', CAST(N'2025-06-15T17:18:01.4566667' AS DateTime2), 2, CAST(N'2025-07-24T08:20:29.7005914' AS DateTime2), 8, 10, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'Continue', CAST(N'2025-06-17T17:18:01.4566667' AS DateTime2), CAST(N'2025-06-15T17:18:01.4566667' AS DateTime2), N'2', NULL, NULL, NULL, N'test', NULL)
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (5, 2, 3, 30, N'', CAST(N'2025-06-15T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-09-09T09:46:48.5030487' AS DateTime2), 8, 16, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'3 Months', CAST(N'2025-09-22T00:00:00.0000000' AS DateTime2), CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), N'2', NULL, NULL, NULL, NULL, N'')
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (7, 2, 3, 30, NULL, CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-10-28T09:04:48.5527416' AS DateTime2), 8, 18, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'2 Months', CAST(N'2025-07-23T00:00:00.0000000' AS DateTime2), CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), N'3', NULL, NULL, NULL, NULL, N'16')
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (8, 2, 3, 30, NULL, CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-07-24T08:20:29.7946371' AS DateTime2), 8, 20, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'1 Month', CAST(N'2025-07-22T00:00:00.0000000' AS DateTime2), CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), N'1', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (9, 2, 3, 30, NULL, CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-08-08T16:30:55.1239657' AS DateTime2), 8, 21, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'2 Weeks', CAST(N'2025-07-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-06-23T00:00:00.0000000' AS DateTime2), N'5', NULL, NULL, NULL, NULL, N'16,20')
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (10, 4, 63, 30, NULL, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 23, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'Continue', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-12-10T00:00:00.0000000' AS DateTime2), N'1', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (11, 5, 64, 30, N'', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, 8, 29, N'', CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'1 Month', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-12-10T00:00:00.0000000' AS DateTime2), N'1', NULL, NULL, N'', N'', N'')
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (12, 5, 64, 30, N'After meal', CAST(N'2025-11-12T00:00:00.0000000' AS DateTime2), 2, NULL, 8, 30, N'', CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'1 Month', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-12-10T00:00:00.0000000' AS DateTime2), N'2', NULL, NULL, N'', N'', N'')
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (15, 6, 66, 60, N'১ ফোটা করে ৪ বার দুই চোখে চলবে', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, 8, 31, N'', CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'Continue', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), CAST(N'2025-12-13T00:00:00.0000000' AS DateTime2), N'4', NULL, NULL, N'', N'', N'')
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (16, 6, 66, 7, N'খাবারে পরে', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, 8, 32, N'', CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'7 Days', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), N'2', NULL, NULL, N'', N'', N'')
GO
INSERT [dbo].[SmartRx_PatientMedicine] ([Id], [SmartRxMasterId], [PrescriptionId], [DurationOfContinuationCount], [Notes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [MedicineId], [DescriptionForMoreThanRegularDose], [Dose10InADay], [Dose11InADay], [Dose12InADay], [Dose1InADay], [Dose2InADay], [Dose3InADay], [Dose4InADay], [Dose5InADay], [Dose6InADay], [Dose7InADay], [Dose8InADay], [Dose9InADay], [DurationOfContinuation], [DurationOfContinuationEndDate], [DurationOfContinuationStartDate], [FrequencyInADay], [IsBeforeMeal], [IsMoreThanRegularDose], [Restrictions], [Rules], [Wishlist]) VALUES (17, 6, 66, 7, N'খাবারে পরে', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, 8, 33, N'', CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), N'7 Days', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), CAST(N'2025-11-20T00:00:00.0000000' AS DateTime2), N'2', NULL, NULL, N'', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientMedicine] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientOtherExpense] ON 
GO
INSERT [dbo].[SmartRx_PatientOtherExpense] ([Id], [SmartRxMasterId], [PrescriptionId], [ExpenseName], [Description], [Amount], [CurrencyUnitId], [ExpenseDate], [ExpenseNotes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, 2, 3, N'Test expense', NULL, CAST(500.00 AS Decimal(10, 2)), 17, CAST(N'2025-09-15T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2025-09-15T13:59:08.2282569' AS DateTime2), 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientOtherExpense] ([Id], [SmartRxMasterId], [PrescriptionId], [ExpenseName], [Description], [Amount], [CurrencyUnitId], [ExpenseDate], [ExpenseNotes], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, 2, 3, N'Other Test expense checking', NULL, CAST(500.00 AS Decimal(10, 2)), 17, CAST(N'2025-09-15T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2025-09-15T16:48:53.1502119' AS DateTime2), 8, CAST(N'2025-09-15T16:49:13.1547052' AS DateTime2), 8)
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientOtherExpense] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientProfile] ON 
GO
INSERT [dbo].[SmartRx_PatientProfile] ([Id], [PatientCode], [FirstName], [LastName], [NickName], [Age], [DateOfBirth], [Gender], [BloodGroup], [Height], [PhoneNumber], [Email], [ProfilePhotoName], [ProfilePhotoPath], [Address], [PoliceStationId], [CityId], [ExistingPatientId], [PostalCode], [EmergencyContact], [MaritalStatus], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsExistingPatient], [IsRelative], [Profession], [RelationToPatient], [RelatedToPatientId], [HeightFeet], [HeightInches], [HeightMeasurementUnitId], [Weight], [WeightMeasurementUnitId], [ProfileProgress], [AgeMonth], [AgeYear], [UserId]) VALUES (1, N'P000000001', N'John ABC', N'Doe', N'Johnny', CAST(39.00 AS Decimal(18, 2)), CAST(N'1985-11-08T06:00:00.0000000' AS DateTime2), 1, 3, N'5ft 5in', N'8801784567702', N'john.doe@example.com', N'PatientProfilePhoto_P000000001_thumbnail.jpg', N'photos\PatientProfilePhoto_P000000001_thumbnail.jpg', N'Dhaka, BD', 5, 2, NULL, N'1234', N'01987654320', 1, 1, CAST(N'2025-06-02T18:04:28.3166667' AS DateTime2), 2, CAST(N'2025-11-02T21:59:27.1042279' AS DateTime2), 8, 0, 0, N'Jr. Engineer Level 2', NULL, NULL, 5, CAST(5.00 AS Decimal(18, 2)), 21, CAST(80.00 AS Decimal(18, 2)), 7, 100, 5, 49, 8)
GO
INSERT [dbo].[SmartRx_PatientProfile] ([Id], [PatientCode], [FirstName], [LastName], [NickName], [Age], [DateOfBirth], [Gender], [BloodGroup], [Height], [PhoneNumber], [Email], [ProfilePhotoName], [ProfilePhotoPath], [Address], [PoliceStationId], [CityId], [ExistingPatientId], [PostalCode], [EmergencyContact], [MaritalStatus], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsExistingPatient], [IsRelative], [Profession], [RelationToPatient], [RelatedToPatientId], [HeightFeet], [HeightInches], [HeightMeasurementUnitId], [Weight], [WeightMeasurementUnitId], [ProfileProgress], [AgeMonth], [AgeYear], [UserId]) VALUES (2, N'P000000002', N'Shahriar', N'Kabir', N'', CAST(20.00 AS Decimal(18, 2)), CAST(N'2005-06-02T18:05:30.9633333' AS DateTime2), 1, 3, N'144cm', N'01996806687', N'shahanazdev19@gmail.com', N'Paira.jpg', N'photos\Paira.jpg', N'Dhaka, BD', 11, 1, 37, N'1215', NULL, 1, 1, CAST(N'2025-06-02T18:05:30.9633333' AS DateTime2), 2, CAST(N'2025-11-02T21:32:01.6846440' AS DateTime2), 8, 0, 1, NULL, N'Brother', 1, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, 0, NULL, NULL, 8)
GO
INSERT [dbo].[SmartRx_PatientProfile] ([Id], [PatientCode], [FirstName], [LastName], [NickName], [Age], [DateOfBirth], [Gender], [BloodGroup], [Height], [PhoneNumber], [Email], [ProfilePhotoName], [ProfilePhotoPath], [Address], [PoliceStationId], [CityId], [ExistingPatientId], [PostalCode], [EmergencyContact], [MaritalStatus], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsExistingPatient], [IsRelative], [Profession], [RelationToPatient], [RelatedToPatientId], [HeightFeet], [HeightInches], [HeightMeasurementUnitId], [Weight], [WeightMeasurementUnitId], [ProfileProgress], [AgeMonth], [AgeYear], [UserId]) VALUES (3, N'P000000003', N'Shahanaz', N'Sultana', NULL, CAST(30.00 AS Decimal(18, 2)), CAST(N'1995-08-21T00:00:00.0000000' AS DateTime2), 2, 4, N'5ft 2in', N'01996806686', N'sha@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, CAST(N'2025-08-20T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-11-02T21:32:01.6846516' AS DateTime2), 8, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, 0, NULL, NULL, 8)
GO
INSERT [dbo].[SmartRx_PatientProfile] ([Id], [PatientCode], [FirstName], [LastName], [NickName], [Age], [DateOfBirth], [Gender], [BloodGroup], [Height], [PhoneNumber], [Email], [ProfilePhotoName], [ProfilePhotoPath], [Address], [PoliceStationId], [CityId], [ExistingPatientId], [PostalCode], [EmergencyContact], [MaritalStatus], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsExistingPatient], [IsRelative], [Profession], [RelationToPatient], [RelatedToPatientId], [HeightFeet], [HeightInches], [HeightMeasurementUnitId], [Weight], [WeightMeasurementUnitId], [ProfileProgress], [AgeMonth], [AgeYear], [UserId]) VALUES (8, N'P000000004', N'Mr. Anwar', N'Hossain', N'', CAST(30.00 AS Decimal(18, 2)), CAST(N'1995-11-09T18:00:00.0000000' AS DateTime2), 1, 4, N'6ft 0in', N'8801675645342', N'', N'', N'', N'Dhaka, BD', NULL, NULL, NULL, N'', N'', 2, 1, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, CAST(N'2025-11-11T13:45:17.5979751' AS DateTime2), 8, 0, 0, N'', N'', NULL, 6, NULL, 21, CAST(86.00 AS Decimal(18, 2)), 7, 67, NULL, NULL, 8)
GO
INSERT [dbo].[SmartRx_PatientProfile] ([Id], [PatientCode], [FirstName], [LastName], [NickName], [Age], [DateOfBirth], [Gender], [BloodGroup], [Height], [PhoneNumber], [Email], [ProfilePhotoName], [ProfilePhotoPath], [Address], [PoliceStationId], [CityId], [ExistingPatientId], [PostalCode], [EmergencyContact], [MaritalStatus], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsExistingPatient], [IsRelative], [Profession], [RelationToPatient], [RelatedToPatientId], [HeightFeet], [HeightInches], [HeightMeasurementUnitId], [Weight], [WeightMeasurementUnitId], [ProfileProgress], [AgeMonth], [AgeYear], [UserId]) VALUES (12, N'P000000005', N'Mr. Ramjan', N'Ahmed', N'', CAST(35.00 AS Decimal(18, 2)), CAST(N'1990-08-21T00:00:00.0000000' AS DateTime2), 1, 2, N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, N'', N'', NULL, 1, CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 0, 0, N'', N'', NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, 0, NULL, NULL, 8)
GO
INSERT [dbo].[SmartRx_PatientProfile] ([Id], [PatientCode], [FirstName], [LastName], [NickName], [Age], [DateOfBirth], [Gender], [BloodGroup], [Height], [PhoneNumber], [Email], [ProfilePhotoName], [ProfilePhotoPath], [Address], [PoliceStationId], [CityId], [ExistingPatientId], [PostalCode], [EmergencyContact], [MaritalStatus], [IsActive], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [IsExistingPatient], [IsRelative], [Profession], [RelationToPatient], [RelatedToPatientId], [HeightFeet], [HeightInches], [HeightMeasurementUnitId], [Weight], [WeightMeasurementUnitId], [ProfileProgress], [AgeMonth], [AgeYear], [UserId]) VALUES (14, N'P000000006', N'Sultana', N'Zaman', N'', CAST(52.00 AS Decimal(18, 2)), CAST(N'1973-11-15T00:00:00.0000000' AS DateTime2), 2, 2, N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, N'', N'', NULL, 1, NULL, 2, NULL, NULL, 0, 0, N'', N'', NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, 0, NULL, NULL, 8)
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientProfile] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientRelatives] ON 
GO
INSERT [dbo].[SmartRx_PatientRelatives] ([Id], [PatientId], [PatientRelativeId], [SmartRx_MasterId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, 1, 2, 2, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientRelatives] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientReward] ON 
GO
INSERT [dbo].[SmartRx_PatientReward] ([Id], [SmartRxMasterId], [PrescriptionId], [PatientId], [BadgeId], [EarnedNonCashablePoints], [ConsumedNonCashablePoints], [TotalNonCashablePoints], [EarnedCashablePoints], [ConsumedCashablePoints], [TotalCashablePoints], [ConvertedCashableToMoney], [TotalMoney], [EncashedMoney], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ConvertedCashableToNonCashablePoints], [ConvertedNonCashableToCashablePoints], [RewardId]) VALUES (1, NULL, NULL, 1, 9, CAST(700.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(700.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'test', CAST(N'2025-10-13T06:41:15.4005963' AS DateTime2), 8, CAST(N'2025-10-13T07:03:44.0144823' AS DateTime2), 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[SmartRx_PatientReward] ([Id], [SmartRxMasterId], [PrescriptionId], [PatientId], [BadgeId], [EarnedNonCashablePoints], [ConsumedNonCashablePoints], [TotalNonCashablePoints], [EarnedCashablePoints], [ConsumedCashablePoints], [TotalCashablePoints], [ConvertedCashableToMoney], [TotalMoney], [EncashedMoney], [Remarks], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [ConvertedCashableToNonCashablePoints], [ConvertedNonCashableToCashablePoints], [RewardId]) VALUES (2, NULL, NULL, 1, 9, CAST(600.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'test', CAST(N'2025-10-13T06:45:18.5268750' AS DateTime2), 8, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 4)
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientReward] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientVitals] ON 
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (1, 2, 3, 65, CAST(150.00 AS Decimal(5, 2)), N'', CAST(N'2025-07-29T20:16:18.9673011' AS DateTime2), 8, CAST(N'2025-08-13T16:06:41.0986787' AS DateTime2), 8, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (2, 2, 3, 64, CAST(100.00 AS Decimal(5, 2)), N'', CAST(N'2025-07-29T20:16:19.0017895' AS DateTime2), 8, CAST(N'2025-08-13T16:06:40.9564249' AS DateTime2), 8, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (4, 2, 3, 86, CAST(5.90 AS Decimal(5, 2)), N'', CAST(N'2025-07-29T21:58:05.9844214' AS DateTime2), 8, CAST(N'2025-08-24T17:14:05.0083081' AS DateTime2), 8, 1, 5, CAST(9.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (5, 2, 3, 75, CAST(58.00 AS Decimal(5, 2)), N'', CAST(N'2025-07-29T21:58:26.6910201' AS DateTime2), 8, CAST(N'2025-08-24T17:14:05.0083254' AS DateTime2), 8, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (6, 2, 3, 74, CAST(20.00 AS Decimal(5, 2)), NULL, CAST(N'2025-07-29T00:00:00.0000000' AS DateTime2), 8, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (12, 2, 3, 64, CAST(80.00 AS Decimal(5, 2)), N'', CAST(N'2025-08-25T20:16:19.0017895' AS DateTime2), 8, CAST(N'2025-08-13T16:06:40.9564249' AS DateTime2), 8, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (14, 2, 3, 86, CAST(6.00 AS Decimal(5, 2)), N'', CAST(N'2025-08-25T20:16:19.0017895' AS DateTime2), 8, CAST(N'2025-08-24T17:14:05.0083081' AS DateTime2), 8, 1, 5, CAST(9.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (15, 2, 3, 75, CAST(78.00 AS Decimal(5, 2)), N'', CAST(N'2025-07-29T21:58:26.6910201' AS DateTime2), 8, CAST(N'2025-08-24T17:14:05.0083254' AS DateTime2), 8, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (16, 2, 3, 69, CAST(16.00 AS Decimal(5, 2)), N'', CAST(N'2025-10-12T11:12:54.2687396' AS DateTime2), 8, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (17, 2, 3, 67, CAST(100.00 AS Decimal(5, 2)), N'', CAST(N'2025-10-12T11:18:42.1502412' AS DateTime2), 8, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (18, 2, 3, 72, CAST(98.00 AS Decimal(5, 2)), N'', CAST(N'2025-10-14T15:34:53.9277651' AS DateTime2), 8, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (29, 2, 3, 66, CAST(99.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-02T17:16:17.8464505' AS DateTime2), 8, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (30, 2, 3, 68, CAST(78.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-05T14:40:54.0656857' AS DateTime2), 8, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (31, 2, 3, 69, CAST(17.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-05T14:44:09.1171185' AS DateTime2), 8, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (32, 2, 3, 72, CAST(95.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-05T14:44:29.6215008' AS DateTime2), 8, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (34, 4, 63, 64, CAST(100.00 AS Decimal(5, 2)), NULL, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (35, 4, 63, 65, CAST(150.00 AS Decimal(5, 2)), NULL, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (36, 4, 63, 76, CAST(78.00 AS Decimal(5, 2)), NULL, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (37, 4, 63, 68, CAST(94.00 AS Decimal(5, 2)), NULL, CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (38, 5, 64, 64, CAST(70.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-11T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 12, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (39, 5, 64, 65, CAST(120.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-12T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 12, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (40, 5, 64, 75, CAST(72.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-12T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 12, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (41, 5, 64, 68, CAST(84.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-12T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 12, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (42, 5, 64, 66, CAST(99.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-12T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 12, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientVitals] ([Id], [SmartRxMasterId], [PrescriptionId], [VitalId], [VitalValue], [VitalStatus], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById], [PatientId], [HeightFeet], [HeightInches]) VALUES (43, 6, 66, 75, CAST(64.00 AS Decimal(5, 2)), N'', CAST(N'2025-11-13T00:00:00.0000000' AS DateTime2), 2, NULL, NULL, 12, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientVitals] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientWishlist] ON 
GO
INSERT [dbo].[SmartRx_PatientWishlist] ([Id], [SmartRxMasterId], [PrescriptionId], [WishListType], [PatientMedicineId], [PatientTestId], [PatientWishlistMedicineId], [PatientRecommendedTestCenterId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, 2, 3, N'Lab', NULL, 1, NULL, 17, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientWishlist] ([Id], [SmartRxMasterId], [PrescriptionId], [WishListType], [PatientMedicineId], [PatientTestId], [PatientWishlistMedicineId], [PatientRecommendedTestCenterId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (2, 2, 3, N'Lab', NULL, 10, NULL, 17, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientWishlist] ([Id], [SmartRxMasterId], [PrescriptionId], [WishListType], [PatientMedicineId], [PatientTestId], [PatientWishlistMedicineId], [PatientRecommendedTestCenterId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, 2, 3, N'Lab', NULL, 11, NULL, 17, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
INSERT [dbo].[SmartRx_PatientWishlist] ([Id], [SmartRxMasterId], [PrescriptionId], [WishListType], [PatientMedicineId], [PatientTestId], [PatientWishlistMedicineId], [PatientRecommendedTestCenterId], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, 2, 3, N'Lab', NULL, 12, NULL, 11, CAST(N'2025-07-03T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SmartRx_PatientWishlist] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartRx_RewardPointConversions] ON 
GO
INSERT [dbo].[SmartRx_RewardPointConversions] ([Id], [FromType], [ToType], [Amount], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (1, 1, 2, CAST(150.00 AS Decimal(10, 2)), CAST(N'2025-10-19T11:08:34.4412242' AS DateTime2), 8, CAST(N'2025-10-19T11:14:33.7013457' AS DateTime2), NULL)
GO
INSERT [dbo].[SmartRx_RewardPointConversions] ([Id], [FromType], [ToType], [Amount], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (3, 2, 1, CAST(300.00 AS Decimal(10, 2)), CAST(N'2025-10-19T11:20:34.4326690' AS DateTime2), 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_RewardPointConversions] ([Id], [FromType], [ToType], [Amount], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (4, 1, 2, CAST(50.00 AS Decimal(10, 2)), CAST(N'2025-10-19T12:26:16.2653572' AS DateTime2), 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_RewardPointConversions] ([Id], [FromType], [ToType], [Amount], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (5, 1, 2, CAST(50.00 AS Decimal(10, 2)), CAST(N'2025-10-19T12:54:05.9071719' AS DateTime2), 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_RewardPointConversions] ([Id], [FromType], [ToType], [Amount], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (6, 1, 2, CAST(50.00 AS Decimal(10, 2)), CAST(N'2025-10-21T16:12:37.3978068' AS DateTime2), 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_RewardPointConversions] ([Id], [FromType], [ToType], [Amount], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (7, 1, 2, CAST(50.00 AS Decimal(10, 2)), CAST(N'2025-10-28T17:08:09.1960313' AS DateTime2), 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_RewardPointConversions] ([Id], [FromType], [ToType], [Amount], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (8, 1, 2, CAST(200.00 AS Decimal(10, 2)), CAST(N'2025-11-10T05:00:25.2549644' AS DateTime2), 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_RewardPointConversions] ([Id], [FromType], [ToType], [Amount], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (9, 1, 2, CAST(200.00 AS Decimal(10, 2)), CAST(N'2025-11-10T05:00:43.5513839' AS DateTime2), 8, NULL, NULL)
GO
INSERT [dbo].[SmartRx_RewardPointConversions] ([Id], [FromType], [ToType], [Amount], [CreatedDate], [CreatedById], [ModifiedDate], [ModifiedById]) VALUES (10, 2, 3, CAST(100.00 AS Decimal(10, 2)), CAST(N'2025-11-10T05:03:56.9396666' AS DateTime2), 8, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SmartRx_RewardPointConversions] OFF
GO
/****** Object:  Index [IX_Configuration_AdviceFAQ_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_AdviceFAQ_CreatedById] ON [dbo].[Configuration_AdviceFAQ]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_AdviceFAQ_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_AdviceFAQ_ModifiedById] ON [dbo].[Configuration_AdviceFAQ]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_ChiefComplaint_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_ChiefComplaint_CreatedById] ON [dbo].[Configuration_ChiefComplaint]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_ChiefComplaint_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_ChiefComplaint_ModifiedById] ON [dbo].[Configuration_ChiefComplaint]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_City_CountryId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_City_CountryId] ON [dbo].[Configuration_City]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_City_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_City_CreatedById] ON [dbo].[Configuration_City]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_City_DistrictId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_City_DistrictId] ON [dbo].[Configuration_City]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_City_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_City_ModifiedById] ON [dbo].[Configuration_City]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Department_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Department_CreatedById] ON [dbo].[Configuration_Department]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Department_HospitalId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Department_HospitalId] ON [dbo].[Configuration_Department]
(
	[HospitalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Department_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Department_ModifiedById] ON [dbo].[Configuration_Department]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Department_SectionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Department_SectionId] ON [dbo].[Configuration_Department]
(
	[SectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DepartmentSection_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DepartmentSection_CreatedById] ON [dbo].[Configuration_DepartmentSection]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DepartmentSection_HospitalId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DepartmentSection_HospitalId] ON [dbo].[Configuration_DepartmentSection]
(
	[HospitalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DepartmentSection_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DepartmentSection_ModifiedById] ON [dbo].[Configuration_DepartmentSection]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Designation_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Designation_CreatedById] ON [dbo].[Configuration_Designation]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Designation_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Designation_ModifiedById] ON [dbo].[Configuration_Designation]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DiagnosisCenterWiseTest_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DiagnosisCenterWiseTest_CreatedById] ON [dbo].[Configuration_DiagnosisCenterWiseTest]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DiagnosisCenterWiseTest_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DiagnosisCenterWiseTest_ModifiedById] ON [dbo].[Configuration_DiagnosisCenterWiseTest]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DiagnosisCenterWiseTest_PriceUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DiagnosisCenterWiseTest_PriceUnitId] ON [dbo].[Configuration_DiagnosisCenterWiseTest]
(
	[PriceUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DiagnosisCenterWiseTest_TestCenterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DiagnosisCenterWiseTest_TestCenterId] ON [dbo].[Configuration_DiagnosisCenterWiseTest]
(
	[TestCenterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DiagnosisCenterWiseTest_TestId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DiagnosisCenterWiseTest_TestId] ON [dbo].[Configuration_DiagnosisCenterWiseTest]
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_District_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_District_CreatedById] ON [dbo].[Configuration_District]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_District_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_District_ModifiedById] ON [dbo].[Configuration_District]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Doctor_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Doctor_CreatedById] ON [dbo].[Configuration_Doctor]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Doctor_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Doctor_ModifiedById] ON [dbo].[Configuration_Doctor]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DoctorChamber_CityId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DoctorChamber_CityId] ON [dbo].[Configuration_DoctorChamber]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DoctorChamber_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DoctorChamber_CreatedById] ON [dbo].[Configuration_DoctorChamber]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DoctorChamber_DepartmentId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DoctorChamber_DepartmentId] ON [dbo].[Configuration_DoctorChamber]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DoctorChamber_DepartmentSectionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DoctorChamber_DepartmentSectionId] ON [dbo].[Configuration_DoctorChamber]
(
	[DepartmentSectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DoctorChamber_DoctorDesignationInChamberId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DoctorChamber_DoctorDesignationInChamberId] ON [dbo].[Configuration_DoctorChamber]
(
	[DoctorDesignationInChamberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DoctorChamber_DoctorId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DoctorChamber_DoctorId] ON [dbo].[Configuration_DoctorChamber]
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DoctorChamber_HospitalId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DoctorChamber_HospitalId] ON [dbo].[Configuration_DoctorChamber]
(
	[HospitalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_DoctorChamber_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_DoctorChamber_ModifiedById] ON [dbo].[Configuration_DoctorChamber]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Education_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Education_CreatedById] ON [dbo].[Configuration_Education]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Education_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Education_ModifiedById] ON [dbo].[Configuration_Education]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Hospital_CityId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Hospital_CityId] ON [dbo].[Configuration_Hospital]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Hospital_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Hospital_CreatedById] ON [dbo].[Configuration_Hospital]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Hospital_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Hospital_ModifiedById] ON [dbo].[Configuration_Hospital]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Investigation_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Investigation_CreatedById] ON [dbo].[Configuration_Investigation]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Investigation_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Investigation_ModifiedById] ON [dbo].[Configuration_Investigation]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Investigation_NationalPriceUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Investigation_NationalPriceUnitId] ON [dbo].[Configuration_Investigation]
(
	[NationalPriceUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Investigation_PriceUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Investigation_PriceUnitId] ON [dbo].[Configuration_Investigation]
(
	[PriceUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_InvestigationFAQ_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_InvestigationFAQ_CreatedById] ON [dbo].[Configuration_InvestigationFAQ]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_InvestigationFAQ_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_InvestigationFAQ_ModifiedById] ON [dbo].[Configuration_InvestigationFAQ]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Medicine_BrandId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Medicine_BrandId] ON [dbo].[Configuration_Medicine]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Medicine_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Medicine_CreatedById] ON [dbo].[Configuration_Medicine]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Medicine_DosageFormId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Medicine_DosageFormId] ON [dbo].[Configuration_Medicine]
(
	[DosageFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Medicine_GenericId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Medicine_GenericId] ON [dbo].[Configuration_Medicine]
(
	[GenericId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Medicine_MeasurementUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Medicine_MeasurementUnitId] ON [dbo].[Configuration_Medicine]
(
	[MeasurementUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Medicine_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Medicine_ModifiedById] ON [dbo].[Configuration_Medicine]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Medicine_PriceInUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Medicine_PriceInUnitId] ON [dbo].[Configuration_Medicine]
(
	[PriceInUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineBrand_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineBrand_CreatedById] ON [dbo].[Configuration_MedicineBrand]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineBrand_ManufacturerId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineBrand_ManufacturerId] ON [dbo].[Configuration_MedicineBrand]
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineBrand_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineBrand_ModifiedById] ON [dbo].[Configuration_MedicineBrand]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineDosageForm_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineDosageForm_CreatedById] ON [dbo].[Configuration_MedicineDosageForm]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineDosageForm_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineDosageForm_ModifiedById] ON [dbo].[Configuration_MedicineDosageForm]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineFAQ_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineFAQ_CreatedById] ON [dbo].[Configuration_MedicineFAQ]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineFAQ_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineFAQ_ModifiedById] ON [dbo].[Configuration_MedicineFAQ]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineGeneric_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineGeneric_CreatedById] ON [dbo].[Configuration_MedicineGeneric]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineGeneric_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineGeneric_ModifiedById] ON [dbo].[Configuration_MedicineGeneric]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineManufactureInfo_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineManufactureInfo_CreatedById] ON [dbo].[Configuration_MedicineManufactureInfo]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_MedicineManufactureInfo_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_MedicineManufactureInfo_ModifiedById] ON [dbo].[Configuration_MedicineManufactureInfo]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_PoliceStation_CityId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_PoliceStation_CityId] ON [dbo].[Configuration_PoliceStation]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_PoliceStation_CountryId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_PoliceStation_CountryId] ON [dbo].[Configuration_PoliceStation]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_PoliceStation_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_PoliceStation_CreatedById] ON [dbo].[Configuration_PoliceStation]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_PoliceStation_DistrictId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_PoliceStation_DistrictId] ON [dbo].[Configuration_PoliceStation]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_PoliceStation_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_PoliceStation_ModifiedById] ON [dbo].[Configuration_PoliceStation]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_PrescriptionSection_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_PrescriptionSection_CreatedById] ON [dbo].[Configuration_PrescriptionSection]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_PrescriptionSection_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_PrescriptionSection_ModifiedById] ON [dbo].[Configuration_PrescriptionSection]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Reward_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Reward_CreatedById] ON [dbo].[Configuration_Reward]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Reward_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Reward_ModifiedById] ON [dbo].[Configuration_Reward]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_RewardBadge_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_RewardBadge_CreatedById] ON [dbo].[Configuration_RewardBadge]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_RewardBadge_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_RewardBadge_ModifiedById] ON [dbo].[Configuration_RewardBadge]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_RewardBenefit_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_RewardBenefit_CreatedById] ON [dbo].[Configuration_RewardBenefit]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_RewardBenefit_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_RewardBenefit_ModifiedById] ON [dbo].[Configuration_RewardBenefit]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_RewardBenefit_RewardId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_RewardBenefit_RewardId] ON [dbo].[Configuration_RewardBenefit]
(
	[RewardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_SmartRxAcronym_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_SmartRxAcronym_CreatedById] ON [dbo].[Configuration_SmartRxAcronym]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_SmartRxAcronym_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_SmartRxAcronym_ModifiedById] ON [dbo].[Configuration_SmartRxAcronym]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Unit_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Unit_CreatedById] ON [dbo].[Configuration_Unit]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Unit_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Unit_ModifiedById] ON [dbo].[Configuration_Unit]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Vital_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Vital_CreatedById] ON [dbo].[Configuration_Vital]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Vital_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Vital_ModifiedById] ON [dbo].[Configuration_Vital]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_Vital_UnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_Vital_UnitId] ON [dbo].[Configuration_Vital]
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_VitalFAQ_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_VitalFAQ_CreatedById] ON [dbo].[Configuration_VitalFAQ]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Configuration_VitalFAQ_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Configuration_VitalFAQ_ModifiedById] ON [dbo].[Configuration_VitalFAQ]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_ApprovedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_ApprovedById] ON [dbo].[Prescription_Upload]
(
	[ApprovedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_CompletedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_CompletedById] ON [dbo].[Prescription_Upload]
(
	[CompletedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_CreatedById] ON [dbo].[Prescription_Upload]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_FolderId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_FolderId] ON [dbo].[Prescription_Upload]
(
	[FolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_LockedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_LockedById] ON [dbo].[Prescription_Upload]
(
	[LockedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_ModifiedById] ON [dbo].[Prescription_Upload]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_PatientId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_PatientId] ON [dbo].[Prescription_Upload]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_RecommendedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_RecommendedById] ON [dbo].[Prescription_Upload]
(
	[RecommendedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_ReportById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_ReportById] ON [dbo].[Prescription_Upload]
(
	[ReportById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_SmartRxId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_SmartRxId] ON [dbo].[Prescription_Upload]
(
	[SmartRxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_Upload_UserId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_Upload_UserId] ON [dbo].[Prescription_Upload]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_UserWiseFolder_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_UserWiseFolder_CreatedById] ON [dbo].[Prescription_UserWiseFolder]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_UserWiseFolder_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_UserWiseFolder_ModifiedById] ON [dbo].[Prescription_UserWiseFolder]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_UserWiseFolder_ParentFolderId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_UserWiseFolder_ParentFolderId] ON [dbo].[Prescription_UserWiseFolder]
(
	[ParentFolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_UserWiseFolder_UserId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_UserWiseFolder_UserId] ON [dbo].[Prescription_UserWiseFolder]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Security_PMSRole_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Security_PMSRole_CreatedById] ON [dbo].[Security_PMSRole]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Security_PMSRole_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Security_PMSRole_ModifiedById] ON [dbo].[Security_PMSRole]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Security_PMSUser_SmartRxUserEntityId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Security_PMSUser_SmartRxUserEntityId] ON [dbo].[Security_PMSUser]
(
	[SmartRxUserEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Security_PMSUserWiseRole_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Security_PMSUserWiseRole_CreatedById] ON [dbo].[Security_PMSUserWiseRole]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Security_PMSUserWiseRole_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Security_PMSUserWiseRole_ModifiedById] ON [dbo].[Security_PMSUserWiseRole]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Security_PMSUserWiseRole_RoleId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Security_PMSUserWiseRole_RoleId] ON [dbo].[Security_PMSUserWiseRole]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Security_RefreshToken_UserId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Security_RefreshToken_UserId] ON [dbo].[Security_RefreshToken]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_ApprovedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_ApprovedById] ON [dbo].[SmartRx_Master]
(
	[ApprovedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_CompletedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_CompletedById] ON [dbo].[SmartRx_Master]
(
	[CompletedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_CreatedById] ON [dbo].[SmartRx_Master]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_LockedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_LockedById] ON [dbo].[SmartRx_Master]
(
	[LockedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_ModifiedById] ON [dbo].[SmartRx_Master]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_PatientId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_PatientId] ON [dbo].[SmartRx_Master]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_PrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_PrescriptionId] ON [dbo].[SmartRx_Master]
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_RecommendedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_RecommendedById] ON [dbo].[SmartRx_Master]
(
	[RecommendedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_RejectedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_RejectedById] ON [dbo].[SmartRx_Master]
(
	[RejectedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_ReportById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_ReportById] ON [dbo].[SmartRx_Master]
(
	[ReportById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_Master_UserId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_Master_UserId] ON [dbo].[SmartRx_Master]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientAdvice_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientAdvice_CreatedById] ON [dbo].[SmartRx_PatientAdvice]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientAdvice_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientAdvice_ModifiedById] ON [dbo].[SmartRx_PatientAdvice]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientAdvice_PrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientAdvice_PrescriptionId] ON [dbo].[SmartRx_PatientAdvice]
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientAdvice_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientAdvice_SmartRxMasterId] ON [dbo].[SmartRx_PatientAdvice]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientChiefComplaint_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientChiefComplaint_CreatedById] ON [dbo].[SmartRx_PatientChiefComplaint]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientChiefComplaint_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientChiefComplaint_ModifiedById] ON [dbo].[SmartRx_PatientChiefComplaint]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientChiefComplaint_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientChiefComplaint_SmartRxMasterId] ON [dbo].[SmartRx_PatientChiefComplaint]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientChiefComplaint_UploadedPrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientChiefComplaint_UploadedPrescriptionId] ON [dbo].[SmartRx_PatientChiefComplaint]
(
	[UploadedPrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientDoctor_ChamberFeeMeasurementUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientDoctor_ChamberFeeMeasurementUnitId] ON [dbo].[SmartRx_PatientDoctor]
(
	[ChamberFeeMeasurementUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientDoctor_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientDoctor_CreatedById] ON [dbo].[SmartRx_PatientDoctor]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientDoctor_DoctorId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientDoctor_DoctorId] ON [dbo].[SmartRx_PatientDoctor]
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientDoctor_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientDoctor_ModifiedById] ON [dbo].[SmartRx_PatientDoctor]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientDoctor_PrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientDoctor_PrescriptionId] ON [dbo].[SmartRx_PatientDoctor]
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientDoctor_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientDoctor_SmartRxMasterId] ON [dbo].[SmartRx_PatientDoctor]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientHistory_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientHistory_CreatedById] ON [dbo].[SmartRx_PatientHistory]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientHistory_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientHistory_ModifiedById] ON [dbo].[SmartRx_PatientHistory]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientHistory_PrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientHistory_PrescriptionId] ON [dbo].[SmartRx_PatientHistory]
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientHistory_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientHistory_SmartRxMasterId] ON [dbo].[SmartRx_PatientHistory]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientInvestigation_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientInvestigation_CreatedById] ON [dbo].[SmartRx_PatientInvestigation]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientInvestigation_DiagnosticCenterWiseTestId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientInvestigation_DiagnosticCenterWiseTestId] ON [dbo].[SmartRx_PatientInvestigation]
(
	[DiagnosticCenterWiseTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientInvestigation_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientInvestigation_ModifiedById] ON [dbo].[SmartRx_PatientInvestigation]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientInvestigation_PrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientInvestigation_PrescriptionId] ON [dbo].[SmartRx_PatientInvestigation]
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientInvestigation_PriceUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientInvestigation_PriceUnitId] ON [dbo].[SmartRx_PatientInvestigation]
(
	[PriceUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientInvestigation_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientInvestigation_SmartRxMasterId] ON [dbo].[SmartRx_PatientInvestigation]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientInvestigation_TestId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientInvestigation_TestId] ON [dbo].[SmartRx_PatientInvestigation]
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientMedicine_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientMedicine_CreatedById] ON [dbo].[SmartRx_PatientMedicine]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientMedicine_MedicineId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientMedicine_MedicineId] ON [dbo].[SmartRx_PatientMedicine]
(
	[MedicineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientMedicine_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientMedicine_ModifiedById] ON [dbo].[SmartRx_PatientMedicine]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientMedicine_PrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientMedicine_PrescriptionId] ON [dbo].[SmartRx_PatientMedicine]
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientMedicine_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientMedicine_SmartRxMasterId] ON [dbo].[SmartRx_PatientMedicine]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientOtherExpense_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientOtherExpense_CreatedById] ON [dbo].[SmartRx_PatientOtherExpense]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientOtherExpense_CurrencyUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientOtherExpense_CurrencyUnitId] ON [dbo].[SmartRx_PatientOtherExpense]
(
	[CurrencyUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientOtherExpense_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientOtherExpense_ModifiedById] ON [dbo].[SmartRx_PatientOtherExpense]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientOtherExpense_PrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientOtherExpense_PrescriptionId] ON [dbo].[SmartRx_PatientOtherExpense]
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientOtherExpense_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientOtherExpense_SmartRxMasterId] ON [dbo].[SmartRx_PatientOtherExpense]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientProfile_CityId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientProfile_CityId] ON [dbo].[SmartRx_PatientProfile]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientProfile_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientProfile_CreatedById] ON [dbo].[SmartRx_PatientProfile]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientProfile_ExistingPatientId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientProfile_ExistingPatientId] ON [dbo].[SmartRx_PatientProfile]
(
	[ExistingPatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientProfile_HeightMeasurementUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientProfile_HeightMeasurementUnitId] ON [dbo].[SmartRx_PatientProfile]
(
	[HeightMeasurementUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientProfile_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientProfile_ModifiedById] ON [dbo].[SmartRx_PatientProfile]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientProfile_PoliceStationId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientProfile_PoliceStationId] ON [dbo].[SmartRx_PatientProfile]
(
	[PoliceStationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientProfile_RelatedToPatientId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientProfile_RelatedToPatientId] ON [dbo].[SmartRx_PatientProfile]
(
	[RelatedToPatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientProfile_UserId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientProfile_UserId] ON [dbo].[SmartRx_PatientProfile]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientProfile_WeightMeasurementUnitId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientProfile_WeightMeasurementUnitId] ON [dbo].[SmartRx_PatientProfile]
(
	[WeightMeasurementUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientRelatives_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientRelatives_CreatedById] ON [dbo].[SmartRx_PatientRelatives]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientRelatives_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientRelatives_ModifiedById] ON [dbo].[SmartRx_PatientRelatives]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientRelatives_PatientId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientRelatives_PatientId] ON [dbo].[SmartRx_PatientRelatives]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientRelatives_PatientRelativeId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientRelatives_PatientRelativeId] ON [dbo].[SmartRx_PatientRelatives]
(
	[PatientRelativeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientRelatives_SmartRx_MasterEntityId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientRelatives_SmartRx_MasterEntityId] ON [dbo].[SmartRx_PatientRelatives]
(
	[SmartRx_MasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientReward_BadgeId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientReward_BadgeId] ON [dbo].[SmartRx_PatientReward]
(
	[BadgeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientReward_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientReward_CreatedById] ON [dbo].[SmartRx_PatientReward]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientReward_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientReward_ModifiedById] ON [dbo].[SmartRx_PatientReward]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientReward_PatientId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientReward_PatientId] ON [dbo].[SmartRx_PatientReward]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientReward_PrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientReward_PrescriptionId] ON [dbo].[SmartRx_PatientReward]
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientReward_RewardId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientReward_RewardId] ON [dbo].[SmartRx_PatientReward]
(
	[RewardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientReward_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientReward_SmartRxMasterId] ON [dbo].[SmartRx_PatientReward]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientVitals_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientVitals_CreatedById] ON [dbo].[SmartRx_PatientVitals]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientVitals_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientVitals_ModifiedById] ON [dbo].[SmartRx_PatientVitals]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientVitals_PatientId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientVitals_PatientId] ON [dbo].[SmartRx_PatientVitals]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientVitals_PrescriptionId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientVitals_PrescriptionId] ON [dbo].[SmartRx_PatientVitals]
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientVitals_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientVitals_SmartRxMasterId] ON [dbo].[SmartRx_PatientVitals]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_PatientVitals_VitalId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_PatientVitals_VitalId] ON [dbo].[SmartRx_PatientVitals]
(
	[VitalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_ReferredConsultant_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_ReferredConsultant_CreatedById] ON [dbo].[SmartRx_ReferredConsultant]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_ReferredConsultant_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_ReferredConsultant_ModifiedById] ON [dbo].[SmartRx_ReferredConsultant]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_ReferredConsultant_ReferredConsultantId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_ReferredConsultant_ReferredConsultantId] ON [dbo].[SmartRx_ReferredConsultant]
(
	[ReferredConsultantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_ReferredConsultant_SmartRxMasterId]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_ReferredConsultant_SmartRxMasterId] ON [dbo].[SmartRx_ReferredConsultant]
(
	[SmartRxMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_RewardPointConversions_CreatedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_RewardPointConversions_CreatedById] ON [dbo].[SmartRx_RewardPointConversions]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SmartRx_RewardPointConversions_ModifiedById]    Script Date: 11/16/2025 1:35:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_SmartRx_RewardPointConversions_ModifiedById] ON [dbo].[SmartRx_RewardPointConversions]
(
	[ModifiedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Configuration_Country] ADD  DEFAULT (N'') FOR [CountryCode]
GO
ALTER TABLE [dbo].[Configuration_Doctor] ADD  DEFAULT (N'') FOR [FirstName]
GO
ALTER TABLE [dbo].[Configuration_Doctor] ADD  DEFAULT (N'') FOR [LastName]
GO
ALTER TABLE [dbo].[Configuration_Doctor] ADD  DEFAULT ((0)) FOR [YearOfExperiences]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsMainChamber]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (N'') FOR [ChamberAddress]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [ChamberCityId]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (N'') FOR [ChamberDescription]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (N'') FOR [ChamberGoogleAddress]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (N'') FOR [ChamberGoogleLocationLink]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (N'') FOR [ChamberName]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (N'') FOR [ChamberPostalCode]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (N'') FOR [ChamberType]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] ADD  DEFAULT (N'') FOR [DoctorVisitingDaysInChamber]
GO
ALTER TABLE [dbo].[Configuration_Hospital] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[Configuration_Hospital] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Configuration_Hospital] ADD  DEFAULT (N'') FOR [DiagnosticCenterIcon]
GO
ALTER TABLE [dbo].[Configuration_Hospital] ADD  DEFAULT (N'') FOR [Branch]
GO
ALTER TABLE [dbo].[Configuration_Investigation] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Configuration_Investigation] ADD  DEFAULT (N'') FOR [NationalPriceReference]
GO
ALTER TABLE [dbo].[Configuration_Medicine] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Configuration_MedicineBrand] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [BrandPublicId]
GO
ALTER TABLE [dbo].[Configuration_MedicineDosageForm] ADD  DEFAULT (N'') FOR [ShortForm]
GO
ALTER TABLE [dbo].[Configuration_MedicineFAQ] ADD  DEFAULT (N'') FOR [Question]
GO
ALTER TABLE [dbo].[Configuration_MedicineFAQ] ADD  DEFAULT (N'') FOR [Answer]
GO
ALTER TABLE [dbo].[Configuration_MedicineFAQ] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [MedicineId]
GO
ALTER TABLE [dbo].[Configuration_RewardBadge] ADD  DEFAULT ((0)) FOR [Heirarchy]
GO
ALTER TABLE [dbo].[Configuration_RewardBenefit] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [RewardId]
GO
ALTER TABLE [dbo].[Configuration_SmartRxAcronym] ADD  DEFAULT (N'') FOR [Elaboration]
GO
ALTER TABLE [dbo].[Configuration_VitalFAQ] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [VitalId]
GO
ALTER TABLE [dbo].[Prescription_Upload] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [PrescriptionDate]
GO
ALTER TABLE [dbo].[Prescription_UserWiseFolder] ADD  DEFAULT ('') FOR [FolderHierarchy]
GO
ALTER TABLE [dbo].[SmartRx_Master] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientChiefComplaint] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[SmartRx_PatientHistory] ADD  DEFAULT (N'') FOR [Title]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] ADD  DEFAULT ((0.0)) FOR [DiscountByAuthority]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsCompleted]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [TestDate]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [MedicineId]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose10InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose11InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose12InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose1InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose2InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose3InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose4InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose5InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose6InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose7InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose8InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ((0.0)) FOR [Dose9InADay]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT (N'') FOR [DurationOfContinuation]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DurationOfContinuationEndDate]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DurationOfContinuationStartDate]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsExistingPatient]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsRelative]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] ADD  DEFAULT ((0.0)) FOR [Weight]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] ADD  DEFAULT ((0)) FOR [ProfileProgress]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [UserId]
GO
ALTER TABLE [dbo].[SmartRx_PatientReward] ADD  DEFAULT ((0.0)) FOR [ConvertedCashableToNonCashablePoints]
GO
ALTER TABLE [dbo].[SmartRx_PatientReward] ADD  DEFAULT ((0.0)) FOR [ConvertedNonCashableToCashablePoints]
GO
ALTER TABLE [dbo].[SmartRx_PatientReward] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [RewardId]
GO
ALTER TABLE [dbo].[SmartRx_PatientVitals] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [PatientId]
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist] ADD  DEFAULT (N'') FOR [WishListType]
GO
ALTER TABLE [dbo].[Configuration_AdviceFAQ]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_AdviceFAQ_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_AdviceFAQ] CHECK CONSTRAINT [FK_Configuration_AdviceFAQ_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_AdviceFAQ]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_AdviceFAQ_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_AdviceFAQ] CHECK CONSTRAINT [FK_Configuration_AdviceFAQ_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_ChiefComplaint]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_ChiefComplaint_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_ChiefComplaint] CHECK CONSTRAINT [FK_Configuration_ChiefComplaint_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_ChiefComplaint]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_ChiefComplaint_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_ChiefComplaint] CHECK CONSTRAINT [FK_Configuration_ChiefComplaint_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_City]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_City_Configuration_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Configuration_Country] ([Id])
GO
ALTER TABLE [dbo].[Configuration_City] CHECK CONSTRAINT [FK_Configuration_City_Configuration_Country_CountryId]
GO
ALTER TABLE [dbo].[Configuration_City]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_City_Configuration_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Configuration_District] ([Id])
GO
ALTER TABLE [dbo].[Configuration_City] CHECK CONSTRAINT [FK_Configuration_City_Configuration_District_DistrictId]
GO
ALTER TABLE [dbo].[Configuration_City]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_City_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_City] CHECK CONSTRAINT [FK_Configuration_City_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_City]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_City_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_City] CHECK CONSTRAINT [FK_Configuration_City_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Department]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Department_Configuration_DepartmentSection_SectionId] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Configuration_DepartmentSection] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Department] CHECK CONSTRAINT [FK_Configuration_Department_Configuration_DepartmentSection_SectionId]
GO
ALTER TABLE [dbo].[Configuration_Department]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Department_Configuration_Hospital_HospitalId] FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Configuration_Hospital] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Department] CHECK CONSTRAINT [FK_Configuration_Department_Configuration_Hospital_HospitalId]
GO
ALTER TABLE [dbo].[Configuration_Department]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Department_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Department] CHECK CONSTRAINT [FK_Configuration_Department_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Department]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Department_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Department] CHECK CONSTRAINT [FK_Configuration_Department_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_DepartmentSection]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DepartmentSection_Configuration_Hospital_HospitalId] FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Configuration_Hospital] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration_DepartmentSection] CHECK CONSTRAINT [FK_Configuration_DepartmentSection_Configuration_Hospital_HospitalId]
GO
ALTER TABLE [dbo].[Configuration_DepartmentSection]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DepartmentSection_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DepartmentSection] CHECK CONSTRAINT [FK_Configuration_DepartmentSection_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_DepartmentSection]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DepartmentSection_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DepartmentSection] CHECK CONSTRAINT [FK_Configuration_DepartmentSection_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Designation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Designation_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Designation] CHECK CONSTRAINT [FK_Configuration_Designation_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Designation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Designation_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Designation] CHECK CONSTRAINT [FK_Configuration_Designation_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Configuration_Hospital_TestCenterId] FOREIGN KEY([TestCenterId])
REFERENCES [dbo].[Configuration_Hospital] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest] CHECK CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Configuration_Hospital_TestCenterId]
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Configuration_Investigation_TestId] FOREIGN KEY([TestId])
REFERENCES [dbo].[Configuration_Investigation] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest] CHECK CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Configuration_Investigation_TestId]
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Configuration_Unit_PriceUnitId] FOREIGN KEY([PriceUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest] CHECK CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Configuration_Unit_PriceUnitId]
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest] CHECK CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DiagnosisCenterWiseTest] CHECK CONSTRAINT [FK_Configuration_DiagnosisCenterWiseTest_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_District]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_District_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_District] CHECK CONSTRAINT [FK_Configuration_District_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_District]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_District_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_District] CHECK CONSTRAINT [FK_Configuration_District_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Doctor_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Doctor] CHECK CONSTRAINT [FK_Configuration_Doctor_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Doctor_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Doctor] CHECK CONSTRAINT [FK_Configuration_Doctor_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_City_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Configuration_City] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] CHECK CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_City_CityId]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Configuration_Department] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] CHECK CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_Department_DepartmentId]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_DepartmentSection_DepartmentSectionId] FOREIGN KEY([DepartmentSectionId])
REFERENCES [dbo].[Configuration_DepartmentSection] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] CHECK CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_DepartmentSection_DepartmentSectionId]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_Designation_DoctorDesignationInChamberId] FOREIGN KEY([DoctorDesignationInChamberId])
REFERENCES [dbo].[Configuration_Designation] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] CHECK CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_Designation_DoctorDesignationInChamberId]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_Doctor_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Configuration_Doctor] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] CHECK CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_Doctor_DoctorId]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_Hospital_HospitalId] FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Configuration_Hospital] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] CHECK CONSTRAINT [FK_Configuration_DoctorChamber_Configuration_Hospital_HospitalId]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DoctorChamber_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] CHECK CONSTRAINT [FK_Configuration_DoctorChamber_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_DoctorChamber_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_DoctorChamber] CHECK CONSTRAINT [FK_Configuration_DoctorChamber_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Education]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Education_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Education] CHECK CONSTRAINT [FK_Configuration_Education_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Education]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Education_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Education] CHECK CONSTRAINT [FK_Configuration_Education_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Hospital]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Hospital_Configuration_City_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Configuration_City] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Hospital] CHECK CONSTRAINT [FK_Configuration_Hospital_Configuration_City_CityId]
GO
ALTER TABLE [dbo].[Configuration_Hospital]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Hospital_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Hospital] CHECK CONSTRAINT [FK_Configuration_Hospital_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Hospital]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Hospital_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Hospital] CHECK CONSTRAINT [FK_Configuration_Hospital_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Investigation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Investigation_Configuration_Unit_NationalPriceUnitId] FOREIGN KEY([NationalPriceUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Investigation] CHECK CONSTRAINT [FK_Configuration_Investigation_Configuration_Unit_NationalPriceUnitId]
GO
ALTER TABLE [dbo].[Configuration_Investigation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Investigation_Configuration_Unit_PriceUnitId] FOREIGN KEY([PriceUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Investigation] CHECK CONSTRAINT [FK_Configuration_Investigation_Configuration_Unit_PriceUnitId]
GO
ALTER TABLE [dbo].[Configuration_Investigation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Investigation_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Investigation] CHECK CONSTRAINT [FK_Configuration_Investigation_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Investigation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Investigation_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Investigation] CHECK CONSTRAINT [FK_Configuration_Investigation_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_InvestigationFAQ]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_InvestigationFAQ_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_InvestigationFAQ] CHECK CONSTRAINT [FK_Configuration_InvestigationFAQ_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_InvestigationFAQ]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_InvestigationFAQ_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_InvestigationFAQ] CHECK CONSTRAINT [FK_Configuration_InvestigationFAQ_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Medicine_Configuration_MedicineBrand_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Configuration_MedicineBrand] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration_Medicine] CHECK CONSTRAINT [FK_Configuration_Medicine_Configuration_MedicineBrand_BrandId]
GO
ALTER TABLE [dbo].[Configuration_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Medicine_Configuration_MedicineDosageForm_DosageFormId] FOREIGN KEY([DosageFormId])
REFERENCES [dbo].[Configuration_MedicineDosageForm] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration_Medicine] CHECK CONSTRAINT [FK_Configuration_Medicine_Configuration_MedicineDosageForm_DosageFormId]
GO
ALTER TABLE [dbo].[Configuration_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Medicine_Configuration_MedicineGeneric_GenericId] FOREIGN KEY([GenericId])
REFERENCES [dbo].[Configuration_MedicineGeneric] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration_Medicine] CHECK CONSTRAINT [FK_Configuration_Medicine_Configuration_MedicineGeneric_GenericId]
GO
ALTER TABLE [dbo].[Configuration_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Medicine_Configuration_Unit_MeasurementUnitId] FOREIGN KEY([MeasurementUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Medicine] CHECK CONSTRAINT [FK_Configuration_Medicine_Configuration_Unit_MeasurementUnitId]
GO
ALTER TABLE [dbo].[Configuration_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Medicine_Configuration_Unit_PriceInUnitId] FOREIGN KEY([PriceInUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Medicine] CHECK CONSTRAINT [FK_Configuration_Medicine_Configuration_Unit_PriceInUnitId]
GO
ALTER TABLE [dbo].[Configuration_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Medicine_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Medicine] CHECK CONSTRAINT [FK_Configuration_Medicine_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Medicine_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Medicine] CHECK CONSTRAINT [FK_Configuration_Medicine_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineBrand]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineBrand_Configuration_MedicineManufactureInfo_ManufacturerId] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Configuration_MedicineManufactureInfo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration_MedicineBrand] CHECK CONSTRAINT [FK_Configuration_MedicineBrand_Configuration_MedicineManufactureInfo_ManufacturerId]
GO
ALTER TABLE [dbo].[Configuration_MedicineBrand]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineBrand_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineBrand] CHECK CONSTRAINT [FK_Configuration_MedicineBrand_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineBrand]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineBrand_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineBrand] CHECK CONSTRAINT [FK_Configuration_MedicineBrand_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineDosageForm]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineDosageForm_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineDosageForm] CHECK CONSTRAINT [FK_Configuration_MedicineDosageForm_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineDosageForm]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineDosageForm_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineDosageForm] CHECK CONSTRAINT [FK_Configuration_MedicineDosageForm_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineFAQ]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineFAQ_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineFAQ] CHECK CONSTRAINT [FK_Configuration_MedicineFAQ_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineFAQ]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineFAQ_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineFAQ] CHECK CONSTRAINT [FK_Configuration_MedicineFAQ_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineGeneric]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineGeneric_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineGeneric] CHECK CONSTRAINT [FK_Configuration_MedicineGeneric_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineGeneric]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineGeneric_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineGeneric] CHECK CONSTRAINT [FK_Configuration_MedicineGeneric_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineManufactureInfo]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineManufactureInfo_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineManufactureInfo] CHECK CONSTRAINT [FK_Configuration_MedicineManufactureInfo_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_MedicineManufactureInfo]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_MedicineManufactureInfo_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_MedicineManufactureInfo] CHECK CONSTRAINT [FK_Configuration_MedicineManufactureInfo_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_PoliceStation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_PoliceStation_Configuration_City_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Configuration_City] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration_PoliceStation] CHECK CONSTRAINT [FK_Configuration_PoliceStation_Configuration_City_CityId]
GO
ALTER TABLE [dbo].[Configuration_PoliceStation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_PoliceStation_Configuration_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Configuration_Country] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration_PoliceStation] CHECK CONSTRAINT [FK_Configuration_PoliceStation_Configuration_Country_CountryId]
GO
ALTER TABLE [dbo].[Configuration_PoliceStation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_PoliceStation_Configuration_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Configuration_District] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuration_PoliceStation] CHECK CONSTRAINT [FK_Configuration_PoliceStation_Configuration_District_DistrictId]
GO
ALTER TABLE [dbo].[Configuration_PoliceStation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_PoliceStation_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_PoliceStation] CHECK CONSTRAINT [FK_Configuration_PoliceStation_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_PoliceStation]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_PoliceStation_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_PoliceStation] CHECK CONSTRAINT [FK_Configuration_PoliceStation_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_PrescriptionSection]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_PrescriptionSection_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_PrescriptionSection] CHECK CONSTRAINT [FK_Configuration_PrescriptionSection_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_PrescriptionSection]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_PrescriptionSection_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_PrescriptionSection] CHECK CONSTRAINT [FK_Configuration_PrescriptionSection_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Reward]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Reward_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Reward] CHECK CONSTRAINT [FK_Configuration_Reward_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Reward]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Reward_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Reward] CHECK CONSTRAINT [FK_Configuration_Reward_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_RewardBadge]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_RewardBadge_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_RewardBadge] CHECK CONSTRAINT [FK_Configuration_RewardBadge_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_RewardBadge]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_RewardBadge_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_RewardBadge] CHECK CONSTRAINT [FK_Configuration_RewardBadge_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_RewardBenefit]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_RewardBenefit_Configuration_Reward_RewardId] FOREIGN KEY([RewardId])
REFERENCES [dbo].[Configuration_Reward] ([Id])
GO
ALTER TABLE [dbo].[Configuration_RewardBenefit] CHECK CONSTRAINT [FK_Configuration_RewardBenefit_Configuration_Reward_RewardId]
GO
ALTER TABLE [dbo].[Configuration_RewardBenefit]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_RewardBenefit_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_RewardBenefit] CHECK CONSTRAINT [FK_Configuration_RewardBenefit_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_RewardBenefit]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_RewardBenefit_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_RewardBenefit] CHECK CONSTRAINT [FK_Configuration_RewardBenefit_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_SmartRxAcronym]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_SmartRxAcronym_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_SmartRxAcronym] CHECK CONSTRAINT [FK_Configuration_SmartRxAcronym_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_SmartRxAcronym]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_SmartRxAcronym_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_SmartRxAcronym] CHECK CONSTRAINT [FK_Configuration_SmartRxAcronym_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Tags]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Tags_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Tags] CHECK CONSTRAINT [FK_Configuration_Tags_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Tags]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Tags_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Tags] CHECK CONSTRAINT [FK_Configuration_Tags_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Unit]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Unit_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Unit] CHECK CONSTRAINT [FK_Configuration_Unit_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Unit]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Unit_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Unit] CHECK CONSTRAINT [FK_Configuration_Unit_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_Vital]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Vital_Configuration_Unit_UnitId] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Vital] CHECK CONSTRAINT [FK_Configuration_Vital_Configuration_Unit_UnitId]
GO
ALTER TABLE [dbo].[Configuration_Vital]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Vital_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Vital] CHECK CONSTRAINT [FK_Configuration_Vital_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_Vital]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_Vital_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_Vital] CHECK CONSTRAINT [FK_Configuration_Vital_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Configuration_VitalFAQ]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_VitalFAQ_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_VitalFAQ] CHECK CONSTRAINT [FK_Configuration_VitalFAQ_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Configuration_VitalFAQ]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_VitalFAQ_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Configuration_VitalFAQ] CHECK CONSTRAINT [FK_Configuration_VitalFAQ_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_Prescription_UserWiseFolder_FolderId] FOREIGN KEY([FolderId])
REFERENCES [dbo].[Prescription_UserWiseFolder] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_Prescription_UserWiseFolder_FolderId]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_ApprovedById] FOREIGN KEY([ApprovedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_ApprovedById]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_CompletedById] FOREIGN KEY([CompletedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_CompletedById]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_LockedById] FOREIGN KEY([LockedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_LockedById]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_RecommendedById] FOREIGN KEY([RecommendedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_RecommendedById]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_ReportById] FOREIGN KEY([ReportById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_ReportById]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_Security_PMSUser_UserId]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_SmartRx_Master_SmartRxId] FOREIGN KEY([SmartRxId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_SmartRx_Master_SmartRxId]
GO
ALTER TABLE [dbo].[Prescription_Upload]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Upload_SmartRx_PatientProfile_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[SmartRx_PatientProfile] ([Id])
GO
ALTER TABLE [dbo].[Prescription_Upload] CHECK CONSTRAINT [FK_Prescription_Upload_SmartRx_PatientProfile_PatientId]
GO
ALTER TABLE [dbo].[Prescription_UserWiseFolder]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_UserWiseFolder_Prescription_UserWiseFolder_ParentFolderId] FOREIGN KEY([ParentFolderId])
REFERENCES [dbo].[Prescription_UserWiseFolder] ([Id])
GO
ALTER TABLE [dbo].[Prescription_UserWiseFolder] CHECK CONSTRAINT [FK_Prescription_UserWiseFolder_Prescription_UserWiseFolder_ParentFolderId]
GO
ALTER TABLE [dbo].[Prescription_UserWiseFolder]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_UserWiseFolder_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_UserWiseFolder] CHECK CONSTRAINT [FK_Prescription_UserWiseFolder_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Prescription_UserWiseFolder]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_UserWiseFolder_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Prescription_UserWiseFolder] CHECK CONSTRAINT [FK_Prescription_UserWiseFolder_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Prescription_UserWiseFolder]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_UserWiseFolder_Security_PMSUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Security_PMSUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prescription_UserWiseFolder] CHECK CONSTRAINT [FK_Prescription_UserWiseFolder_Security_PMSUser_UserId]
GO
ALTER TABLE [dbo].[Security_PMSRole]  WITH CHECK ADD  CONSTRAINT [FK_Security_PMSRole_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Security_PMSRole] CHECK CONSTRAINT [FK_Security_PMSRole_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Security_PMSRole]  WITH CHECK ADD  CONSTRAINT [FK_Security_PMSRole_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Security_PMSRole] CHECK CONSTRAINT [FK_Security_PMSRole_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Security_PMSUser]  WITH CHECK ADD  CONSTRAINT [FK_Security_PMSUser_Security_PMSUser_SmartRxUserEntityId] FOREIGN KEY([SmartRxUserEntityId])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Security_PMSUser] CHECK CONSTRAINT [FK_Security_PMSUser_Security_PMSUser_SmartRxUserEntityId]
GO
ALTER TABLE [dbo].[Security_PMSUserWiseRole]  WITH CHECK ADD  CONSTRAINT [FK_Security_PMSUserWiseRole_Security_PMSRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Security_PMSRole] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Security_PMSUserWiseRole] CHECK CONSTRAINT [FK_Security_PMSUserWiseRole_Security_PMSRole_RoleId]
GO
ALTER TABLE [dbo].[Security_PMSUserWiseRole]  WITH CHECK ADD  CONSTRAINT [FK_Security_PMSUserWiseRole_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Security_PMSUserWiseRole] CHECK CONSTRAINT [FK_Security_PMSUserWiseRole_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[Security_PMSUserWiseRole]  WITH CHECK ADD  CONSTRAINT [FK_Security_PMSUserWiseRole_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[Security_PMSUserWiseRole] CHECK CONSTRAINT [FK_Security_PMSUserWiseRole_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[Security_PMSUserWiseRole]  WITH CHECK ADD  CONSTRAINT [FK_Security_PMSUserWiseRole_Security_PMSUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Security_PMSUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Security_PMSUserWiseRole] CHECK CONSTRAINT [FK_Security_PMSUserWiseRole_Security_PMSUser_UserId]
GO
ALTER TABLE [dbo].[Security_RefreshToken]  WITH CHECK ADD  CONSTRAINT [FK_Security_RefreshToken_Security_PMSUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Security_PMSUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Security_RefreshToken] CHECK CONSTRAINT [FK_Security_RefreshToken_Security_PMSUser_UserId]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Prescription_Upload_PrescriptionId] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Prescription_Upload_PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_ApprovedById] FOREIGN KEY([ApprovedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_ApprovedById]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_CompletedById] FOREIGN KEY([CompletedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_CompletedById]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_LockedById] FOREIGN KEY([LockedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_LockedById]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_RecommendedById] FOREIGN KEY([RecommendedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_RecommendedById]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_RejectedById] FOREIGN KEY([RejectedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_RejectedById]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_ReportById] FOREIGN KEY([ReportById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_ReportById]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Security_PMSUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_Security_PMSUser_UserId]
GO
ALTER TABLE [dbo].[SmartRx_Master]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_Master_SmartRx_PatientProfile_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[SmartRx_PatientProfile] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_Master] CHECK CONSTRAINT [FK_SmartRx_Master_SmartRx_PatientProfile_PatientId]
GO
ALTER TABLE [dbo].[SmartRx_PatientAdvice]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientAdvice_Prescription_Upload_PrescriptionId] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientAdvice] CHECK CONSTRAINT [FK_SmartRx_PatientAdvice_Prescription_Upload_PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientAdvice]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientAdvice_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientAdvice] CHECK CONSTRAINT [FK_SmartRx_PatientAdvice_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientAdvice]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientAdvice_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientAdvice] CHECK CONSTRAINT [FK_SmartRx_PatientAdvice_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientAdvice]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientAdvice_SmartRx_Master_SmartRxMasterId] FOREIGN KEY([SmartRxMasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientAdvice] CHECK CONSTRAINT [FK_SmartRx_PatientAdvice_SmartRx_Master_SmartRxMasterId]
GO
ALTER TABLE [dbo].[SmartRx_PatientChiefComplaint]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientChiefComplaint_Prescription_Upload_UploadedPrescriptionId] FOREIGN KEY([UploadedPrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientChiefComplaint] CHECK CONSTRAINT [FK_SmartRx_PatientChiefComplaint_Prescription_Upload_UploadedPrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientChiefComplaint]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientChiefComplaint_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientChiefComplaint] CHECK CONSTRAINT [FK_SmartRx_PatientChiefComplaint_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientChiefComplaint]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientChiefComplaint_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientChiefComplaint] CHECK CONSTRAINT [FK_SmartRx_PatientChiefComplaint_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientChiefComplaint]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientChiefComplaint_SmartRx_Master_SmartRxMasterId] FOREIGN KEY([SmartRxMasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientChiefComplaint] CHECK CONSTRAINT [FK_SmartRx_PatientChiefComplaint_SmartRx_Master_SmartRxMasterId]
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientDoctor_Configuration_Doctor_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Configuration_Doctor] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor] CHECK CONSTRAINT [FK_SmartRx_PatientDoctor_Configuration_Doctor_DoctorId]
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientDoctor_Configuration_Unit_ChamberFeeMeasurementUnitId] FOREIGN KEY([ChamberFeeMeasurementUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor] CHECK CONSTRAINT [FK_SmartRx_PatientDoctor_Configuration_Unit_ChamberFeeMeasurementUnitId]
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientDoctor_Prescription_Upload_PrescriptionId] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor] CHECK CONSTRAINT [FK_SmartRx_PatientDoctor_Prescription_Upload_PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientDoctor_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor] CHECK CONSTRAINT [FK_SmartRx_PatientDoctor_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientDoctor_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor] CHECK CONSTRAINT [FK_SmartRx_PatientDoctor_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientDoctor_SmartRx_Master_SmartRxMasterId] FOREIGN KEY([SmartRxMasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientDoctor] CHECK CONSTRAINT [FK_SmartRx_PatientDoctor_SmartRx_Master_SmartRxMasterId]
GO
ALTER TABLE [dbo].[SmartRx_PatientHistory]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientHistory_Prescription_Upload_PrescriptionId] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientHistory] CHECK CONSTRAINT [FK_SmartRx_PatientHistory_Prescription_Upload_PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientHistory]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientHistory_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientHistory] CHECK CONSTRAINT [FK_SmartRx_PatientHistory_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientHistory]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientHistory_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientHistory] CHECK CONSTRAINT [FK_SmartRx_PatientHistory_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientHistory]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientHistory_SmartRx_Master_SmartRxMasterId] FOREIGN KEY([SmartRxMasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientHistory] CHECK CONSTRAINT [FK_SmartRx_PatientHistory_SmartRx_Master_SmartRxMasterId]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientInvestigation_Configuration_DiagnosisCenterWiseTest_DiagnosticCenterWiseTestId] FOREIGN KEY([DiagnosticCenterWiseTestId])
REFERENCES [dbo].[Configuration_DiagnosisCenterWiseTest] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] CHECK CONSTRAINT [FK_SmartRx_PatientInvestigation_Configuration_DiagnosisCenterWiseTest_DiagnosticCenterWiseTestId]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientInvestigation_Configuration_Investigation_TestId] FOREIGN KEY([TestId])
REFERENCES [dbo].[Configuration_Investigation] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] CHECK CONSTRAINT [FK_SmartRx_PatientInvestigation_Configuration_Investigation_TestId]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientInvestigation_Configuration_Unit_PriceUnitId] FOREIGN KEY([PriceUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] CHECK CONSTRAINT [FK_SmartRx_PatientInvestigation_Configuration_Unit_PriceUnitId]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientInvestigation_Prescription_Upload_PrescriptionId] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] CHECK CONSTRAINT [FK_SmartRx_PatientInvestigation_Prescription_Upload_PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientInvestigation_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] CHECK CONSTRAINT [FK_SmartRx_PatientInvestigation_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientInvestigation_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] CHECK CONSTRAINT [FK_SmartRx_PatientInvestigation_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientInvestigation_SmartRx_Master_SmartRxMasterId] FOREIGN KEY([SmartRxMasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientInvestigation] CHECK CONSTRAINT [FK_SmartRx_PatientInvestigation_SmartRx_Master_SmartRxMasterId]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientMedicine_Configuration_Medicine_MedicineId] FOREIGN KEY([MedicineId])
REFERENCES [dbo].[Configuration_Medicine] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] CHECK CONSTRAINT [FK_SmartRx_PatientMedicine_Configuration_Medicine_MedicineId]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientMedicine_Prescription_Upload_PrescriptionId] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] CHECK CONSTRAINT [FK_SmartRx_PatientMedicine_Prescription_Upload_PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientMedicine_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] CHECK CONSTRAINT [FK_SmartRx_PatientMedicine_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientMedicine_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] CHECK CONSTRAINT [FK_SmartRx_PatientMedicine_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientMedicine_SmartRx_Master_SmartRxMasterId] FOREIGN KEY([SmartRxMasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientMedicine] CHECK CONSTRAINT [FK_SmartRx_PatientMedicine_SmartRx_Master_SmartRxMasterId]
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientOtherExpense_Configuration_Unit_CurrencyUnitId] FOREIGN KEY([CurrencyUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense] CHECK CONSTRAINT [FK_SmartRx_PatientOtherExpense_Configuration_Unit_CurrencyUnitId]
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientOtherExpense_Prescription_Upload_PrescriptionId] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense] CHECK CONSTRAINT [FK_SmartRx_PatientOtherExpense_Prescription_Upload_PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientOtherExpense_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense] CHECK CONSTRAINT [FK_SmartRx_PatientOtherExpense_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientOtherExpense_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense] CHECK CONSTRAINT [FK_SmartRx_PatientOtherExpense_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientOtherExpense_SmartRx_Master_SmartRxMasterId] FOREIGN KEY([SmartRxMasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientOtherExpense] CHECK CONSTRAINT [FK_SmartRx_PatientOtherExpense_SmartRx_Master_SmartRxMasterId]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientProfile_Configuration_City_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Configuration_City] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] CHECK CONSTRAINT [FK_SmartRx_PatientProfile_Configuration_City_CityId]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientProfile_Configuration_PoliceStation_PoliceStationId] FOREIGN KEY([PoliceStationId])
REFERENCES [dbo].[Configuration_PoliceStation] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] CHECK CONSTRAINT [FK_SmartRx_PatientProfile_Configuration_PoliceStation_PoliceStationId]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientProfile_Configuration_Unit_HeightMeasurementUnitId] FOREIGN KEY([HeightMeasurementUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] CHECK CONSTRAINT [FK_SmartRx_PatientProfile_Configuration_Unit_HeightMeasurementUnitId]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientProfile_Configuration_Unit_WeightMeasurementUnitId] FOREIGN KEY([WeightMeasurementUnitId])
REFERENCES [dbo].[Configuration_Unit] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] CHECK CONSTRAINT [FK_SmartRx_PatientProfile_Configuration_Unit_WeightMeasurementUnitId]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientProfile_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] CHECK CONSTRAINT [FK_SmartRx_PatientProfile_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientProfile_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] CHECK CONSTRAINT [FK_SmartRx_PatientProfile_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientProfile_Security_PMSUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Security_PMSUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] CHECK CONSTRAINT [FK_SmartRx_PatientProfile_Security_PMSUser_UserId]
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientProfile_SmartRx_PatientProfile_RelatedToPatientId] FOREIGN KEY([RelatedToPatientId])
REFERENCES [dbo].[SmartRx_PatientProfile] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientProfile] CHECK CONSTRAINT [FK_SmartRx_PatientProfile_SmartRx_PatientProfile_RelatedToPatientId]
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientRelatives_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives] CHECK CONSTRAINT [FK_SmartRx_PatientRelatives_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientRelatives_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives] CHECK CONSTRAINT [FK_SmartRx_PatientRelatives_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientRelatives_SmartRx_Master_SmartRx_MasterId] FOREIGN KEY([SmartRx_MasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives] CHECK CONSTRAINT [FK_SmartRx_PatientRelatives_SmartRx_Master_SmartRx_MasterId]
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientRelatives_SmartRx_PatientProfile_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[SmartRx_PatientProfile] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives] CHECK CONSTRAINT [FK_SmartRx_PatientRelatives_SmartRx_PatientProfile_PatientId]
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientRelatives_SmartRx_PatientProfile_PatientRelativeId] FOREIGN KEY([PatientRelativeId])
REFERENCES [dbo].[SmartRx_PatientProfile] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientRelatives] CHECK CONSTRAINT [FK_SmartRx_PatientRelatives_SmartRx_PatientProfile_PatientRelativeId]
GO
ALTER TABLE [dbo].[SmartRx_PatientVitals]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientVitals_Configuration_Vital_VitalId] FOREIGN KEY([VitalId])
REFERENCES [dbo].[Configuration_Vital] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientVitals] CHECK CONSTRAINT [FK_SmartRx_PatientVitals_Configuration_Vital_VitalId]
GO
ALTER TABLE [dbo].[SmartRx_PatientVitals]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientVitals_Prescription_Upload_PrescriptionId] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientVitals] CHECK CONSTRAINT [FK_SmartRx_PatientVitals_Prescription_Upload_PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientVitals]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientVitals_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientVitals] CHECK CONSTRAINT [FK_SmartRx_PatientVitals_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientVitals]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientVitals_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientVitals] CHECK CONSTRAINT [FK_SmartRx_PatientVitals_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientWishlist_Configuration_Hospital_PatientRecommendedTestCenterId] FOREIGN KEY([PatientRecommendedTestCenterId])
REFERENCES [dbo].[Configuration_Hospital] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist] CHECK CONSTRAINT [FK_SmartRx_PatientWishlist_Configuration_Hospital_PatientRecommendedTestCenterId]
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientWishlist_Configuration_Investigation_PatientTestId] FOREIGN KEY([PatientTestId])
REFERENCES [dbo].[Configuration_Investigation] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist] CHECK CONSTRAINT [FK_SmartRx_PatientWishlist_Configuration_Investigation_PatientTestId]
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientWishlist_Configuration_Medicine_PatientWishListMedicineId] FOREIGN KEY([PatientWishlistMedicineId])
REFERENCES [dbo].[Configuration_Medicine] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist] CHECK CONSTRAINT [FK_SmartRx_PatientWishlist_Configuration_Medicine_PatientWishListMedicineId]
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientWishlist_Prescription_Upload_PrescriptionId] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription_Upload] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist] CHECK CONSTRAINT [FK_SmartRx_PatientWishlist_Prescription_Upload_PrescriptionId]
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientWishlist_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist] CHECK CONSTRAINT [FK_SmartRx_PatientWishlist_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientWishlist_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist] CHECK CONSTRAINT [FK_SmartRx_PatientWishlist_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_PatientWishlist_SmartRx_Master_SmartRxMasterId] FOREIGN KEY([SmartRxMasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmartRx_PatientWishlist] CHECK CONSTRAINT [FK_SmartRx_PatientWishlist_SmartRx_Master_SmartRxMasterId]
GO
ALTER TABLE [dbo].[SmartRx_ReferredConsultant]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_ReferredConsultant_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_ReferredConsultant] CHECK CONSTRAINT [FK_SmartRx_ReferredConsultant_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_ReferredConsultant]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_ReferredConsultant_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_ReferredConsultant] CHECK CONSTRAINT [FK_SmartRx_ReferredConsultant_Security_PMSUser_ModifiedById]
GO
ALTER TABLE [dbo].[SmartRx_ReferredConsultant]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_ReferredConsultant_SmartRx_Master_SmartRxMasterId] FOREIGN KEY([SmartRxMasterId])
REFERENCES [dbo].[SmartRx_Master] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_ReferredConsultant] CHECK CONSTRAINT [FK_SmartRx_ReferredConsultant_SmartRx_Master_SmartRxMasterId]
GO
ALTER TABLE [dbo].[SmartRx_ReferredConsultant]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_ReferredConsultant_SmartRx_PatientDoctor_ReferredConsultantId] FOREIGN KEY([ReferredConsultantId])
REFERENCES [dbo].[SmartRx_PatientDoctor] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_ReferredConsultant] CHECK CONSTRAINT [FK_SmartRx_ReferredConsultant_SmartRx_PatientDoctor_ReferredConsultantId]
GO
ALTER TABLE [dbo].[SmartRx_RewardPointConversions]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_RewardPointConversions_Security_PMSUser_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_RewardPointConversions] CHECK CONSTRAINT [FK_SmartRx_RewardPointConversions_Security_PMSUser_CreatedById]
GO
ALTER TABLE [dbo].[SmartRx_RewardPointConversions]  WITH CHECK ADD  CONSTRAINT [FK_SmartRx_RewardPointConversions_Security_PMSUser_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Security_PMSUser] ([Id])
GO
ALTER TABLE [dbo].[SmartRx_RewardPointConversions] CHECK CONSTRAINT [FK_SmartRx_RewardPointConversions_Security_PMSUser_ModifiedById]
GO
USE [master]
GO
ALTER DATABASE [SmartRxDB3] SET  READ_WRITE 
GO
