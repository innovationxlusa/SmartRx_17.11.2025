using PMSBackend.Application.CommonServices;
using System;

namespace PMSBackend.Application.DTOs
{
    public class RewardBenefitDTO
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public string? Description { get; set; }
        public long RewardId { get; set; }
        public string? RewardHeading { get; set; }       
        public bool? IsActive { get; set; }
        public ApiResponseResult ApiResponseResult { get; set; }
    }
}

