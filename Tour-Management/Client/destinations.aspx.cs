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
    public partial class destinations : System.Web.UI.Page
    {
        
        ServiceReference2.Service1Client client;
        //Client.ServiceReference2.tour[] places;

        protected Client.ServiceReference2.tour[] places  { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["current_user"] == null)
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
            Button btn = (Button)sender;
            string a= Request.Form["placeid"];
            //place.Value = btn.CommandArgument.ToString();
            Response.Write(a);
            Console.WriteLine(a);
            

            
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            //l1.Text = e.CommandArgument.ToString();
            //Console.WriteLine(e.CommandArgument.ToString());
            string email = Session["current_user"].ToString();
            client.addToFav(email, Int32.Parse(e.CommandArgument.ToString()));
        }

       
    }
}