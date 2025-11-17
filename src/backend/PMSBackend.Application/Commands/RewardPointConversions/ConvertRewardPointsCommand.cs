using MediatR;
using PMSBackend.Application.CommonServices;
using PMSBackend.Application.DTOs;
using PMSBackend.Domain.Entities;
using PMSBackend.Domain.Repositories;
using System.ComponentModel.DataAnnotations;

namespace PMSBackend.Application.Commands.RewardPointConversions
{
    public class ConvertRewardPointsCommand : IRequest<ApiResponseResult>
    {
        [Required]
        public long UserId { get; set; }

        [Required]
        [Range(1, 3, ErrorMessage = "FromType must be 1 (Noncashable), 2 (Cashable), or 3 (Money)")]
        public int FromType { get; set; }

        [Required]
        [Range(1, 3, ErrorMessage = "ToType must be 1 (Noncashable), 2 (Cashable), or 3 (Money)")]
        public int ToType { get; set; }

        [Required]
        [Range(0.01, double.MaxValue, ErrorMessage = "Amount must be greater than 0")]
        public double Amount { get; set; }

    }

    public class ConvertRewardPointsCommandHandler : IRequestHandler<ConvertRewardPointsCommand, ApiResponseResult>
    {
        private readonly IRewardPointConversionsRepository _repository;

        public ConvertRewardPointsCommandHandler(IRewardPointConversionsRepository repository)
        {
            _repository = repository;
        }

        public async Task<ApiResponseResult> Handle(ConvertRewardPointsCommand request, CancellationToken cancellationToken)
        {
            try
            {
                // Validate conversion types
                if (request.FromType == request.ToType)
                {
                    return new ApiResponseResult
                    {
                        Data = null,
                        StatusCode = 400,
                        Status = "Failed",
                        Message = "FromType and ToType cannot be the same"
                    };
                }

                // Validate conversion types are valid enum values
                if (!Enum.IsDefined(typeof(RewardConvertionType), request.FromType) ||
                    !Enum.IsDefined(typeof(RewardConvertionType), request.ToType))
                {
                    return new ApiResponseResult
                    {
                        Data = null,
                        StatusCode = 400,
                        Status = "Failed",
                        Message = "Invalid conversion type. Must be amonth Noncashable, Cashable, Money"
                    };
                }

                // Create the conversion entity
                var entity = new SmartRx_RewardPointConversions
                {
                    FromType = request.FromType,
                    ToType = request.ToType,
                    Amount = request.Amount,
                    CreatedById = request.UserId,
                };

                var createdEntity = await _repository.CreateAsync(entity);

                // Create response DTO
                var responseDTO = new RewardPointConversionResponseDTO
                {
                    Id = createdEntity.Id,
                    UserId = createdEntity.CreatedById ?? request.UserId,
                    FromType = createdEntity.FromType,
                    FromTypeName = ((RewardConvertionType)createdEntity.FromType).ToString(),
                    ToType = createdEntity.ToType,
                    ToTypeName = ((RewardConvertionType)createdEntity.ToType).ToString(),
                    Amount = createdEntity.Amount,
                    CreatedDate = createdEntity.CreatedDate
                };

                return new ApiResponseResult
                {
                    Data = responseDTO,
                    StatusCode = 200,
                    Status = "Success",
                    Message = $"Reward points converted successfully from {responseDTO.FromTypeName} to {responseDTO.ToTypeName}"
                };
            }
            catch (Exception ex)
            {
                return new ApiResponseResult
                {
                    Data = null,
                    StatusCode = 500,
                    Status = "Error",
                    Message = $"An error occurred while converting reward points: {ex.Message}"
                };
            }
        }
    }
}
