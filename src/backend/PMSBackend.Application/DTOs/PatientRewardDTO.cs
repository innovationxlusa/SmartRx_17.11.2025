using System;

namespace PMSBackend.Application.DTOs
{
    public class PatientRewardDTO
    {
        public long Id { get; set; }
        public long? SmartRxMasterId { get; set; }
        public long? PrescriptionId { get; set; }
        public long PatientId { get; set; }
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
        public int TotalNonCashablePoints { get; set; }
        public int EarnedCashablePoints { get; set; }
        public int ConsumedCashablePoints { get; set; }
        public int TotalCashablePoints { get; set; }
        
        // Money
        public double? EarnedMoney { get; set; }
        public double? ConsumedMoney { get; set; }
        public double? TotalMoney { get; set; }
        public double? EncashMoney { get; set; }
        
        public string? Remarks { get; set; }
        public long CreatedById { get; set; }
        public DateTime? CreatedDate { get; set; }
        public long? ModifiedById { get; set; }
        public DateTime? ModifiedDate { get; set; }
    }
}

