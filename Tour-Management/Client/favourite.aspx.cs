using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class favourite : System.Web.UI.Page
    {
        List<int> fplaces = new List<int>();
        ServiceReference2.Service1Client client;
        Client.ServiceReference2.tour[] places;
        //List<Client.ServiceReference2.tour> places = new List<ServiceReference2.tour>();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["current_user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            client = new ServiceReference2.Service1Client();

            //List<Client.ServiceReference2.tplaces = client.getAllPlace();

            if (!IsPostBack)
            {
                string email = Session["current_user"].ToString();
               
                places = client.getFPlace1(email);

                Repeater1.DataSource = places;
                Repeater1.DataBind();
                //Label1.Text = client.getFPlace(email).Length.ToString();
            }



        }

        void ImageButton_Command(object sender, CommandEventArgs e)
        {
            int placeid = Int32.Parse(e.CommandArgument.ToString());
            Response.Redirect("destination.aspx?placeid="+placeid);
        }

     
        
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
           
            
        }

        protected void ImageButton2_Command(object sender, CommandEventArgs e)
        {
            string placeid = e.CommandArgument.ToString();
            HttpCookie cookie  = new HttpCookie("pid",placeid);
            Response.Cookies.Add(cookie);
            Response.Redirect("place.aspx");
        }
    }
}