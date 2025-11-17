using MediatR;
using Microsoft.AspNetCore.Http;
using PMSBackend.Application.CommonServices;
using PMSBackend.Application.DTOs;
using PMSBackend.Domain.Entities;
using PMSBackend.Domain.Repositories;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace PMSBackend.Application.Commands.RewardBenefit
{
    public class UpdateRewardBenefitCommand : IRequest<RewardBenefitsDTO>
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public string? Description { get; set; }
        public long RewardId { get; set; }
        public bool? IsActive { get; set; }
        public long UserId { get; set; }
    }

    public class UpdateRewardBenefitCommandHandler : IRequestHandler<UpdateRewardBenefitCommand, RewardBenefitsDTO>
    {
        private readonly IRewardBenefitRepository _rewardBenefitRepository;
        private readonly IRewardRepository _rewardRepository;

        public UpdateRewardBenefitCommandHandler(IRewardBenefitRepository rewardBenefitRepository, IRewardRepository rewardRepository)
        {
            _rewardBenefitRepository = rewardBenefitRepository;
            _rewardRepository = rewardRepository;
        }

        public async Task<RewardBenefitsDTO> Handle(UpdateRewardBenefitCommand request, CancellationToken cancellationToken)
        {
            var responseResult = new RewardBenefitsDTO();

            // Validation: Check for null or empty title
            if (string.IsNullOrWhiteSpace(request.Title))
            {
                responseResult.ApiResponseResult = new ApiResponseResult
                {
                    Data = null,
                    StatusCode = StatusCodes.Status404NotFound,
                    Status = "Failed",
                    Message = "Reward benefit title is required"
                };
                return responseResult;
            }

            // Validation: Check title length
            if (request.Title.Length > 200)
            {
                responseResult.ApiResponseResult = new ApiResponseResult
                {
                    Data = null,
                    StatusCode = StatusCodes.Status417ExpectationFailed,
                    Status = "Failed",
                    Message = "Reward benefit title cannot exceed 200 characters"
                };
                return responseResult;
            }

            // Validation: Check description length
            if (!string.IsNullOrEmpty(request.Description) && request.Description.Length > 1000)
            {
                responseResult.ApiResponseResult = new ApiResponseResult
                {
                    Data = null,
                    StatusCode = StatusCodes.Status417ExpectationFailed,
                    Status = "Failed",
                    Message = "Reward benefit description cannot exceed 1000 characters"
                };
                return responseResult;
            }

            // Validation: Check if reward exists
            var reward = await _rewardRepository.GetRewardByIdAsync(request.RewardId, cancellationToken);
            if (reward == null)
            {
                responseResult.ApiResponseResult = new ApiResponseResult
                {
                    Data = null,
                    StatusCode = StatusCodes.Status404NotFound,
                    Status = "Failed",
                    Message = $"Reward with ID {request.RewardId} not found"
                };
                return responseResult;
            }

            // Check if reward benefit exists
            var existingRewardBenefit = await _rewardBenefitRepository.GetRewardBenefitByIdAsync(request.Id, cancellationToken);
            if (existingRewardBenefit == null)
            {
                responseResult.ApiResponseResult = new ApiResponseResult
                {
                    Data = null,
                    StatusCode = StatusCodes.Status404NotFound,
                    Status = "Failed",
                    Message = $"Reward benefit with ID {request.Id} not found"
                };
                return responseResult;
            }

            // Validation: Check for duplicate title (excluding current record)
            var allRewardBenefits = await _rewardBenefitRepository.GetAllRewardBenefitsAsync(
                new Domain.CommonDTO.PagingSortingParams { PageNumber = 1, PageSize = int.MaxValue, SortBy = "Title", SortDirection = "asc" },
                cancellationToken);

            var duplicateExists = allRewardBenefits.Data.Any(r =>
                 r.Title.Equals(request.Title, StringComparison.OrdinalIgnoreCase));

            if (duplicateExists)
            {
                responseResult.ApiResponseResult = new ApiResponseResult
                {
                    Data = null,
                    StatusCode = StatusCodes.Status417ExpectationFailed,
                    Status = "Failed",
                    Message = $"A reward benefit with the title '{request.Title}' already exists"
                };
                return responseResult;
            }
            var benefit= allRewardBenefits.Data.Where(r =>
                 r.Title.Equals(request.Title, StringComparison.OrdinalIgnoreCase)).FirstOrDefault();

            var rewardBenefit = new Configuration_RewardBenefit
            {
                Id = request.Id,
                Title = request.Title,
                Description = request.Description,
                RewardId = request.RewardId,
                IsActive = request.IsActive != null ? request.IsActive: benefit!.IsActive,
                ModifiedById = request.UserId,
                ModifiedDate = DateTime.UtcNow
            };

            var updatedRewardBenefit = await _rewardBenefitRepository.UpdateRewardBenefitAsync(rewardBenefit, cancellationToken);

            var dto = new RewardBenefitDTO
            {
                Id = updatedRewardBenefit.Id,
                Title = updatedRewardBenefit.Title,
                Description = updatedRewardBenefit.Description,
                RewardId = updatedRewardBenefit.RewardId,
                RewardHeading = reward.Heading,               
                IsActive = updatedRewardBenefit.IsActive
            };

            responseResult.ApiResponseResult = new ApiResponseResult
            {
                Data = dto,
                StatusCode = StatusCodes.Status200OK,
                Status = "Success",
                Message = "Reward benefit updated successfully"
            };
            return responseResult;
        }
    }
}

