//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Dharvik.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Purchase
    {
        public string Barcode { get; set; }
        public decimal Qty { get; set; }
        public string SupplierId { get; set; }
        public string OrderId { get; set; }
        public string ItemId { get; set; }
        public decimal PurchasePrice { get; set; }
        public decimal SalePrice { get; set; }
        public Nullable<System.DateTime> iDate { get; set; }
        public int PurchaseId { get; set; }
    }
}
