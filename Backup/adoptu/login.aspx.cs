using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace adoptu
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scrips", "<script>alert('con ok');</script>");
            try
            {
                con.Open();
                Response.Write("connect");
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }
        }
        protected void Login_Click(object sender, EventArgs e)
        {
           Page.ClientScript.RegisterStartupScript(this.GetType(),"Scrips","<script>alert('con ok');</script>");
        }
    }
}