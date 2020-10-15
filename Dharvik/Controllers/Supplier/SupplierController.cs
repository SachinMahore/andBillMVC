using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dharvik.Models;

namespace Dharvik.Controllers
{
    public class SupplierController : Controller
    {
        //
        // GET: /Supplier/
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult AddEdit()
        {
            long id = 0;
            var model = new SupplierModel().GetSuppAccountsInfo(id);
            return View("..\\Supplier\\AddEdit", model);
        }
        public ActionResult Edit(long id)
        {

            var model = new SupplierModel().GetSuppAccountsInfo(id);
            return View("..\\Supplier\\AddEdit", model);
        }

        public ActionResult GetSuppAccountsList(SupplierModel model)
        {

            try
            {
                return Json((new SupplierModel()).GetAccountsList(model), JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult GetTransactionDetails(long AccountID)
        {

            try
            {
                return Json((new CustomerModel()).GetTransactionDetails(AccountID), JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult SaveSupplierName(SupplierModel model)
        {
            try
            {

                return Json(new { MSG = (new SupplierModel()).SaveSupplierName(model) }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
	
	}
}