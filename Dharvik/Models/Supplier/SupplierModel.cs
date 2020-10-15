using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Web.Mvc;
using Dharvik.Data;

namespace Dharvik.Models
{
    public class SupplierModel
    {
        public int SupplierId { get; set; }
        public string SupplierName { get; set; }
        public string Address { get; set; }
        public string Mobile { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string GST { get; set; }
        public string Email { get; set; }
        

        public string InvoiceNo { get; set; }
        public Nullable<decimal> Debit { get; set; }
        public Nullable<decimal> Credit { get; set; }
        public Nullable<decimal> Balance { get; set; }
        public string Note { get; set; }
        public decimal OpeningBalance { get; set; }

        public string CreatedDateText { get; set; }


        public string SaveSupplierName(SupplierModel model)
        {
            string msg = "";
            DharvikEntities1 db = new DharvikEntities1();
            string ID = "0";

            var SupplierSave = new tbl_Supplier()
            {
                //CustId = model.CustId,
                SupplierName = model.SupplierName,
                Address = model.Address,
                Mobile = model.Mobile,
                Email = model.Email,
                
                Date = DateTime.Now,
                

            };
            db.tbl_Supplier.Add(SupplierSave);
            db.SaveChanges();
            model.SupplierId = SupplierSave.SupplierId;
            ID = SupplierSave.SupplierId.ToString();
            db.Dispose();
            msg = "Supplier Added Successfully";

            db.Dispose();
            return msg;
        }

        public SupplierModel GetSuppAccountsInfo(long AccountID)
        {
            DharvikEntities1 db = new DharvikEntities1();
            SupplierModel model = new SupplierModel();

            model.SupplierId = 0;
            model.SupplierName = "";
            model.Mobile = "";

            

            model.Email = "";


            if (AccountID > 0)
            {
                DataSet dsDataSet = new DataSet();
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                        cmd.CommandText = "usp_GetSuppAccountData";
                        cmd.CommandType = CommandType.StoredProcedure;

                        DbParameter AID = cmd.CreateParameter();
                        AID.ParameterName = "SupplierId";
                        AID.Value = AccountID;
                        cmd.Parameters.Add(AID);

                        DbDataAdapter da = DbProviderFactories.GetFactory("System.Data.SqlClient").CreateDataAdapter();
                        da.SelectCommand = cmd;
                        da.Fill(dsDataSet);
                        db.Database.Connection.Close();
                    }
                    catch
                    {
                        db.Database.Connection.Close();
                    }

                    if (dsDataSet.Tables[0] != null && dsDataSet.Tables[0].Rows.Count > 0)
                    {
                        DateTime? createdDate = null;
                        try
                        {
                            createdDate = Convert.ToDateTime(dsDataSet.Tables[0].Rows[0]["Date"].ToString());
                        }
                        catch
                        {

                        }

                        DateTime? salesdate = null;
                        try
                        {
                            salesdate = Convert.ToDateTime(dsDataSet.Tables[0].Rows[0]["SalesDate"].ToString());
                        }
                        catch
                        {

                        }
                        model.SupplierId = Convert.ToInt32(dsDataSet.Tables[0].Rows[0]["SupplierId"].ToString());
                        model.SupplierName = dsDataSet.Tables[0].Rows[0]["SupplierName"].ToString();
                        model.Mobile = dsDataSet.Tables[0].Rows[0]["Mobile"].ToString();
                       


                        model.Email = dsDataSet.Tables[0].Rows[0]["Email"].ToString();

                    }

                }
            }
            return model;
        }
        public List<SupplierModel> GetAccountsList(SupplierModel model)
        {
            try
            {
                List<SupplierModel> listSearch = new List<SupplierModel>();
                DharvikEntities1 db = new DharvikEntities1();
                DataTable dtTable = new DataTable();
                if (model.SupplierName == null)
                {
                    model.SupplierName = "";
                }
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();

                        cmd.CommandText = "usp_GetSuppAccountList";
                        cmd.CommandType = CommandType.StoredProcedure;

                        DbParameter paramName = cmd.CreateParameter();
                        paramName.ParameterName = "SupplierName";
                        paramName.Value = model.SupplierName;
                        cmd.Parameters.Add(paramName);

                        //DbParameter paramRD = cmd.CreateParameter();

                        DbDataAdapter da = DbProviderFactories.GetFactory("System.Data.SqlClient").CreateDataAdapter();
                        da.SelectCommand = cmd;
                        da.Fill(dtTable);
                        db.Database.Connection.Close();

                        foreach (DataRow dr in dtTable.Rows)
                        {
                            DateTime? createdDate = null;
                            try
                            {
                                createdDate = Convert.ToDateTime(dr["Date"].ToString());
                            }
                            catch
                            {

                            }

                            listSearch.Add(new SupplierModel()
                            {
                                SupplierId = Convert.ToInt32(dr["SupplierId"].ToString()),
                                SupplierName = dr["SupplierName"].ToString(),
                                Mobile = dr["Mobile"].ToString(),
                                CreatedDateText = createdDate.Value.ToString("MM/dd/yyyy h:mm tt"),

                                //OpeningBalance =Convert.ToDecimal (dr["TotalCost"].ToString()),



                            });
                        }
                    }
                    catch
                    {
                        db.Database.Connection.Close();
                    }
                }

                db.Dispose();
                return listSearch.ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

  
    }
}