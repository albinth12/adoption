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
    public partial class adopterupdateinfo : System.Web.UI.Page
    {
        string filename1, filename2,filename3,userid;
        static string prevPage = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                prevPage = Request.UrlReferrer.ToString();
            }
            // Label1.Text = userid;
        }
        protected void update_Click(object sender, EventArgs e)
        {
            userid = (string)Session["userid"];
            string value = gender.SelectedItem.Value.ToString();
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");
            string sql = "update Userreg set UsrAddress=@address,Partner=@partner,State=@state,District=@district,Gender=@gender,ProfilePic=@pic,MgeStatus=@mgestts,MgeCertificate=@mgecerti,Aadharno=@aadhar,Aadhar=@aadharcpy where UsrId=@userid";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();          
            //profile pic upload
            if (fileupload2.HasFile)
            {
                filename1 = fileupload2.FileName;
                fileupload2.PostedFile.SaveAs(Server.MapPath("~/profile/") + filename1);
            }
            //marriage certificate upload
            if (fileupload1.HasFile)
            {
                filename2 = fileupload1.FileName;
                fileupload1.PostedFile.SaveAs(Server.MapPath("~/files/") + filename2);
            }
            //aadhar copy upload
            if (fileupload3.HasFile)
            {
                filename3 = fileupload3.FileName;
                fileupload3.PostedFile.SaveAs(Server.MapPath("~/files/") + filename3);
            }
           
                cmd.Parameters.AddWithValue("@userid", userid);
                cmd.Parameters.AddWithValue("@address", Convert.ToString(Request.Form["address"]));
                cmd.Parameters.AddWithValue("@partner", Convert.ToString(Request.Form["partner"]));
                cmd.Parameters.AddWithValue("@state", Convert.ToString(Request.Form["state"]));
                cmd.Parameters.AddWithValue("@district", Convert.ToString(Request.Form["district"]));
                cmd.Parameters.AddWithValue("@gender", value);
                cmd.Parameters.AddWithValue("@pic", filename1);
                cmd.Parameters.AddWithValue("@mgestts", Convert.ToString(Request.Form["mgestts"]));
                cmd.Parameters.AddWithValue("@mgecerti", filename2);
                cmd.Parameters.AddWithValue("@aadhar", Convert.ToString(Request.Form["aadhar"]));
                cmd.Parameters.AddWithValue("@aadharcpy", filename3);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect(prevPage);

        }
       
    }
}