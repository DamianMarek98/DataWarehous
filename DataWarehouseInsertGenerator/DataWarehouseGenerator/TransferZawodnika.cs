//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataWarehouseGenerator
{
    using System;
    using System.Collections.Generic;
    
    public partial class TransferZawodnika
    {
        public int Id { get; set; }
        public System.DateTime DataTransferu { get; set; }
        public string TypPlatnosci { get; set; }
        public Nullable<int> KlubSprzedajacyId { get; set; }
        public Nullable<int> KlubKupujacyId { get; set; }
        public Nullable<int> KwotaTransferu { get; set; }
        public int ZawodnikId { get; set; }
    
        public virtual Klub Klub { get; set; }
        public virtual Klub Klub1 { get; set; }
        public virtual Zawodnik Zawodnik { get; set; }
    }
}
