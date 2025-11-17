using Microsoft.EntityFrameworkCore;
using PMSBackend.Databases.Data;
using PMSBackend.Domain.CommonDTO;
using PMSBackend.Domain.Entities;
using PMSBackend.Domain.Repositories;
using PMSBackend.Domain.SharedContract;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace PMSBackend.Databases.Repositories
{
    public class RewardBenefitRepository : IRewardBenefitRepository
    {
        private readonly PMSDbContext _dbContext;

        public RewardBenefitRepository(PMSDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<Configuration_RewardBenefit> CreateRewardBenefitAsync(Configuration_RewardBenefit rewardBenefit, CancellationToken cancellationToken)
        {
            try
            {
                rewardBenefit.CreatedDate = DateTime.UtcNow;
                rewardBenefit.IsActive = true;

                await _dbContext.Configuration_RewardBenefit.AddAsync(rewardBenefit, cancellationToken);
                await _dbContext.SaveChangesAsync(cancellationToken);

                return rewardBenefit;
            }
            catch (Exception ex)
            {
                throw new Exception($"Failed to create reward benefit: {ex.Message}", ex);
            }
        }

        public async Task<Configuration_RewardBenefit> UpdateRewardBenefitAsync(Configuration_RewardBenefit rewardBenefit, CancellationToken cancellationToken)
        {
            try
            {
                var existingRewardBenefit = await _dbContext.Configuration_RewardBenefit
                    .FirstOrDefaultAsync(r => r.Id == rewardBenefit.Id, cancellationToken);

                if (existingRewardBenefit == null)
                {
                    throw new Exception($"Reward benefit with ID {rewardBenefit.Id} not found");
                }

                // Update fields
                existingRewardBenefit.Title = rewardBenefit.Title;
                existingRewardBenefit.Description = rewardBenefit.Description;
                existingRewardBenefit.RewardId = rewardBenefit.RewardId;
                existingRewardBenefit.IsActive = rewardBenefit.IsActive;
                existingRewardBenefit.ModifiedById = rewardBenefit.ModifiedById;
                existingRewardBenefit.ModifiedDate = DateTime.UtcNow;

                _dbContext.Configuration_RewardBenefit.Update(existingRewardBenefit);
                await _dbContext.SaveChangesAsync(cancellationToken);

                return existingRewardBenefit;
            }
            catch (Exception ex)
            {
                throw new Exception($"Failed to update reward benefit: {ex.Message}", ex);
            }
        }

        public async Task<bool> DeleteRewardBenefitAsync(long id, CancellationToken cancellationToken)
        {
            try
            {
                var rewardBenefit = await _dbContext.Configuration_RewardBenefit
                    .FirstOrDefaultAsync(r => r.Id == id, cancellationToken);

                if (rewardBenefit == null)
                {
                    return false;
                }

                _dbContext.Configuration_RewardBenefit.Remove(rewardBenefit);
                await _dbContext.SaveChangesAsync(cancellationToken);

                return true;
            }
            catch (Exception ex)
            {
                throw new Exception($"Failed to delete reward benefit: {ex.Message}", ex);
            }
        }

        public async Task<Configuration_RewardBenefit?> GetRewardBenefitByIdAsync(long id, CancellationToken cancellationToken)
        {
            try
            {
                return await _dbContext.Configuration_RewardBenefit
                    .AsNoTracking()
                    .Include(rb => rb.Reward)
                    .FirstOrDefaultAsync(r => r.Id == id, cancellationToken);
            }
            catch (Exception ex)
            {
                throw new Exception($"Failed to get reward benefit by ID: {ex.Message}", ex);
            }
        }

        public async Task<PaginatedResult<Configuration_RewardBenefit>> GetAllRewardBenefitsAsync(
            PagingSortingParams pagingSorting,
            CancellationToken cancellationToken)
        {
            try
            {
                if (pagingSorting.PageNumber <= 0) pagingSorting.PageNumber = 1;
                if (pagingSorting.PageSize <= 0) pagingSorting.PageSize = 10;

                var query = _dbContext.Configuration_RewardBenefit
                    .AsNoTracking()
                    .Include(rb => rb.Reward)
                    .AsQueryable();

                // Apply sorting
                IQueryable<Configuration_RewardBenefit> sortedQuery = pagingSorting.SortBy?.ToLower() switch
                {
                    "title" => pagingSorting.SortDirection?.ToLower() == "desc"
                        ? query.OrderByDescending(r => r.Title)
                        : query.OrderBy(r => r.Title),
                    "description" => pagingSorting.SortDirection?.ToLower() == "desc"
                        ? query.OrderByDescending(r => r.Description)
                        : query.OrderBy(r => r.Description),
                    "createddate" => pagingSorting.SortDirection?.ToLower() == "desc"
                        ? query.OrderByDescending(r => r.CreatedDate)
                        : query.OrderBy(r => r.CreatedDate),
                    _ => query.OrderByDescending(r => r.CreatedDate)
                };

                var totalRecords = await sortedQuery.CountAsync(cancellationToken);

                var pagedData = await sortedQuery
                    .Skip((pagingSorting.PageNumber - 1) * pagingSorting.PageSize)
                    .Take(pagingSorting.PageSize)
                    .ToListAsync(cancellationToken);

                return new PaginatedResult<Configuration_RewardBenefit>(
                    pagedData,
                    totalRecords,
                    pagingSorting.PageNumber,
                    pagingSorting.PageSize,
                    pagingSorting.SortBy,
                    pagingSorting.SortDirection,
                    null);
            }
            catch (Exception ex)
            {
                throw new Exception($"Failed to get all reward benefits: {ex.Message}", ex);
            }
        }
    }
}

