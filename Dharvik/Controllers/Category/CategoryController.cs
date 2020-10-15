using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dharvik.Models;

namespace Dharvik.Controllers
{
    public class CategoryController : Controller
    {
        //
        // GET: /Category/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SaveCategory(CategoryModel model)
        {
            try
            {
                return Json(new { MSG = (new CategoryModel()).SaveCategory(model) }, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
	}
}