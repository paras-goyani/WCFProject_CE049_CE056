using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Tour_CRUD
{
    public class crud : IService1
    {
        public bool addPlace(string name, string desc, string price, string imagepath)
        {
            Console.WriteLine("infereg");
            SqlConnection con = null;
            SqlCommand cmd = null;
            try
            {
                con = new SqlConnection();
                con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Database;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                using (con)
                {
                    string command = "INSERT INTO [Place](name,description,price,imagepath)VALUES(@name,@description,@price,@imagepath)";
                    cmd = new SqlCommand(command, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@description", desc);
                    cmd.Parameters.AddWithValue("@price", price);
                    cmd.Parameters.AddWithValue("@imagepath", imagepath);
                    int res = cmd.ExecuteNonQuery();
                    if (res == 1)
                    {
                        return true;
                    }
                    else
                    {
                        Console.WriteLine("dfwretf");
                        return false;
                    }
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.ToString());
                return false;
            }
            finally
            {
                if (con != null)
                {
                    con.Dispose();
                }
                if (cmd != null)
                {
                    cmd.Dispose();
                }
            }
        }

        public bool addToFav(String email, int placeid)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            try
            {
                con = new SqlConnection();
                con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Database;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                using (con)
                {
                    string command = "INSERT INTO [Fplace](email,placeid)VALUES(@email,@placeid)";
                    cmd = new SqlCommand(command, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@placeid", placeid);
                    int res = cmd.ExecuteNonQuery();
                    if (res == 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception err)
            {
                return false;
            }
            finally
            {
                if (con != null)
                {
                    con.Dispose();
                }
                if (cmd != null)
                {
                    cmd.Dispose();
                }
            }
        }

        public bool delete(int id)
        {
            throw new NotImplementedException();
        }

        public List<tour> getAllPlace()
        {
            List<tour> users = new List<tour>();
            tour u;
            SqlConnection con = null;
            SqlCommand cmd = null;
            try
            {
                con = new SqlConnection();
                con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Database;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                using (con)
                {
                    string command = "select * from Place";
                    cmd = new SqlCommand(command, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        u = new tour();
                        u.placeid = (int)rdr["placeid"];
                        u.name = rdr["name"].ToString();
                        u.desc = rdr["description"].ToString();
                        u.price = rdr["price"].ToString();
                        u.imagepath = rdr["imagepath"].ToString();
                        users.Add(u);
                    }
                    rdr.Close();
                    System.Console.WriteLine(users);
                    return users;
                }
            }
            catch (Exception err)
            {
                return users;
            }
            finally
            {
                if (con != null)
                {
                    con.Dispose();
                }
                if (cmd != null)
                {
                    cmd.Dispose();
                }
            }
        }

        public tour getPlace(int id)
        {

            tour u = new tour();
            SqlConnection con = null;
            SqlCommand cmd = null;
            try
            {
                con = new SqlConnection();
                con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Database;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                using (con)
                {
                    string command = "select * from Place where placeid ='" + id + "'";
                    cmd = new SqlCommand(command, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    Console.WriteLine("sdf");
                    while (rdr.Read())
                    {
                        Console.WriteLine(rdr["placeid"]);
                        u.placeid = (int)rdr["placeid"];
                        u.name = rdr["name"].ToString();
                        u.desc = rdr["description"].ToString();
                        u.price = rdr["price"].ToString();
                        u.imagepath = rdr["imagepath"].ToString();
                        
                    }
                    rdr.Close();
                    con.Close();
                    return u;
                }
            }
            catch (Exception err)
            {
                return u;
            }
            finally
            {
                if (con != null)
                {
                    con.Dispose();
                }
                if (cmd != null)
                {
                    cmd.Dispose();
                }
            }
        }
        
        public List<tour> getFPlace(string email)
        {
            List<tour> fplaces = new List<tour>();  
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
                        fplaces.Add(getPlace(Int32.Parse((string)rdr["placeid"])));
                    }
                    con.Close();
                    rdr.Close();
                    return fplaces;
                }
            }
            catch (Exception err)
            {
                return fplaces;
            }
            finally
            {
                if (con != null)
                {
                    con.Dispose();
                }
                if (cmd != null)
                {
                    cmd.Dispose();
                }
            }
        }

        public bool updatePlace(int id,String name,String description,String price,String imagepath)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            try
            {
                Console.WriteLine("1");
                con = new SqlConnection();
                con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Database;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

                using (con)
                {
                    Console.WriteLine("2");
                    string command = "UPDATE Place set name = @name, description = @description, price = @price, imagepath = @imagepath where placeid='" + id + "' ";
                    cmd = new SqlCommand(command, con);
                    con.Open();
                    cmd.Parameters.Add("@name", name);
                    cmd.Parameters.Add("@description", description);
                    cmd.Parameters.Add("@price", price);
                    cmd.Parameters.Add("@imagepath", imagepath);
                    int res = cmd.ExecuteNonQuery();
                    if (res == 1)
                    {
                        Console.WriteLine("3");
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception err)
            {
                return false;
                Console.WriteLine(err.ToString());
            }
            finally
            {
                if (con != null)
                {
                    con.Dispose();
                }
                if (cmd != null)
                {
                    cmd.Dispose();
                }
            }
        }


        bool IService1.addpessenger(string fname, string lname, string email, string age, string trip_date)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            try
            {
                con = new SqlConnection();
                con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Database;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                using (con)
                {
                    string command = "INSERT INTO [passenger](email,fname,lname,age,trip_date)VALUES(@email,@fname,@lname,@age,@trip_date)";
                    cmd = new SqlCommand(command, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@fname", fname);
                    cmd.Parameters.AddWithValue("@lname", lname);
                    cmd.Parameters.AddWithValue("@age", age);
                    cmd.Parameters.AddWithValue("@trip_date", trip_date);
                    int res = cmd.ExecuteNonQuery();
                    if (res == 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception err)
            {
                return false;
            }
            finally
            {
                if (con != null)
                {
                    con.Dispose();
                }
                if (cmd != null)
                {
                    cmd.Dispose();
                }
            }
        }
    }
}
