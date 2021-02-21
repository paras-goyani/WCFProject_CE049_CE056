using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class place : System.Web.UI.Page
    {
        ServiceReference2.Service1Client client;
        protected Client.ServiceReference2.tour dest { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["current_user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            client = new ServiceReference2.Service1Client();

            int id = Int32.Parse(Request.Cookies["pid"].Value);
            dest = client.getPlace(id);
        }
    }
}