using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dharvik.Data;
using System.Web.Mvc;
using System.Data;
using System.Data.Common;

namespace Dharvik.Models
{
    public class ItemsModel
    {
        public long ItemId { get; set; }
        public string ItemName { get; set; }
        public decimal PurchasePrice { get; set; }
        public decimal SalePrice { get; set; }
        public int CatId { get; set; }
        public decimal ItemQty { get; set; }
        public string Unit { get; set; }
        public string Details { get; set; }
        public Nullable<decimal> Vat { get; set; }
        public string Barcode { get; set; }
        public string HSN { get; set; }
        public string MFGComapny { get; set; }
        public string MFGDate { get; set; }
        public Nullable<System.DateTime> ExpiryDate { get; set; }
        public Nullable<decimal> MRP { get; set; }
        public Nullable<decimal> Wprice { get; set; }
        public Nullable<decimal> WoutSalePrice { get; set; }
        

        public string SaveUpdateItems(ItemsModel model)
        {
            string msg = "";
            DharvikEntities1 db = new DharvikEntities1();
            string ID = "0";
            if (model.ItemId == 0)
            {

                var itemSave = new tbl_Item()
                {
                    ItemName = model.ItemName,
                    PurchasePrice = model.PurchasePrice,
                    SalePrice = model.SalePrice,
                    ExpiryDate = model.ExpiryDate,
                    Barcode = model.Barcode,
                    Details = model.Details,
                    CatId = model.CatId,
                    Unit = model.Unit,
                };
                db.tbl_Item.Add(itemSave);
                db.SaveChanges();
                model.ItemId = itemSave.ItemId;
                ID = itemSave.ItemId.ToString();
                db.Dispose();
                msg = "Item Added Successfully";
            }

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
        public List<ItemsModel> SearchItem(string Prefix)
        {
            try
            {
                List<ItemsModel> model = new List<ItemsModel>();
                DharvikEntities1 db = new DharvikEntities1();
                DataTable dtTable = new DataTable();
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                        cmd.CommandText = "usp_GetItemSearch";
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
                            //DateTime? createdDate = null;
                            //try
                            //{
                            //    createdDate = Convert.ToDateTime(dr["NotesDate"].ToString());
                            //}
                            //catch
                            //{

                            //}
                            model.Add(new ItemsModel()
                            {
                                ItemId = Convert.ToInt64(dr["ItemId"].ToString()),
                                HSN = dr["HSN"].ToString(),
                                Vat = Convert.ToDecimal ( dr["Vat"].ToString()),
                                ItemName = dr["ItemName"].ToString(),
                                // SalePrice = (createdDate.HasValue ? createdDate.Value.ToString("MM/dd/yyyy") : ""),
                                CatId = Convert.ToInt32(dr["CatId"].ToString()),
                                SalePrice = Convert.ToDecimal(dr["SalePrice"].ToString()),
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

        public List<ItemsModel> GetList(ItemsModel model)
        {
            try
            {
                List<ItemsModel> listSearch = new List<ItemsModel>();
                DharvikEntities1 db = new DharvikEntities1();
                DataTable dtTable = new DataTable();
                if (model.ItemName == null)
                {
                    model.ItemName = "";
                }
                using (var cmd = db.Database.Connection.CreateCommand())
                {
                    try
                    {
                        db.Database.Connection.Open();
                       //if (model.SearchOption == 1)
                      // {
                            cmd.CommandText = "usp_GetItemList";
                            cmd.CommandType = CommandType.StoredProcedure;

                            DbParameter paramName = cmd.CreateParameter();
                            paramName.ParameterName = "ItemName";
                            paramName.Value = model.ItemName;
                            cmd.Parameters.Add(paramName);

                            //DbParameter paramRD = cmd.CreateParameter();
                            //paramRD.ParameterName = "RowDisplay";
                            //paramRD.Value = model.RowDisplay;
                            //cmd.Parameters.Add(paramRD);

                            //DbParameter paramPN = cmd.CreateParameter();
                            //paramPN.ParameterName = "PageNumber";
                            //paramPN.Value = model.PageNumber == 0 ? 1 : model.PageNumber;
                            //cmd.Parameters.Add(paramPN);
                     //  }
                        //else
                        //{
                        //    cmd.CommandText = "usp_GetAdvAccountInfoPageList";
                        //    cmd.CommandType = CommandType.StoredProcedure;

                        //    DbParameter paramName = cmd.CreateParameter();
                        //    paramName.ParameterName = "CustName";
                        //    paramName.Value = model.CustName;
                        //    cmd.Parameters.Add(paramName);

                        //    DbParameter paramRD = cmd.CreateParameter();
                        //    paramRD.ParameterName = "RowDisplay";
                        //    paramRD.Value = model.RowDisplay;
                        //    cmd.Parameters.Add(paramRD);

                        //    DbParameter paramPN = cmd.CreateParameter();
                        //    paramPN.ParameterName = "PageNumber";
                        //    paramPN.Value = model.PageNumber == 0 ? 1 : model.PageNumber;
                        //    cmd.Parameters.Add(paramPN);

                        //    DbParameter paramFromDate = cmd.CreateParameter();
                        //    paramFromDate.ParameterName = "CFromDate";
                        //    paramFromDate.Value = model.Date;
                        //    cmd.Parameters.Add(paramFromDate);

                        //    DbParameter paramToDate = cmd.CreateParameter();
                        //    paramToDate.ParameterName = "CToDate";
                        //    paramToDate.Value = model.Date;
                        //    cmd.Parameters.Add(paramToDate);


                        //}
                        DbDataAdapter da = DbProviderFactories.GetFactory("System.Data.SqlClient").CreateDataAdapter();
                        da.SelectCommand = cmd;
                        da.Fill(dtTable);
                        db.Database.Connection.Close();

                        foreach (DataRow dr in dtTable.Rows)
                        {
                           

                            listSearch.Add(new ItemsModel()
                            {
                                ItemId = Convert.ToInt64(dr["ItemId"].ToString()),
                                ItemName = dr["ItemName"].ToString(),
                           PurchasePrice=Convert.ToDecimal( dr["PurchasePrice"].ToString()),
                               SalePrice = Convert.ToDecimal(dr["SalePrice"].ToString()),
                               ItemQty= Convert.ToDecimal(dr["ItemQty"].ToString()),
                             Wprice = Convert.ToDecimal(dr["Wprice"].ToString()),
                              Vat = Convert.ToDecimal(dr["Vat"].ToString()),
                               //GST = dr["GST"].ToString(),
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

        //public ItemsModel GetItemAccountsInfo(long AccountID)
        //{
        //    DharvikEntities db = new DharvikEntities();
        //    ItemsModel model = new ItemsModel();

        //    model.ItemId = 0;
        //    model.ItemName = "";
           
           
        //    model.Details = "";
           

        //    if (AccountID > 0)
        //    {
        //        DataSet dsDataSet = new DataSet();
        //        using (var cmd = db.Database.Connection.CreateCommand())
        //        {
        //            try
        //            {
        //                db.Database.Connection.Open();
        //                cmd.CommandText = "usp_GetItemList";
        //                cmd.CommandType = CommandType.StoredProcedure;

        //                DbParameter AID = cmd.CreateParameter();
        //                AID.ParameterName = "ItemId";
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
        //                model.ItemId = long.Parse(dsDataSet.Tables[0].Rows[0]["ItemId"].ToString());
        //                model.ItemName = dsDataSet.Tables[0].Rows[0]["ItemName"].ToString();
                        
        //                model.Details = dsDataSet.Tables[0].Rows[0]["Details"].ToString();
                       
        //                model.CreatedDateText = (createdDate.HasValue ? createdDate.Value.ToString("dd/MM/yyyy") : "");
                       


        //            }

        //        }
        //    }
        //    return model;
        //}

        public int SearchOption { get; set; }
    }
}