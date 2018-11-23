using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;


namespace adoptu
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlCommand cmd,cm;
        string order="KSAARN0";
        string no,id;
        int ordr;       
        protected void Register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-V2R01GT\SQLEXPRESS;Initial Catalog=adopt;Integrated Security=True");     //connection link                    
            //connection open  
            con.Open();
            string query = "select * from Orderno where id=1";            
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
            if (string.Equals(Convert.ToString(Request.Form["Password"]), Convert.ToString(Request.Form["Repassword"])))
            {                
                string sql = "Insert into Userreg(UsrId,UsrName,Email,Mobile,Password) values(@usrid,@username,@email,@mobile,@password)";
                cmd = new SqlCommand(sql, con);
                string name = Convert.ToString(Request.Form["firstname"] +" "+ Convert.ToString(Request.Form["lastname"]));
                cmd.Parameters.AddWithValue("@usrid",id);
                cmd.Parameters.AddWithValue("@username",name);               
                cmd.Parameters.AddWithValue("@email", Convert.ToString(Request.Form["email"]));
                cmd.Parameters.AddWithValue("@mobile", Convert.ToString(Request.Form["phone"]));
                cmd.Parameters.AddWithValue("@password", Convert.ToString(Request.Form["Repassword"]));
                cmd.ExecuteNonQuery();               
                ordr++;
                string str = "update Orderno set orderno=@ordr where id=1";
                cm = new SqlCommand(str, con);
                cm.Parameters.AddWithValue("@ordr", ordr);
                cm.ExecuteNonQuery();

                //EMAIL
                MailMessage mailMessage = new MailMessage("ksaakerala@gmail.com", Convert.ToString(Request.Form["email"]));
                mailMessage.Subject = "KSAA";
                mailMessage.Body = "please login to your account by using the id '"+id+"'";
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com",587);
                smtpClient.Credentials = new System.Net.NetworkCredential()
                {
                    UserName = "ksaakerala@gmail.com",
                    Password = "ksaa1234"
                };
                smtpClient.EnableSsl = true;
                smtpClient.Send(mailMessage);


                ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Please logon to your account.The user id is send to your E-mail')</script>");
                Response.Redirect("login.aspx");


            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Passsword does not matching')</script>");
            }
            con.Close();
                      


        }
        public static void SendMail()
        {           

            
        }
     
    }
}