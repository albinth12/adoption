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
    public partial class Odonation : System.Web.UI.Page
    {

        SqlConnection con;
        int ordr;
        string no, id, order = "KSAADNR00";
        static string prevPage = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                prevPage = Request.UrlReferrer.ToString();
            }
            con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");
            string query = "select * from Orderno where id=2";
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

        protected void donr_Click(object sender, EventArgs e)
        {
            string sql = "Insert into Donor(Dnrid,Dnrname,Dnraddress,Dnrmail,Dnrphone,Dnrstate,Dnrdistrict,Dnrpin,Oid,Dnrdeposit,Dnraadhar) values(@id,@name,@address,@email,@phone,@state,@district,@pin,@oid,@deposit,@aadhar)";
            SqlCommand cmd = new SqlCommand(sql, con);
            string dropdwn = DropDownList1.SelectedItem.Value.ToString();
            string value = null, query = "select Oid from Orphanagereg where oName='" + dropdwn + "'";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                value = Convert.ToString(ds.Tables[0].Rows[0][0]);
            }

            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", Convert.ToString(Request.Form["Name"]));
            cmd.Parameters.AddWithValue("@address", Convert.ToString(Request.Form["address"]));
            cmd.Parameters.AddWithValue("@email", Convert.ToString(Request.Form["email"]));
            cmd.Parameters.AddWithValue("@phone", Convert.ToInt32(Request.Form["phoneno"]));
            cmd.Parameters.AddWithValue("@state", Convert.ToString(Request.Form["state"]));
            cmd.Parameters.AddWithValue("@district", Convert.ToString(Request.Form["district"]));
            cmd.Parameters.AddWithValue("@pin", Convert.ToString(Request.Form["pin"]));
            cmd.Parameters.AddWithValue("@oid", value);
            cmd.Parameters.AddWithValue("@deposit", Convert.ToString(Request.Form["amount"]));
            cmd.Parameters.AddWithValue("@aadhar", Convert.ToString(Request.Form["aadhar"]));
            cmd.ExecuteNonQuery();
            con.Close();

            ordr++;
            string str = "update Orderno set orderno=@ordr where id=2";
            SqlCommand cm = new SqlCommand(str, con);
            con.Open();
            cm.Parameters.AddWithValue("@ordr", ordr);
            cm.ExecuteNonQuery();
            con.Close();
            Response.Write("<script LANGUAGE='Javascript'>alert('Donation Completed..')</script>");

           Response.Redirect(prevPage);
        }
    }
}