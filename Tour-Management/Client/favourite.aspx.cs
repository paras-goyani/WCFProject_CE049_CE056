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
        //Client.ServiceReference2.tour[] places;
        List<Client.ServiceReference2.tour> places = new List<ServiceReference2.tour>();

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
                getFPlace(email);


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

        public void getPlace()
        {
            List<Client.ServiceReference2.tour> users = new List<Client.ServiceReference2.tour>();
            Client.ServiceReference2.tour u;
            SqlConnection con = null;
            SqlCommand cmd = null;
            try
            {
                con = new SqlConnection();
                con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Database;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                using (con)
                {
                    //Label1.Text += fplaces.Count;
                    for(int i=0;i<fplaces.Count;i++)
                    {
                        string command = "select * from Place where placeid= '"+ fplaces[i]+"'";
                        cmd = new SqlCommand(command, con);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();
                        while (rdr.Read())
                        {
                            u = new Client.ServiceReference2.tour();
                            //Label2.Text += rdr["placeid"];
                            u.placeid = (int)rdr["placeid"];
                            u.name = rdr["name"].ToString();
                            u.desc = rdr["description"].ToString();
                            u.price = rdr["price"].ToString();
                            u.imagepath = rdr["imagepath"].ToString();
                            places.Add(u);
                        }

                        con.Close();
                        System.Console.WriteLine(users);

                    }
                    
                    
                }
            }
            catch (Exception err)
            {
                
            }
            finally
            {
                
                    con.Close();
                
            }
        }

        public void getFPlace(string email)
        {
            
            SqlConnection con = null;
            SqlCommand cmd = null;
            try
            {
                con = new SqlConnection();
                con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Database;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                using (con)
                {
                    string command = "select * from Fplace where email = '" + email + "'";
                    cmd = new SqlCommand(command, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        //Label1.Text += rdr["placeid"].ToString();
                        fplaces.Add((int)rdr["placeid"]);
                        
                        
                    }
                    rdr.Close();
                    con.Close();
                    getPlace();
                   
                }
            }
            catch (Exception err)
            {
               
            }
            finally
            {
                con.Close();
            }
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