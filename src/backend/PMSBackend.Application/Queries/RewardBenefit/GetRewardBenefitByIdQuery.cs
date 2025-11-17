using MediatR;
using PMSBackend.Application.DTOs;
using PMSBackend.Domain.Repositories;
using System.Threading;
using System.Threading.Tasks;

namespace PMSBackend.Application.Queries.RewardBenefit
{
    public class GetRewardBenefitByIdQuery : IRequest<RewardBenefitDTO?>
    {
        public long Id { get; set; }
    }

    public class GetRewardBenefitByIdQueryHandler : IRequestHandler<GetRewardBenefitByIdQuery, RewardBenefitDTO?>
    {
        private readonly IRewardBenefitRepository _rewardBenefitRepository;

        public GetRewardBenefitByIdQueryHandler(IRewardBenefitRepository rewardBenefitRepository)
        {
            _rewardBenefitRepository = rewardBenefitRepository;
        }

        public async Task<RewardBenefitDTO?> Handle(GetRewardBenefitByIdQuery request, CancellationToken cancellationToken)
        {
            var rewardBenefit = await _rewardBenefitRepository.GetRewardBenefitByIdAsync(request.Id, cancellationToken);

            if (rewardBenefit == null)
            {
                return null;
            }

            return new RewardBenefitDTO
            {
                Id = rewardBenefit.Id,
                Title = rewardBenefit.Title,
                Description = rewardBenefit.Description,
                RewardId = rewardBenefit.RewardId,
                RewardHeading = rewardBenefit.Reward?.Heading,
                IsActive = rewardBenefit.IsActive
            };
        }
    }
}

