using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PMSBackend.Domain.Entities
{
    [Table("SmartRx_RewardPointConversions")]
    public class SmartRx_RewardPointConversions : BaseEntity
    {        

        public int FromType { get; set; } // 'NonCashable' or 'Cashable'

        public int ToType { get; set; }

        [Column(TypeName = "decimal(10,2)")]
        public double Amount { get; set; }

    }
}
