using MediatR;
using PMSBackend.Domain.CommonDTO;
using PMSBackend.Domain.Entities;
using PMSBackend.Domain.Repositories;
using PMSBackend.Domain.SharedContract;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace PMSBackend.Application.Queries.PatientReward
{
    public class GetPatientRewardsByUserIdAndPatientIdQuery : IRequest<PatientRewardSplitResult>
    {
        public long UserId { get; set; }
        public long? PatientId { get; set; }   
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public PagingSortingParams PagingSorting { get; set; }

    }

    public class GetPatientRewardsByUserIdAndPatientIdQueryHandler 
        : IRequestHandler<GetPatientRewardsByUserIdAndPatientIdQuery, PatientRewardSplitResult>
    {
        private readonly IPatientRewardRepository _patientRewardRepository;
        private readonly IRewardPointConversionsRepository _rewardPointConversionsRepository;

        public GetPatientRewardsByUserIdAndPatientIdQueryHandler(
            IPatientRewardRepository patientRewardRepository,
            IRewardPointConversionsRepository rewardPointConversionsRepository)
        {
            _patientRewardRepository = patientRewardRepository;
            _rewardPointConversionsRepository = rewardPointConversionsRepository;
        }

        public async Task<PatientRewardSplitResult> Handle(
            GetPatientRewardsByUserIdAndPatientIdQuery request, 
            CancellationToken cancellationToken)
        {
            var result = await _patientRewardRepository.GetPatientRewardsByUserIdAndPatientIdAsync(
                request.UserId,
                request.PatientId,
                request.PagingSorting,
                cancellationToken,
                request.StartDate,
                request.EndDate);

            // Map to contract
            var contracts = result.Data.Select(pr => new PatientRewardContract
            {
                Id = pr.Id,
                SmartRxMasterId = pr.SmartRxMasterId,
                PrescriptionId = pr.PrescriptionId,
                PatientId = pr.PatientId,
                RewardId=pr.RewardId,
                RewardName=pr.Rewards.Heading,
                BadgeId = pr.BadgeId,
                BadgeName = pr.RewardBadge?.Name,
                BadgeDescription = pr.RewardBadge?.Description,
                PatientFirstName = pr.PatientProfile?.FirstName,
                PatientLastName = pr.PatientProfile?.LastName,
                PatientCode = pr.PatientProfile?.PatientCode,
                EarnedNonCashablePoints = pr.EarnedNonCashablePoints,
                ConsumedNonCashablePoints = pr.ConsumedNonCashablePoints,
                ConvertedNonCashableToCashablePoints = pr.ConvertedNonCashableToCashablePoints,
                TotalNonCashablePoints = pr.TotalNonCashablePoints,
                EarnedCashablePoints = pr.EarnedCashablePoints,
                ConsumedCashablePoints = pr.ConsumedCashablePoints,
                ConvertedCashableToNonCashablePoints = pr.ConvertedCashableToNonCashablePoints,
                TotalCashablePoints = pr.TotalCashablePoints,               
                ConvertedCashableToMoney = pr.ConvertedCashableToMoney,
                EncashedMoney = pr.EncashedMoney,
                TotalMoney = pr.TotalMoney,
                // Map unified TotalPoints depending on the reward type
                TotalPoints =
                    pr.EarnedNonCashablePoints > 0 ? pr.EarnedNonCashablePoints
                    : pr.EarnedCashablePoints > 0 ? pr.EarnedCashablePoints
                    : (pr.TotalMoney.HasValue ? pr.TotalMoney.Value : 0),
                Remarks = pr.Remarks,
                CreatedDate = pr.CreatedDate,
                ModifiedDate = pr.ModifiedDate
            }).ToList();

            // Get conversion data from SmartRx_RewardPointConversion table
            var conversions = await _rewardPointConversionsRepository.GetByUserIdAsync(request.UserId);

            // Create conversion contracts for cashable conversions (ToType == Cashable)
            var cashableConversions = conversions
                .Where(c => c.ToType == (int)RewardConvertionType.Cashable)
                .Select(c => new PatientRewardContract
                {
                    Id = c.Id,
                    SmartRxMasterId = null,
                    PrescriptionId = null,
                    PatientId = request.PatientId ?? 0,
                    RewardId = 0,
                    RewardName = "Conversion to Cashable",
                    BadgeId = 0,
                    BadgeName = "Conversion",
                    BadgeDescription = $"Converted from {((RewardConvertionType)c.FromType).ToString()} to Cashable",
                    PatientFirstName = null,
                    PatientLastName = null,
                    PatientCode = null,
                    EarnedNonCashablePoints = 0,
                    ConsumedNonCashablePoints = 0,
                    ConvertedNonCashableToCashablePoints = 0,
                    TotalNonCashablePoints = 0,
                    EarnedCashablePoints = (int)c.Amount,
                    ConsumedCashablePoints = 0,
                    ConvertedCashableToNonCashablePoints = 0,
                    TotalCashablePoints = (int)c.Amount,
                    ConvertedCashableToMoney = 0,
                    EncashedMoney = 0,
                    TotalMoney = 0,
                    TotalPoints = c.Amount,
                    Remarks = $"Conversion: {c.Amount} points converted to Cashable",
                    CreatedDate = c.CreatedDate,
                    ModifiedDate = c.ModifiedDate
                }).ToList();

            // Create conversion contracts for noncashable conversions (ToType == NonCashable)
            var nonCashableConversions = conversions
                .Where(c => c.ToType == (int)RewardConvertionType.Noncashable)
                .Select(c => new PatientRewardContract
                {
                    Id = c.Id,
                    SmartRxMasterId = null,
                    PrescriptionId = null,
                    PatientId = request.PatientId ?? 0,
                    RewardId = 0,
                    RewardName = "Conversion to NonCashable",
                    BadgeId = 0,
                    BadgeName = "Conversion",
                    BadgeDescription = $"Converted from {((RewardConvertionType)c.FromType).ToString()} to NonCashable",
                    PatientFirstName = null,
                    PatientLastName = null,
                    PatientCode = null,
                    EarnedNonCashablePoints = (int)c.Amount,
                    ConsumedNonCashablePoints = 0,
                    ConvertedNonCashableToCashablePoints = 0,
                    TotalNonCashablePoints = (int)c.Amount,
                    EarnedCashablePoints = 0,
                    ConsumedCashablePoints = 0,
                    ConvertedCashableToNonCashablePoints = 0,
                    TotalCashablePoints = 0,
                    ConvertedCashableToMoney = 0,
                    EncashedMoney = 0,
                    TotalMoney = 0,
                    TotalPoints = (int)c.Amount,
                    Remarks = $"Conversion: {c.Amount} points converted to NonCashable",
                    CreatedDate = c.CreatedDate,
                    ModifiedDate = c.ModifiedDate
                }).ToList();

            // Get original cashable and noncashable lists
            var originalCashable = contracts.Where(c => c.EarnedCashablePoints > 0).ToList();
            var originalNonCashable = contracts.Where(c => c.EarnedNonCashablePoints > 0).ToList();

            // Concatenate conversion data to the lists
            var finalEarnedCashable = originalCashable.Concat(cashableConversions).ToList();
            var finalEarnedNonCashable = originalNonCashable.Concat(nonCashableConversions).ToList();
            var totalEarnedList = finalEarnedCashable.Concat(finalEarnedNonCashable).ToList();


            // Create conversion contracts for cashable conversions (ToType == Cashable)
            var cashableConsumed = conversions
                .Where(c => c.FromType == (int)RewardConvertionType.Cashable)
                .Select(c => new PatientRewardContract
                {
                    Id = c.Id,
                    SmartRxMasterId = null,
                    PrescriptionId = null,
                    PatientId = request.PatientId ?? 0,
                    RewardId = 0,
                    RewardName = "Conversion to Cashable",
                    BadgeId = 0,
                    BadgeName = "Conversion",
                    BadgeDescription = $"Converted from {((RewardConvertionType)c.ToType).ToString()} to Cashable",
                    PatientFirstName = null,
                    PatientLastName = null,
                    PatientCode = null,
                    EarnedNonCashablePoints = 0,
                    ConsumedNonCashablePoints = 0,
                    ConvertedNonCashableToCashablePoints = 0,
                    TotalNonCashablePoints = 0,
                    EarnedCashablePoints = (int)c.Amount,
                    ConsumedCashablePoints = 0,
                    ConvertedCashableToNonCashablePoints = 0,
                    TotalCashablePoints = (int)c.Amount,
                    ConvertedCashableToMoney = 0,
                    EncashedMoney = 0,
                    TotalMoney = 0,
                    TotalPoints = c.Amount,
                    Remarks = $"Conversion: {c.Amount} points converted to Cashable",
                    CreatedDate = c.CreatedDate,
                    ModifiedDate = c.ModifiedDate
                }).ToList();

            // Create conversion contracts for noncashable conversions (ToType == NonCashable)
            var nonCashableConsumed = conversions
                .Where(c => c.FromType == (int)RewardConvertionType.Noncashable)
                .Select(c => new PatientRewardContract
                {
                    Id = c.Id,
                    SmartRxMasterId = null,
                    PrescriptionId = null,
                    PatientId = request.PatientId ?? 0,
                    RewardId = 0,
                    RewardName = "Conversion to NonCashable",
                    BadgeId = 0,
                    BadgeName = "Conversion",
                    BadgeDescription = $"Converted from {((RewardConvertionType)c.ToType).ToString()} to NonCashable",
                    PatientFirstName = null,
                    PatientLastName = null,
                    PatientCode = null,
                    EarnedNonCashablePoints = (int)c.Amount,
                    ConsumedNonCashablePoints = 0,
                    ConvertedNonCashableToCashablePoints = 0,
                    TotalNonCashablePoints = (int)c.Amount,
                    EarnedCashablePoints = 0,
                    ConsumedCashablePoints = 0,
                    ConvertedCashableToNonCashablePoints = 0,
                    TotalCashablePoints = 0,
                    ConvertedCashableToMoney = 0,
                    EncashedMoney = 0,
                    TotalMoney = 0,
                    TotalPoints = (int)c.Amount,
                    Remarks = $"Conversion: {c.Amount} points converted to NonCashable",
                    CreatedDate = c.CreatedDate,
                    ModifiedDate = c.ModifiedDate
                }).ToList();
            var totalConsumedList = cashableConsumed.Concat(nonCashableConsumed).ToList();

            // Combine all data including conversions
            var allData = contracts.Concat(cashableConversions).Concat(nonCashableConversions).ToList();

            return new PatientRewardSplitResult
            {
                All = new PaginatedResult<PatientRewardContract>(
                    allData,
                    allData.Count, // Update total count to include conversions
                    result.PageNumber,
                    result.PageSize,
                    result.SortBy,
                    result.SortDirection,
                    null),
                Earned = new PaginatedResult<PatientRewardContract>(
                    totalEarnedList,
                    totalEarnedList.Count,
                    result.PageNumber,
                    result.PageSize,
                    result.SortBy,
                    result.SortDirection,
                    null),
                Consumed = new PaginatedResult<PatientRewardContract>(
                    totalConsumedList,
                    totalConsumedList.Count,
                    result.PageNumber,
                    result.PageSize,
                    result.SortBy,
                    result.SortDirection,
                    null)
            };
        }
    }
}

