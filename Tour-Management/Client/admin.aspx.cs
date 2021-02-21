using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class admin : System.Web.UI.Page
    {

        ServiceReference2.Service1Client client;
        //Client.ServiceReference2.tour[] places;

        protected Client.ServiceReference2.tour[] places { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            client = new ServiceReference2.Service1Client();

            //List<Client.ServiceReference2.tplaces = client.getAllPlace();

            if (!Page.IsPostBack)
            {

                Repeater1.DataSource = client.getAllPlace();
                Repeater1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("update.aspx?placeid=" + e.CommandArgument.ToString());
        }


    }
}