using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    
    public partial class payment : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client;
        ServiceReference2.Service1Client client1;
        protected Client.ServiceReference1.User[] passengers { get; set; }
        protected Client.ServiceReference2.tour place   { get; set; }
        protected int nofpassenger   { get; set; }
        protected int totalamount { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["current_user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            client = new ServiceReference1.Service1Client();
            client1 = new ServiceReference2.Service1Client();
            string email = Session["current_user"].ToString();
            int placeid;

            
            if(Request.QueryString["placeid"] != null)
            {
                placeid = Int32.Parse(Request.QueryString["placeid"]);
            }
            else 
            { 
                placeid = Int32.Parse(Request.Cookies["pid"].Value);
            }
            passengers = client.getpassengers(email);
            place = client1.getPlace(placeid);

            nofpassenger = passengers.Length;
            totalamount = nofpassenger * (Int32.Parse(place.price));

        }
    }
}