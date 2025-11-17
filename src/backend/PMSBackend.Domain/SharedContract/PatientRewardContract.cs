using System;

namespace PMSBackend.Domain.SharedContract
{
    public class PatientRewardContract
    {
        public long Id { get; set; }
        public long? SmartRxMasterId { get; set; }
        public long? PrescriptionId { get; set; }
        public long PatientId { get; set; }
        public long RewardId { get; set; }
        public string? RewardName { get; set; }
        public long BadgeId { get; set; }
        
        // Badge Information
        public string? BadgeName { get; set; }
        public string? BadgeDescription { get; set; }
        
        // Patient Information
        public string? PatientFirstName { get; set; }
        public string? PatientLastName { get; set; }
        public string? PatientCode { get; set; }
        
        // Points
        public int EarnedNonCashablePoints { get; set; }
        public int ConsumedNonCashablePoints { get; set; }
        public int ConvertedNonCashableToCashablePoints { get; set; }
        public int TotalNonCashablePoints { get; set; }
        public int EarnedCashablePoints { get; set; }
        public int ConsumedCashablePoints { get; set; }
        public int ConvertedCashableToNonCashablePoints { get; set; }
        public int TotalCashablePoints { get; set; }
        
        // Money
        public double? ConvertedCashableToMoney { get; set; }
        public double? EncashedMoney { get; set; }
        public double? TotalMoney { get; set; }
        
        public string? Remarks { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? ModifiedDate { get; set; }

        public double? TotalPoints { get; set; }
    }
}

