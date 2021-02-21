using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class Registration : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new ServiceReference1.Service1Client();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (client.addUser(email.Value, firstname.Value, lastname.Value, password.Value))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                email.Value = "";
            }
        }

    }
}