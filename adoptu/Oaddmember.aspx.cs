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
    public partial class Oaddmember : System.Web.UI.Page
    {
        int ordr;
        string no, id, order = "KSAACH00";
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");
        string userid;
        static string prevPage = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                prevPage = Request.UrlReferrer.ToString();
            }
            string query = "select * from Orderno where id=4";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ordr = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                no = ordr.ToString();
                id = string.Concat(order, no);
            }
            con.Close();
        }

        protected void register_Click(object sender, EventArgs e)
        {
            userid = (string)Session["userid"];
            int status = 0;
            string sql = "Insert into Orphans(orphid,orphname,Oid,studyin,age,aadhar,gender,status,dob) values(@id,@name,@oid,@study,@age,@aadhar,@gender,@status,@dob)";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", Convert.ToString(Request.Form["name"]));
            cmd.Parameters.AddWithValue("@oid", userid);
            cmd.Parameters.AddWithValue("@study", Convert.ToString(Request.Form["study"]));
            cmd.Parameters.AddWithValue("@age", Convert.ToString(Request.Form["age"]));
            cmd.Parameters.AddWithValue("@aadhar", Convert.ToString(Request.Form["aadhar"]));
            cmd.Parameters.AddWithValue("@gender", Convert.ToString(Request.Form["gender"]));
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@dob", Convert.ToString(Request.Form["dob"]));
             cmd.ExecuteNonQuery();
            con.Close();

            ordr++;
            string str = "update Orderno set orderno=@ordr where id=4";
            SqlCommand cm = new SqlCommand(str, con);
            con.Open();
            cm.Parameters.AddWithValue("@ordr", ordr);
            cm.ExecuteNonQuery();
            con.Close();

            Response.Write("<script LANGUAGE='Javascript'>alert('Successfully Registered')</script>");

            Response.Redirect(prevPage);

        }
    }
}