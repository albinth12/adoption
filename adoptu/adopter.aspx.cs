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
    public partial class adopter : System.Web.UI.Page
    {
        string user;
        int status = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Request.QueryString.ToString();
            //Label1.Text = user;
            Session["userid"] = user;
        }

        protected void update_Click(object sender, EventArgs e)
        {
           
            msg();

            string value =null;    
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");
            string query = "select Oid from Orphans where orphid=@orphid ";          
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.SelectCommand.Parameters.AddWithValue("@orphid", Convert.ToString(Request.Form["oid"]));
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                value = (ds.Tables[0].Rows[0][0].ToString());
            }
            string sql = "insert into AdoptionRqst(AdpteId,orphid,AdptrStatus,Oid)values(@id,@opn,@status,@oid)";
            SqlCommand cmd = new SqlCommand(sql,con);
            con.Open();
            cmd.Parameters.AddWithValue("@id",user);
            cmd.Parameters.AddWithValue("@opn", Convert.ToString(Request.Form["oid"]));
            cmd.Parameters.AddWithValue("@status",status);
            cmd.Parameters.AddWithValue("@oid", value);                               
            cmd.ExecuteNonQuery();
            con.Close();



        }
        protected void msg()
        {
            Response.Write("<script LANGUAGE='javascript'>alert(Your are successfully submitted the child details.We will contact you after 2 days.)</script>");

        }
    }
}