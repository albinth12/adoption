using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace adoptu
{
    public partial class adoptionrqst : System.Web.UI.Page
    {
        string user;
        static string prevPage = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                prevPage = Request.UrlReferrer.ToString();
            }
            gridview.Visible = false;
            user = Request.QueryString.ToString();           
            Session["userid"] = user;
        }

        protected void Reg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");
            int min=0, max=0;            
            min = Convert.ToInt32(Request.Form["agemin"]);
            max = Convert.ToInt32(Request.Form["agemax"]);
            //gender = Convert.ToString((Request.Form["gender"]));
            if (max>0)
            {
                string sql = "select orphid,orphname,Oid,aadhar,studyin,dob,age,gender from Orphans where age>@min and age<@max";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@min", Convert.ToInt32(Request.Form["agemin"]));
                cmd.Parameters.AddWithValue("@max", Convert.ToInt32(Request.Form["agemax"]));
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gridview.DataSource = dt;
                gridview.DataBind();
                gridview.Visible = true;
            }
            else
            {
                string sql = "select orphid,orphname,Oid,aadhar,studyin,dob,age,gender from Orphans";
                SqlCommand cmd = new SqlCommand(sql, con);
                // cmd.Parameters.AddWithValue("@gender",Convert.ToString(Request.Form["gender"]));
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gridview.DataSource = dt;
                gridview.DataBind();
                gridview.Visible = true;
            }          
        }
     

    }
}