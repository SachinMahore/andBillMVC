using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dharvik.Models;

namespace Dharvik.Controllers
{
    public class InvoiceController : Controller
    {
        //
        // GET: /Invoice/
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult SaveInvoice(InvoiceModel Model)
        {
            try
            {

                return Json(new { MSG = (new InvoiceModel()).SaveInvoice(Model) }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
	}
}