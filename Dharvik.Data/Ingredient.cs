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
    
    public partial class Ingredient
    {
        public int Id { get; set; }
        public string IngredientName { get; set; }
        public decimal PurchasePrice { get; set; }
        public decimal SalePrice { get; set; }
        public int CatId { get; set; }
        public decimal IngredientQty { get; set; }
        public string Unit { get; set; }
        public string Details { get; set; }
        public Nullable<decimal> Vat { get; set; }
    }
}
