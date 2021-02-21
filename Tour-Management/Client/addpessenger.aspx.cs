using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class addpessenger : System.Web.UI.Page
    {
        ServiceReference2.Service1Client client;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["current_user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            client = new ServiceReference2.Service1Client();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
           string fname = Request.Form["fname"];
           string lname = Request.Form["lname"];
           string age   = Request.Form["age"];
           string  date = trip_date.Text;
           string email = Session["current_user"].ToString();
           

            client.addpessenger(fname, lname,email, age, date);

        }
    }
}