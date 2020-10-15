using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dharvik.Models;

namespace Dharvik.Controllers
{
    public class ItemsController : Controller
    {
        //
        // GET: /Items/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SaveUpdateItems(ItemsModel model)
        {
            try
            {

                return Json(new { MSG = (new ItemsModel()).SaveUpdateItems(model) }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult SearchItem(string Prefix)
        {
            
            try
            {

                return Json(new ItemsModel().SearchItem(Prefix), JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }


        public ActionResult GetItemList(ItemsModel model)
        {

            try
            {
                return Json((new ItemsModel()).GetList(model), JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }

	}


}