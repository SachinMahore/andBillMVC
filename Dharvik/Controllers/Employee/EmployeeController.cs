using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dharvik.Models;

namespace Dharvik.Controllers
{
    public class EmployeeController : Controller
    {
        //
        // GET: /Employee/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AddEdit()
        {
            long id = 0;
            var model = new EmployeeModel().GetEmpAccountsInfo(id);
            return View("..\\Employee\\AddEdit", model);
        }
        public ActionResult Edit(long id)
        {

            var model = new EmployeeModel().GetEmpAccountsInfo(id);
            return View("..\\Employee\\AddEdit", model);
        }

       
        public ActionResult GetEmpAccountsList(EmployeeModel model)
        {

            try
            {
                return Json((new EmployeeModel()).GetAccountsList(model), JsonRequestBehavior.AllowGet);
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

        public ActionResult SaveEmployeeName(EmployeeModel model)
        {
            try
            {

                return Json(new { MSG = (new EmployeeModel()).SaveEmployeeName(model) }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
	}
}