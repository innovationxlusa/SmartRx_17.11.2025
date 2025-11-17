using PMSBackend.Domain.Entities;
using PMSBackend.Domain.SharedContract;

namespace PMSBackend.Domain.Repositories
{
    public interface IRewardPointConversionsRepository
    {
        Task<SmartRx_RewardPointConversions> CreateAsync(SmartRx_RewardPointConversions entity);
        Task<SmartRx_RewardPointConversions?> GetByIdAsync(long id);
        Task<IEnumerable<SmartRx_RewardPointConversions>> GetAllAsync();
        Task<IEnumerable<SmartRx_RewardPointConversions>> GetByUserIdAsync(long userId);
        Task<SmartRx_RewardPointConversions> UpdateAsync(SmartRx_RewardPointConversions entity);
        Task<bool> DeleteAsync(long id);
        Task<bool> ExistsAsync(long id);
        Task<RewardPointConversionsSummaryContract> GetConversionSummaryByUserIdAsync(long userId);
    }
}
