using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PMSBackend.Domain.Entities
{
    [Table("Configuration_RewardBenefit")]
    public class Configuration_RewardBenefit : BaseEntity
    {
        [Required, MaxLength(200)]
        public string Title { get; set; }

        [MaxLength(1000)]
        public string? Description { get; set; }

        [Required]
        public long RewardId { get; set; }

        [ForeignKey(nameof(RewardId))]
        public virtual Configuration_Reward? Reward { get; set; }

        public bool? IsActive { get; set; }
    }
}

