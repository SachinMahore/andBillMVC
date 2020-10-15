using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dharvik.Data;

namespace Dharvik.Models
{
    public class PurchaseModel
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
   

        public string SavePurchase(PurchaseModel model)
        {
            string Msg = "";
            DharvikEntities1 db = new DharvikEntities1();

            var savepurchase = new tbl_Purchase()
            {
                Barcode = model.Barcode,
                Qty = model.Qty,
                SupplierId = model.SupplierId,
                OrderId = model.OrderId,
                ItemId = model.ItemId,
                PurchasePrice = model.PurchasePrice,
                SalePrice = model.SalePrice,
                iDate = DateTime.Now,
            };
            db.tbl_Purchase.Add(savepurchase);
            db.SaveChanges();
           // Msg = "Purchase added succesfully";
            return Msg;
        }



        //public PurchaseModel GetPurchAccountsInfo(long AccountID)
        //{
        //    DharvikEntities1 db = new DharvikEntities1();
        //    PurchaseModel model = new PurchaseModel();

        //    model.SupplierId = 0;
        //    model.SupplierName = "";
        //    model.Mobile = "";



        //    model.Email = "";


        //    if (AccountID > 0)
        //    {
        //        DataSet dsDataSet = new DataSet();
        //        using (var cmd = db.Database.Connection.CreateCommand())
        //        {
        //            try
        //            {
        //                db.Database.Connection.Open();
        //                cmd.CommandText = "usp_GetSuppAccountData";
        //                cmd.CommandType = CommandType.StoredProcedure;

        //                DbParameter AID = cmd.CreateParameter();
        //                AID.ParameterName = "SupplierId";
        //                AID.Value = AccountID;
        //                cmd.Parameters.Add(AID);

        //                DbDataAdapter da = DbProviderFactories.GetFactory("System.Data.SqlClient").CreateDataAdapter();
        //                da.SelectCommand = cmd;
        //                da.Fill(dsDataSet);
        //                db.Database.Connection.Close();
        //            }
        //            catch
        //            {
        //                db.Database.Connection.Close();
        //            }

        //            if (dsDataSet.Tables[0] != null && dsDataSet.Tables[0].Rows.Count > 0)
        //            {
        //                DateTime? createdDate = null;
        //                try
        //                {
        //                    createdDate = Convert.ToDateTime(dsDataSet.Tables[0].Rows[0]["Date"].ToString());
        //                }
        //                catch
        //                {

        //                }

        //                DateTime? salesdate = null;
        //                try
        //                {
        //                    salesdate = Convert.ToDateTime(dsDataSet.Tables[0].Rows[0]["SalesDate"].ToString());
        //                }
        //                catch
        //                {

        //                }
        //                model.SupplierId = Convert.ToInt32(dsDataSet.Tables[0].Rows[0]["SupplierId"].ToString());
        //                model.SupplierName = dsDataSet.Tables[0].Rows[0]["SupplierName"].ToString();
        //                model.Mobile = dsDataSet.Tables[0].Rows[0]["Mobile"].ToString();



        //                model.Email = dsDataSet.Tables[0].Rows[0]["Email"].ToString();

        //            }

        //        }
        //    }
        //    return model;
        //}
    }
}