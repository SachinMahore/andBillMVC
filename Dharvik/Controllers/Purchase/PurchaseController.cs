using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dharvik.Models;

namespace Dharvik.Controllers
{
    public class PurchaseController : Controller
    {
        //
        // GET: /Purchase/
        public ActionResult Index()
        {
            return View();
        }



        public ActionResult AddEdit()
        {
           // long id = 0;
            //var model = new SupplierModel().GetSuppAccountsInfo(id);
            return View("..\\Purchase\\AddEdit");
        }
        public ActionResult Edit(long id)
        {

            //var model = new SupplierModel().GetSuppAccountsInfo(id);
            return View("..\\Purchase\\AddEdit");
        }

        public ActionResult SavePurchase(PurchaseModel model)
        {
            try
            {

                return Json(new { MSG = (new PurchaseModel()).SavePurchase(model) }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}