using Dharvik.Data;
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
    public class EmployeeModel
    {
        public int EmpId { get; set; }
        public string EmpName { get; set; }
        public string Address { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string Details { get; set; }
        public int Status { get; set; }
       
       
        public string Invoiceid { get; set; }
        public decimal Debit { get; set; }
        public Nullable<decimal> Credit { get; set; }
        public Nullable<decimal> Balance { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string CreatedDateText { get; set; }
        public decimal OpeningBalance { get; set; }

        public string SaveEmployeeName(EmployeeModel model)
        {
            string msg = "";
            DharvikEntities1 db = new DharvikEntities1();
            string ID = "0";

            var EmployeeSave = new tbl_Employee()
            {
                //CustId = model.CustId,
                EmpName = model.EmpName,
                Address = model.Address,
                Mobile = model.Mobile,
                Email = model.Email,
                Details = model.Details,
                Date = DateTime.Now,
                Status =1
              
            };
            db.tbl_Employee.Add(EmployeeSave);
            db.SaveChanges();
            model.EmpId = EmployeeSave.EmpId;
            ID = EmployeeSave.EmpId.ToString();
            db.Dispose();
            msg = "Employee Added Successfully";

            db.Dispose();
            return msg;
        }
        public List<EmployeeModel> SearchEmployee(string Prefix)
        {
            try
            {
                List<EmployeeModel> model = new List<EmployeeModel>();
                DharvikEntities1 db = new DharvikEntities1();
                DataTable dtTable = new DataTable();
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                        cmd.CommandText = "usp_GetEmployeeSearch";
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
                            model.Add(new EmployeeModel()
                            {
                                EmpId = Convert.ToInt32(dr["EmpId"].ToString()),
                                Address = dr["Address"].ToString(),
                                EmpName = dr["EmpName"].ToString(),
                                // SalePrice = (createdDate.HasValue ? createdDate.Value.ToString("MM/dd/yyyy") : ""),
                                Mobile = dr["Mobile"].ToString(),
                               
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
    


        public EmployeeModel GetEmpAccountsInfo(long AccountID)
        {
            DharvikEntities1 db = new DharvikEntities1();
            EmployeeModel model = new EmployeeModel();

            model.EmpId = 0;
            model.EmpName = "";
            model.Mobile = "";
            
            model.Details = "";

            model.Email = "";


            if (AccountID > 0)
            {
                DataSet dsDataSet = new DataSet();
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                        cmd.CommandText = "usp_GetEmpAccountData";
                        cmd.CommandType = CommandType.StoredProcedure;

                        DbParameter AID = cmd.CreateParameter();
                        AID.ParameterName = "EmpId";
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
                        model.EmpId = Convert.ToInt32(dsDataSet.Tables[0].Rows[0]["EmpId"].ToString());
                        model.EmpName = dsDataSet.Tables[0].Rows[0]["EmpName"].ToString();
                        model.Mobile = dsDataSet.Tables[0].Rows[0]["Mobile"].ToString();
                        model.Details = dsDataSet.Tables[0].Rows[0]["Details"].ToString();
                     
                      
                        model.Email = dsDataSet.Tables[0].Rows[0]["Email"].ToString();
                       
                    }

                }
            }
            return model;
        }

        public List<EmployeeModel> GetAccountsList(EmployeeModel model)
        {
            try
            {
                List<EmployeeModel> listSearch = new List<EmployeeModel>();
                DharvikEntities1 db = new DharvikEntities1();
                DataTable dtTable = new DataTable();
                if (model.EmpName == null)
                {
                    model.EmpName = "";
                }
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                       
                            cmd.CommandText = "usp_GetEmpAccountList";
                            cmd.CommandType = CommandType.StoredProcedure;

                            DbParameter paramName = cmd.CreateParameter();
                            paramName.ParameterName = "EmpName";
                            paramName.Value = model.EmpName;
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

                            listSearch.Add(new EmployeeModel()
                            {
                                EmpId = Convert.ToInt32(dr["EmpId"].ToString()),
                                EmpName = dr["EmpName"].ToString(),
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