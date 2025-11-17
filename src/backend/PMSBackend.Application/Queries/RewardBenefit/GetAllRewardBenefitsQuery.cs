using MediatR;
using PMSBackend.Application.DTOs;
using PMSBackend.Domain.CommonDTO;
using PMSBackend.Domain.Repositories;
using PMSBackend.Domain.SharedContract;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace PMSBackend.Application.Queries.RewardBenefit
{
    public class GetAllRewardBenefitsQuery : IRequest<PaginatedResult<RewardBenefitDTO>>
    {
        public int PageNumber { get; set; } = 1;
        public int PageSize { get; set; } = 10;
        public string? SortBy { get; set; }
        public string? SortDirection { get; set; }
    }

    public class GetAllRewardBenefitsQueryHandler : IRequestHandler<GetAllRewardBenefitsQuery, PaginatedResult<RewardBenefitDTO>>
    {
        private readonly IRewardBenefitRepository _rewardBenefitRepository;

        public GetAllRewardBenefitsQueryHandler(IRewardBenefitRepository rewardBenefitRepository)
        {
            _rewardBenefitRepository = rewardBenefitRepository;
        }

        public async Task<PaginatedResult<RewardBenefitDTO>> Handle(GetAllRewardBenefitsQuery request, CancellationToken cancellationToken)
        {
            var pagingParams = new PagingSortingParams
            {
                PageNumber = request.PageNumber,
                PageSize = request.PageSize,
                SortBy = request.SortBy ?? "CreatedDate",
                SortDirection = request.SortDirection ?? "desc"
            };

            var result = await _rewardBenefitRepository.GetAllRewardBenefitsAsync(pagingParams, cancellationToken);

            // Map to DTOs
            var dtos = result.Data.Select(r => new RewardBenefitDTO
            {
                Id = r.Id,
                Title = r.Title,
                Description = r.Description,
                RewardId = r.RewardId,
                RewardHeading = r.Reward?.Heading,
                IsActive = r.IsActive
            }).ToList();

            return new PaginatedResult<RewardBenefitDTO>(
                dtos,
                result.TotalRecords,
                result.PageNumber,
                result.PageSize,
                result.SortBy,
                result.SortDirection,
                null);
        }
    }
}

