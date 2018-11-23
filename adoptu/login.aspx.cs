using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Data.Sql;


namespace adoptu
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;     
        protected void Page_Load(object sender, EventArgs e)
        {          
                       
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            string usr = Convert.ToString(Request.Form["username"]);
            string pas = Convert.ToString(Request.Form["password"]);
            try
            {
                con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");       //connection link        
                cmd = new SqlCommand();
                //connection open                
                con.Open();
                string sql = "select UserName,Password,Type from log";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataSet ds = new DataSet();
                ds.Clear();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (string.Equals(ds.Tables[0].Rows[0][0].ToString(), usr) && string.Equals(ds.Tables[0].Rows[0][1].ToString(), pas) && string.Equals("administrator", ds.Tables[0].Rows[0][2].ToString()))
                    {
                        Response.Redirect("administrator.aspx");
                    }
                    else if ((string.Equals(ds.Tables[0].Rows[1][0].ToString(), usr) && string.Equals(ds.Tables[0].Rows[1][1].ToString(), pas) && string.Equals("inspector", ds.Tables[0].Rows[1][2].ToString())))
                    {
                        Response.Redirect("inspector.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "key", "<script>alert('Please check your Username and Password')</script>");
                        //Response.Write("Please check your Username and Password");
                    }

                }

                string query = "select Oid,oPassword from Orphanagereg where Oid=@oid";
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.SelectCommand.Parameters.AddWithValue("@oid",usr);              
                DataSet dt = new DataSet();
                dt.Clear();
                sda.Fill(dt);
                if (dt.Tables[0].Rows.Count > 0)
                {
                    if (string.Equals(dt.Tables[0].Rows[0][0].ToString(), usr) && string.Equals(dt.Tables[0].Rows[0][1].ToString(), pas))
                    {
                        Response.Redirect("Orphanagehome.aspx?"+ dt.Tables[0].Rows[0][0].ToString());
                    }
                }

                string query1 = "select UsrId,Password from Userreg where UsrId=@userid";
                SqlDataAdapter sdb = new SqlDataAdapter(query1, con);
                sdb.SelectCommand.Parameters.AddWithValue("@userid", usr);
                DataSet du = new DataSet();
                du.Clear();
                sdb.Fill(du);
                if (du.Tables[0].Rows.Count > 0)
                {
                    if (string.Equals(du.Tables[0].Rows[0][0].ToString(), usr) && string.Equals(du.Tables[0].Rows[0][1].ToString(), pas))
                    {                        
                        Response.Redirect("adopter.aspx?"+ du.Tables[0].Rows[0][0].ToString());
                    }
                }

                      
                con.Close();
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }            
        }
    }
}