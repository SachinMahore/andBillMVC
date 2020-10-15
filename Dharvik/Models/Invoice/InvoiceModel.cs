using Dharvik.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dharvik.Models
{
    public class InvoiceModel
    {
        //invoice
        public Nullable<long> CustId { get; set; }
        public decimal InvAmount { get; set; }
        public Nullable<decimal> InvDiscount { get; set; }
        public decimal TotalAmt { get; set; }
        public System.DateTime InvoiceDate { get; set; }
        public String InvoiceDateText { get; set; }
        public Nullable<decimal> InvVat { get; set; }
        public string Time { get; set; }
        public string PayMode { get; set; }
        public string Paid { get; set; }
        public string Note { get; set; }
        public Nullable<decimal> Advance { get; set; }
        public Nullable<decimal> Point { get; set; }
        public string Person { get; set; }
        public Nullable<int> InvoiceId { get; set; }
        public Nullable<decimal> SGST { get; set; }
        public Nullable<decimal> CGST { get; set; }
        public Nullable<decimal> IGST { get; set; }
        public long AutoInvoiceID { get; set; }
        public List<BillModel> BillItemList { get; set;}
        //customerModel
        public string CustName { get; set; }
        public string Address { get; set; }
        public string Mobile { get; set; }
        public string GST { get; set; }
        //AccountModel
        public long AccountId { get; set; }
        public decimal Debit { get; set; }
        public Nullable<decimal> Credit { get; set; }
        public Nullable<decimal> Balance { get; set; }
        public string SaveInvoice(InvoiceModel model)
        {
            string msg = "";
            string InvID = "0";
            DharvikEntities1 db = new DharvikEntities1();
            try { 
            if (model.CustId == null)
            {
                var CustomerSave = new tbl_Customer()
                {
                    //CustId = model.CustId,
                    CustName = model.CustName,
                    Address = model.Address,
                    Mobile = model.Mobile,
                    Date = DateTime.Now,
                    Status = 1,
                    GST = model.GST,

                };
                db.tbl_Customer.Add(CustomerSave);
                db.SaveChanges();
                model.CustId = CustomerSave.CustId;
                
            }
            if (model.BillItemList != null)
            {
                var saveInvoice = new tbl_Invoice()
                {
                    InvoiceId = model.InvoiceId,
                    InvoiceDate = model.InvoiceDate,
                    CustId = model.CustId,
                    Amount = model.InvAmount,
                    TotalAmt = model.TotalAmt,
                    Advance = model.Advance,
                    Discount = model.InvDiscount,
                    CGST = model.CGST,
                    SGST = model.SGST,
                    IGST = model.IGST,
                    Vat = model.InvVat,
                    Paid = model.Paid,
                    PayMode = model.PayMode,
                    Person = model.Person,
                    Point = model.Point,
                    Time = DateTime.Now.ToShortTimeString()
                };
                db.tbl_Invoice.Add(saveInvoice);
                db.SaveChanges();
                model.AutoInvoiceID = saveInvoice.AutoInvoiceID;
                InvID = saveInvoice.AutoInvoiceID.ToString();

                foreach (var bi in model.BillItemList)
                {
                    var vData = new tbl_Bill
                    {
                        InvoiceId = Convert.ToInt64(InvID),
                        ItemId = bi.ItemId,
                        Rate = bi.Rate,
                        ItemSaleAmt = bi.ItemSaleAmt,
                        TaxAmt = bi.TaxAmt,
                        ItemQty = bi.ItemQty,
                        Disc = bi.Disc,
                        GST = bi.GST,
                        Discount = bi.Discount,
                        Vat = bi.Vat,
                    };

                    db.tbl_Bill.Add(vData);
                    db.SaveChanges();
                };


                if (model.AutoInvoiceID > 0)
                {
                    var custAcctSave = new tbl_CustAccount()
                    {
                        CustId = Convert.ToInt64(model.CustId),
                        Invoiceid=model.AutoInvoiceID,
                        Debit = model.TotalAmt,
                        Credit = model.Advance,
                        Balance = (model.TotalAmt - model.Advance),
                        Date = DateTime.Now,
                    };
                    db.tbl_CustAccount.Add(custAcctSave);
                    db.SaveChanges();
                }
                db.Dispose();

           
            }
            }
            catch (Exception ex)
            {

            }
            msg = "Invoice Added Successfully";

            db.Dispose();
            return msg;
        }
    }
    public class BillModel
    {
        public long BillId { get; set; }
        public Nullable<int> InvoiceId { get; set; }
        public long ItemId { get; set; }
        public decimal ItemQty { get; set; }
        public decimal ItemSaleAmt { get; set; }
        public Nullable<decimal> Vat { get; set; }
        public decimal Rate { get; set; }
        public Nullable<decimal> Discount { get; set; }
        public string Model { get; set; }
        public Nullable<decimal> Size { get; set; }
        public Nullable<decimal> GST { get; set; }
        public Nullable<decimal> Disc { get; set; }
        public Nullable<decimal> TaxAmt { get; set; }
    
       
    }
}