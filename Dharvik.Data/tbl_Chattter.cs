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
    
    public partial class tbl_Chattter
    {
        public long CID { get; set; }
        public string FeedItemId { get; set; }
        public string AccountId { get; set; }
        public Nullable<int> Type { get; set; }
        public Nullable<int> CreatedById { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public string LinkUrl { get; set; }
        public Nullable<int> IsDeleted { get; set; }
        public Nullable<int> InsertedById { get; set; }
        public Nullable<int> IsRichText { get; set; }
        public string SystemFileName { get; set; }
        public string OriginalFileName { get; set; }
        public Nullable<long> LeadID { get; set; }
    }
}
