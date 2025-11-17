using PMSBackend.Domain.CommonDTO;
using PMSBackend.Domain.Entities;
using PMSBackend.Domain.SharedContract;
using System.Threading;
using System.Threading.Tasks;

namespace PMSBackend.Domain.Repositories
{
    public interface IRewardBenefitRepository
    {
        /// <summary>
        /// Creates a new reward benefit
        /// </summary>
        Task<Configuration_RewardBenefit> CreateRewardBenefitAsync(Configuration_RewardBenefit rewardBenefit, CancellationToken cancellationToken);

        /// <summary>
        /// Updates an existing reward benefit
        /// </summary>
        Task<Configuration_RewardBenefit> UpdateRewardBenefitAsync(Configuration_RewardBenefit rewardBenefit, CancellationToken cancellationToken);

        /// <summary>
        /// Deletes a reward benefit by ID
        /// </summary>
        Task<bool> DeleteRewardBenefitAsync(long id, CancellationToken cancellationToken);

        /// <summary>
        /// Gets a reward benefit by ID
        /// </summary>
        Task<Configuration_RewardBenefit?> GetRewardBenefitByIdAsync(long id, CancellationToken cancellationToken);

        /// <summary>
        /// Gets all reward benefits with pagination
        /// </summary>
        Task<PaginatedResult<Configuration_RewardBenefit>> GetAllRewardBenefitsAsync(
            PagingSortingParams pagingSorting,
            CancellationToken cancellationToken);
    }
}

