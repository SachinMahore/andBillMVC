using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dharvik.Data;

namespace Dharvik.Models
{
    public class CategoryModel
    {
        public int Id { get; set; }
        public string CatName { get; set; }
        public Nullable<decimal> GST { get; set; }
        public Nullable<int> Type { get; set; }


        public string SaveCategory(CategoryModel model)
        {
            string Msg = "";
            DharvikEntities1 db = new DharvikEntities1();

            var categorysave = new tbl_Category()
            {
                CatName = model.CatName,
                GST = model.GST,
                Type = model.Type,
            };
            db.tbl_Category.Add(categorysave);
            db.SaveChanges();
            return Msg;
        }

        //public string SaveCategory(CategoryModel model)
        //{
        //    string msg = "";
        //    DharvikEntities1 db = new DharvikEntities1();
        //    string ID = "0";


        //    var categorysave = new tbl_Category()
        //    {
        //        //CustId = model.CustId,
        //        CatName = model.CatName,
        //        GST = model.GST,
        //        Type = model.Type,
        //    };
        //    db.tbl_Category.Add(categorysave);
        //    db.SaveChanges();
        //    model.Id = categorysave.Id;
        //    ID = categorysave.Id.ToString();
        //    db.Dispose();
        //    msg = "Customer Added Successfully";


          
        //    db.Dispose();
        //    return msg;
        //}
    }
}