using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Net.Mail;

namespace adoptu
{
    public partial class orphanageregister : System.Web.UI.Page
    {

        SqlConnection con;
        int ordr;
        string no, id, order = "KSAAOR00";
        string fileName2 = null;
        string fileName1 = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");
            string query = "select * from Orderno where id=3";
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

        protected void Orphanage_Click(object sender, EventArgs e)
        {           

            //certificate upload
            if (fileupload.HasFile)
            {
                fileName1 = fileupload.FileName;
                fileupload.PostedFile.SaveAs(Server.MapPath("~/Data/") + fileName1);
            }
            else
            {
                Response.Write("<script LANGUAGE='Javascript'>alert('Please select a certificate..')</script>");
            }

            //passbook upload
            if (fileupload2.HasFile)
            {
                fileName2 = fileupload2.FileName;
                fileupload2.PostedFile.SaveAs(Server.MapPath("~/Data/") + fileName2);
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Please select a passbook..')</script>");
            }

            
           // string value = null;         
          
                con.Open();
                string sql = "Insert into Orphanagereg(Oid,oName,oEmail,oMob,oAddress,oState,oDistrict,oPin,oHead,oAadhar,oBank,oAccountno,oPassbook,oCertiname,oCertificate,oPassword) values(@id,@name,@email,@phone,@address,@state,@district,@pin,@head,@aadhar,@bank,@acntno,@passbook,@certiname,@certificate,@password)";
                SqlCommand cmd = new SqlCommand(sql, con);
                try
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@name", Convert.ToString(Request.Form["name"]));
                    cmd.Parameters.AddWithValue("@email", Convert.ToString(Request.Form["email"]));
                    cmd.Parameters.AddWithValue("@phone", Convert.ToString(Request.Form["phone"]));
                    cmd.Parameters.AddWithValue("@address", Convert.ToString(Request.Form["address"]));
                    cmd.Parameters.AddWithValue("@state", Convert.ToString(Request.Form["state"]));
                    cmd.Parameters.AddWithValue("@district", Convert.ToString(Request.Form["district"]));
                    cmd.Parameters.AddWithValue("@pin", Convert.ToString(Request.Form["pin"]));
                    cmd.Parameters.AddWithValue("@head", Convert.ToString(Request.Form["head"]));
                    cmd.Parameters.AddWithValue("@aadhar", Convert.ToString(Request.Form["headaadhar"]));
                    cmd.Parameters.AddWithValue("@bank", Convert.ToString(Request.Form["bankname"]));
                    cmd.Parameters.AddWithValue("@acntno", Convert.ToString(Request.Form["accountno"]));
                    cmd.Parameters.AddWithValue("@passbook", fileName1);
                    cmd.Parameters.AddWithValue("@certiname", Convert.ToString(Request.Form["certificate"]));
                    cmd.Parameters.AddWithValue("@certificate", fileName2);
                    cmd.Parameters.AddWithValue("@password", Convert.ToString(Request.Form["repassword"]));
                    cmd.ExecuteNonQuery();                    
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }

                ordr++;
                string str = "update Orderno set orderno=@ordr where id=3";
                SqlCommand cm = new SqlCommand(str, con);
                cm.Parameters.AddWithValue("@ordr", ordr);
                cm.ExecuteNonQuery();

            //EMAIL
            MailMessage mailMessage = new MailMessage("ksaakerala@gmail.com", Convert.ToString(Request.Form["email"]));
            mailMessage.Subject = "KSAA";
            mailMessage.Body = "please login to your account by using the id '" + id + "'";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "ksaakerala@gmail.com",
                Password = "ksaa1234"
            };
            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);


            Response.Write("<script LANGUAGE='javascript'>alert(Please login to your account using the ID that send to your mail)</script>");
            Server.Transfer("login.aspx", true);
            con.Close();           

        }
    }
}



 
