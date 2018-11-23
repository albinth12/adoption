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
    public partial class orphadoptrequest : System.Web.UI.Page
    {
        string userid;
        static string prevPage = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = user;
            if (!IsPostBack)
            {
                ViewState["RefUrl"] = Request.UrlReferrer.ToString();
            }

            gridview.Visible = false;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");       //connection link        
           
            //connection open                
            con.Open();

            userid = (string)Session["userid"];
            string sql = "select AdpteId from AdoptionRqst where Oid=@oid";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            da.SelectCommand.Parameters.AddWithValue("@oid", userid);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string query = "select usr.UsrName,usr.UsrAddress,usr.Mobile,usr.Email,rqst.orphid from Userreg usr join AdoptionRqst rqst on usr.UsrId=@id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", ds.Tables[0].Rows[0][0].ToString());
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