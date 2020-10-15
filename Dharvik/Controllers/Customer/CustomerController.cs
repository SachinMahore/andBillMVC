using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dharvik.Models;

namespace Dharvik.Controllers
{
    public class CustomerController : Controller
    {
        //
        // GET: /Customer/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SaveCustomerName(CustomerModel model)
        {
            try
            {

                return Json(new { MSG = (new CustomerModel()).SaveCustomerName(model) }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult SearchCustomer(string Prefix)
        {

            try
            {

                return Json(new CustomerModel().SearchCustomer(Prefix), JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}