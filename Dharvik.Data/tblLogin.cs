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
    
    public partial class tblLogin
    {
        public int UserID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public Nullable<int> ClientOrVendorID { get; set; }
        public Nullable<int> IsClientOrVendor { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public Nullable<int> IsSuperUser { get; set; }
        public Nullable<int> SortOrderSFP { get; set; }
        public string Address1 { get; set; }
        public string City { get; set; }
        public string StateID { get; set; }
        public string ZipCode { get; set; }
        public string Country { get; set; }
        public string WorkPhone { get; set; }
        public string CellPhone { get; set; }
        public Nullable<int> IsActive { get; set; }
        public string Extension { get; set; }
        public string VendorID { get; set; }
        public Nullable<long> EmployeeID { get; set; }
        public Nullable<int> AddToGroup { get; set; }
        public Nullable<int> UserType { get; set; }
        public Nullable<int> StationMarketID { get; set; }
        public Nullable<int> ShowNotification { get; set; }
        public string UserCode { get; set; }
        public string Timezone { get; set; }
        public string Language { get; set; }
        public string Locale { get; set; }
        public string Company { get; set; }
        public string Department { get; set; }
        public string UserLicense { get; set; }
        public string EmailEncoding { get; set; }
        public string StartDay { get; set; }
        public string EndDay { get; set; }
        public string FederationID { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> CreatedById { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public Nullable<int> LastModifiedById { get; set; }
        public Nullable<System.DateTime> LastLoginDate { get; set; }
        public Nullable<int> IsDeleted { get; set; }
        public string CommunityNickname { get; set; }
        public string UserRoleId { get; set; }
        public string SMTPUserName { get; set; }
        public string SMTPPassword { get; set; }
    }
}
