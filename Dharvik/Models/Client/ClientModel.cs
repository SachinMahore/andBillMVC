using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dharvik.Data;
using Dharvik.Models;

namespace Dharvik.Models
{
    public class ClientModel
    {
        public long ClientId { get; set; }
        public string ClientName { get; set; }
        public string Address { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string Details { get; set; }
        public System.DateTime Date { get; set; }
        public int Status { get; set; }
        public string GST { get; set; }
        public string PAN { get; set; }

        public ClientModel GetClientDet(int ID)
        {
            
                DharvikEntities1 db = new DharvikEntities1();
                ClientModel model = new ClientModel();
                var clientDet = db.tbl_Client.Where(p => p.ClientId == ID).FirstOrDefault();
                model.ClientName = clientDet.ClientName;
                model.Address = clientDet.Address;
                model.Mobile = clientDet.Mobile;
                model.GST = clientDet.GST;
                return model;

            
        }
    }
}