using MediatR;
using PMSBackend.Domain.Repositories;
using System.Threading;
using System.Threading.Tasks;

namespace PMSBackend.Application.Commands.RewardBenefit
{
    public class DeleteRewardBenefitCommand : IRequest<bool>
    {
        public long Id { get; set; }
    }

    public class DeleteRewardBenefitCommandHandler : IRequestHandler<DeleteRewardBenefitCommand, bool>
    {
        private readonly IRewardBenefitRepository _rewardBenefitRepository;

        public DeleteRewardBenefitCommandHandler(IRewardBenefitRepository rewardBenefitRepository)
        {
            _rewardBenefitRepository = rewardBenefitRepository;
        }

        public async Task<bool> Handle(DeleteRewardBenefitCommand request, CancellationToken cancellationToken)
        {
            return await _rewardBenefitRepository.DeleteRewardBenefitAsync(request.Id, cancellationToken);
        }
    }
}

