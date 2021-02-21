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
    public partial class update : System.Web.UI.Page
    {
        ServiceReference2.Service1Client client;
        ServiceReference2.tour tour;
        string placeid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            client = new ServiceReference2.Service1Client();
            tour = new ServiceReference2.tour();
            placeid = Request.QueryString["placeid"];
            tour = client.getPlace(int.Parse(placeid));
            if (!Page.IsPostBack)
            {
                name.Value = tour.name;
                price.Value = tour.price;
                description.Value = tour.desc;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string imagefile = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(@"C:\Users\Dells\Documents\GitHub\Tour-Management\Client\images\" + imagefile);
            if (client.updatePlace(int.Parse(placeid), name.Value, description.Value, price.Value, imagefile))
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                name.Value = "error";
            }
        }
    }
}