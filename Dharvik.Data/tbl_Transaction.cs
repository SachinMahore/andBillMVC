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
    
    public partial class tbl_Transaction
    {
        public int Id { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string Bank { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public string Mode { get; set; }
        public string CheckNo { get; set; }
        public Nullable<System.DateTime> CheckDate { get; set; }
        public Nullable<System.DateTime> ClearDate { get; set; }
        public string VoucherId { get; set; }
        public string Stakeholder { get; set; }
        public string StakeholderId { get; set; }
    }
}
