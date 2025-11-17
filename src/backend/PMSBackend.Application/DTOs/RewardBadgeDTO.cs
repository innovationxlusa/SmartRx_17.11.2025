using PMSBackend.Application.CommonServices;
using System;

namespace PMSBackend.Application.DTOs
{
    public class RewardBadgeDTO
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string? Description { get; set; }
        public int Heirarchy { get; set; }
        public bool? IsActive { get; set; }
        public ApiResponseResult ApiResponseResult { get; set; }
    }
}
