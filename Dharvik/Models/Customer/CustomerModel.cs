using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;
using Dharvik.Data;
using System.Web.Mvc;

namespace Dharvik.Models
{
    public class CustomerModel
    {
        public long CustId { get; set; }
        public string CustName { get; set; }
        public string Address { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string Details { get; set; }
        public System.DateTime Date { get; set; }
        public int Status { get; set; }
        public string CreatedDateText { get; set; }
        public string GST { get; set; }
        public string PAN { get; set; }
        public string BillingAddress { get; set; }
        public string BillingCity { get; set; }
        public string BillingState { get; set; }
        public string BillingZip { get; set; }
        public string BillingCountry { get; set; }
        public string ShippingAddress { get; set; }
        public string ShippingCity { get; set; }
        public string ShippingState { get; set; }
        public string ShippingZip { get; set; }
        public string ShippingCountry { get; set; }
        public string Password { get; set; }
        public decimal OpeningBalance { get; set; }
        public int FileUploadCount { get; set; }
        public int SearchOption { get; set; }
        public int RowDisplay { get; set; }
        public int PageNumber { get; set; }
        public string SaveCustomerName(CustomerModel model)
        {
            string msg = "";
            DharvikEntities1 db = new DharvikEntities1();
            string ID = "0";
            

                var CustomerSave = new tbl_Customer()
                {
                    //CustId = model.CustId,
                    CustName = model.CustName,
                    Address = model.Address,
                    Mobile = model.Mobile,
                    Email = model.Email,
                    Details = model.Details,
                    Date = model.Date,
                    Status = model.Status,
                    GST = model.GST,
                    PAN = model.PAN,
                };
                db.tbl_Customer.Add(CustomerSave);
                db.SaveChanges();
                model.CustId = CustomerSave.CustId;
                ID = CustomerSave.CustId.ToString();
                db.Dispose();
                msg = "Customer Added Successfully";
            

            //else
            //{
            //    var notesUpdate = db.tbl_Notes.Where(p => p.ID == model.ID).FirstOrDefault();
            //    notesUpdate.Title = model.Title;
            //    notesUpdate.Notes = model.Notes;
            //    notesUpdate.LastModifiedById = Convert.ToInt32(MalaGroupWebSession.CurrentUser.UserID);
            //    notesUpdate.LastModifiedDate = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));

            //    db.SaveChanges();
            //    ID = model.ID.ToString();
            //    msg = "Notes Updated Successfully";
            //}

            db.Dispose();
            return msg;
        }

        public List<CustomerModel> SearchCustomer(string Prefix)
        {
            try
            {
                List<CustomerModel> model = new List<CustomerModel>();
                DharvikEntities1 db = new DharvikEntities1();
                DataTable dtTable = new DataTable();
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                        cmd.CommandText = "usp_GetCustomerSearch";
                        cmd.CommandType = CommandType.StoredProcedure;

                        DbParameter LID = cmd.CreateParameter();
                        LID.ParameterName = "SearchString";
                        LID.Value = Prefix;
                        cmd.Parameters.Add(LID);

                        DbDataAdapter da = DbProviderFactories.GetFactory("System.Data.SqlClient").CreateDataAdapter();
                        da.SelectCommand = cmd;
                        da.Fill(dtTable);
                        db.Database.Connection.Close();

                        foreach (DataRow dr in dtTable.Rows)
                        {
                            DateTime? createdDate = null;
                            try
                            {
                                createdDate = Convert.ToDateTime(dr["NotesDate"].ToString());
                            }
                            catch
                            {

                            }
                            model.Add(new CustomerModel()
                            {
                                CustId = Convert.ToInt64(dr["CustId"].ToString()),
                                Address = dr["Address"].ToString(),
                                CustName = dr["CustName"].ToString(),
                                // SalePrice = (createdDate.HasValue ? createdDate.Value.ToString("MM/dd/yyyy") : ""),
                                Mobile = dr["Mobile"].ToString(),
                                GST = dr["GST"].ToString(),
                            });
                        }


                    }
                    catch
                    {
                        db.Database.Connection.Close();
                    }
                }
                db.Dispose();
                return model.ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public CustomerModel GetCustAccountsInfo(long AccountID)
        {
            DharvikEntities1 db = new DharvikEntities1();
            CustomerModel model = new CustomerModel();

            model.CustId = 0;
            model.CustName = "";
            model.Mobile = "";
            model.GST = "";
            model.Details = "";
            model.BillingAddress = "";
            model.BillingCity = "";
            model.BillingState = "";
            model.BillingZip = "";
            model.BillingCountry = "";
            model.ShippingAddress = "";
            model.ShippingCity = "";
            model.ShippingState = "";
            model.ShippingZip = "";
            model.ShippingCountry = "";
            model.Password = "";
            model.FileUploadCount = 0;
            model.Email = "";
           

            if (AccountID > 0)
            {
                DataSet dsDataSet = new DataSet();
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                        cmd.CommandText = "usp_GetCustAccountData";
                        cmd.CommandType = CommandType.StoredProcedure;

                        DbParameter AID = cmd.CreateParameter();
                        AID.ParameterName = "CustId";
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
                        model.CustId = long.Parse(dsDataSet.Tables[0].Rows[0]["CustId"].ToString());
                        model.CustName = dsDataSet.Tables[0].Rows[0]["CustName"].ToString();
                        model.Mobile = dsDataSet.Tables[0].Rows[0]["Mobile"].ToString();
                        model.Details = dsDataSet.Tables[0].Rows[0]["Details"].ToString();
                        model.GST = dsDataSet.Tables[0].Rows[0]["GST"].ToString();
                        model.CreatedDateText = (createdDate.HasValue ? createdDate.Value.ToString("dd/MM/yyyy") : "");
                        //model.BillingAddress = dsDataSet.Tables[0].Rows[0]["BillingAddress"].ToString() == "" ? dsDataSet.Tables[0].Rows[0]["ShippingAddress"].ToString() : dsDataSet.Tables[0].Rows[0]["BillingAddress"].ToString();
                        //model.BillingCity = dsDataSet.Tables[0].Rows[0]["BillingCity"].ToString() == "" ? dsDataSet.Tables[0].Rows[0]["ShippingCity"].ToString() : dsDataSet.Tables[0].Rows[0]["BillingCity"].ToString();
                        //model.BillingState = dsDataSet.Tables[0].Rows[0]["BillingState"].ToString() == "" ? dsDataSet.Tables[0].Rows[0]["ShippingState"].ToString() : dsDataSet.Tables[0].Rows[0]["BillingState"].ToString();
                        //model.BillingZip = dsDataSet.Tables[0].Rows[0]["BillingZip"].ToString() == "" ? dsDataSet.Tables[0].Rows[0]["ShippingZip"].ToString() : dsDataSet.Tables[0].Rows[0]["BillingZip"].ToString();
                        //model.BillingCountry = dsDataSet.Tables[0].Rows[0]["BillingCountry"].ToString();
                        //model.ShippingAddress = dsDataSet.Tables[0].Rows[0]["ShippingAddress"].ToString();
                        //model.ShippingCity = dsDataSet.Tables[0].Rows[0]["ShippingCity"].ToString();
                        //model.ShippingCountry = dsDataSet.Tables[0].Rows[0]["ShippingCountry"].ToString();
                        //model.ShippingState = dsDataSet.Tables[0].Rows[0]["ShippingState"].ToString();
                        //model.ShippingZip = dsDataSet.Tables[0].Rows[0]["ShippingZip"].ToString();
                       
                        //model.Password = dsDataSet.Tables[0].Rows[0]["Password"].ToString();
                        model.Email = dsDataSet.Tables[0].Rows[0]["Email"].ToString();
                        //model.FileUploadCount = db.tbl_AttachedFiles.Where(p => p.PageID == 2 && p.AGID == AccountID).Count();

                       
                       
                    }

                }
            }
            return model;
        }
        public List<CustomerModel> GetAccountsList(CustomerModel model)
        {
            try
            {
                List<CustomerModel> listSearch = new List<CustomerModel>();
                DharvikEntities1 db = new DharvikEntities1();
                DataTable dtTable = new DataTable();
                if (model.CustName==null )
                {
                    model.CustName = "";
                }
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                        if (model.SearchOption == 1)
                        {
                            cmd.CommandText = "usp_GetCustAccountList";
                            cmd.CommandType = CommandType.StoredProcedure;

                            DbParameter paramName = cmd.CreateParameter();
                            paramName.ParameterName = "CustName";
                            paramName.Value = model.CustName;
                            cmd.Parameters.Add(paramName);

                            //DbParameter paramRD = cmd.CreateParameter();
                            //paramRD.ParameterName = "RowDisplay";
                            //paramRD.Value = model.RowDisplay;
                            //cmd.Parameters.Add(paramRD);

                            //DbParameter paramPN = cmd.CreateParameter();
                            //paramPN.ParameterName = "PageNumber";
                            //paramPN.Value = model.PageNumber == 0 ? 1 : model.PageNumber;
                            //cmd.Parameters.Add(paramPN);
                        }
                        else
                        {
                            cmd.CommandText = "usp_GetAdvAccountInfoPageList";
                            cmd.CommandType = CommandType.StoredProcedure;

                            DbParameter paramName = cmd.CreateParameter();
                            paramName.ParameterName = "CustName";
                            paramName.Value = model.CustName;
                            cmd.Parameters.Add(paramName);

                            DbParameter paramRD = cmd.CreateParameter();
                            paramRD.ParameterName = "RowDisplay";
                            paramRD.Value = model.RowDisplay;
                            cmd.Parameters.Add(paramRD);

                            DbParameter paramPN = cmd.CreateParameter();
                            paramPN.ParameterName = "PageNumber";
                            paramPN.Value = model.PageNumber == 0 ? 1 : model.PageNumber;
                            cmd.Parameters.Add(paramPN);

                            DbParameter paramFromDate = cmd.CreateParameter();
                            paramFromDate.ParameterName = "CFromDate";
                            paramFromDate.Value = model.Date;
                            cmd.Parameters.Add(paramFromDate);

                            DbParameter paramToDate = cmd.CreateParameter();
                            paramToDate.ParameterName = "CToDate";
                            paramToDate.Value = model.Date;
                            cmd.Parameters.Add(paramToDate);

                           
                        }
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
                           
                            listSearch.Add(new CustomerModel()
                            {
                                CustId = Convert.ToInt64(dr["CustId"].ToString()),
                                CustName = dr["CustName"].ToString(),
                                Mobile = dr["Mobile"].ToString(),
                                GST = dr["GST"].ToString(),
                                //OpeningBalance =Convert.ToDecimal (dr["TotalCost"].ToString()),
                           
                                CreatedDateText = createdDate.Value.ToString("MM/dd/yyyy h:mm tt"),
                                
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
        public string GetAccountFilterRangeList(CustomerModel model)
        {
            DharvikEntities1 db = new DharvikEntities1();

            DataTable dtTable = new DataTable();
            string PageNumber = "0";
            using (var cmd = db.Database.Connection.CreateCommand())
            {
                try
                {
                    db.Database.Connection.Open();
                    cmd.CommandText = "usp_GetAccountInfoPageListRange";
                    cmd.CommandType = CommandType.StoredProcedure;

                    DbParameter paramName = cmd.CreateParameter();
                    paramName.ParameterName = "CustName";
                    paramName.Value = model.CustName;
                    cmd.Parameters.Add(paramName);

                    DbParameter paramRD = cmd.CreateParameter();
                    paramRD.ParameterName = "RowDisplay";
                    paramRD.Value = model.RowDisplay;
                    cmd.Parameters.Add(paramRD);

                    DbDataAdapter da = DbProviderFactories.GetFactory("System.Data.SqlClient").CreateDataAdapter();
                    da.SelectCommand = cmd;
                    da.Fill(dtTable);
                    db.Database.Connection.Close();
                    PageNumber = dtTable.Rows[0]["PageNumber"].ToString() + "|" + dtTable.Rows[0]["TotalRows"].ToString();


                }
                catch
                {
                    db.Database.Connection.Close();
                }

            }
            db.Dispose();
            return PageNumber;
        }
        public List<CustAccountModel> GetTransactionDetails(long AccountID)
        {
            try
            {
                List<CustAccountModel> listSearch = new List<CustAccountModel>();
                DharvikEntities1 db = new DharvikEntities1();
                DataTable dtTable = new DataTable();
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                        cmd.CommandText = "usp_GetTransactionDetails";
                        cmd.CommandType = CommandType.StoredProcedure;

                        DbParameter paramName = cmd.CreateParameter();
                        paramName.ParameterName = "CustID";
                        paramName.Value = AccountID;
                        cmd.Parameters.Add(paramName);

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
                            listSearch.Add(new CustAccountModel()
                            {
                                AccountId = Convert.ToInt64(dr["AccountId"].ToString()),
                                Credit = Convert.ToDecimal(dr["Credit"].ToString()),
                                Debit = Convert.ToDecimal(dr["Debit"].ToString()),
                                TransDate = (createdDate.HasValue ? createdDate.Value.ToString("MM/dd/yyyy hh:mm:ss") : ""),
                                Balance = Convert.ToDecimal(dr["Balance"].ToString()),
                                Invoiceid = Convert.ToInt64(dr["Invoiceid"].ToString()),
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
        public List<InvoiceModel> GetInvoiceDetails(long AccountID)
        {
            try
            {
                List<InvoiceModel> listSearch = new List<InvoiceModel>();
                DharvikEntities1 db = new DharvikEntities1();
                DataTable dtTable = new DataTable();
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                        cmd.CommandText = "usp_GetInvoiceDetails";
                        cmd.CommandType = CommandType.StoredProcedure;

                        DbParameter paramName = cmd.CreateParameter();
                        paramName.ParameterName = "CustID";
                        paramName.Value = AccountID;
                        cmd.Parameters.Add(paramName);

                        DbDataAdapter da = DbProviderFactories.GetFactory("System.Data.SqlClient").CreateDataAdapter();
                        da.SelectCommand = cmd;
                        da.Fill(dtTable);
                        db.Database.Connection.Close();

                        foreach (DataRow dr in dtTable.Rows)
                        {
                            DateTime? createdDate = null;
                            try
                            {
                                createdDate = Convert.ToDateTime(dr["InvoiceDate"].ToString());
                            }
                            catch
                            {

                            }
                            listSearch.Add(new InvoiceModel()
                            {

                                TotalAmt = Convert.ToDecimal(dr["TotalAmt"].ToString()),
                                Advance = Convert.ToDecimal(dr["Advance"].ToString()),
                                InvoiceDateText = (createdDate.HasValue ? createdDate.Value.ToString("MM/dd/yyyy hh:mm:ss") : ""),
                                Balance = Convert.ToDecimal(dr["TotalAmt"].ToString())-Convert.ToDecimal(dr["Advance"].ToString()),
                                InvDiscount = Convert.ToDecimal(dr["Discount"].ToString()),
                                InvVat = Convert.ToDecimal(dr["Vat"].ToString()),
                                AutoInvoiceID = Convert.ToInt64(dr["AutoInvoiceID"].ToString()),
                                Person = dr["Person"].ToString(),
                                Paid = dr["Paid"].ToString(),

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
    public  class CustAccountModel
    {
        public long AccountId { get; set; }
        public long CustId { get; set; }
        public long Invoiceid { get; set; }
        public decimal Debit { get; set; }
        public Nullable<decimal> Credit { get; set; }
        public Nullable<decimal> Balance { get; set; }
        public System.DateTime Date { get; set; }
        public String TransDate { get; set; }
        public string Note { get; set; }
    }
}