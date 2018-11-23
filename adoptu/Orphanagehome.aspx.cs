using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace adoptu
{
    public partial class Orphanagehome : System.Web.UI.Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Request.QueryString.ToString();
            //Label1.Text = user;
            Session["userid"] = user;
           
        }

        protected void Adopt_Click(object sender, EventArgs e)
        {
            Response.Write("<script LANGUAGE='javascript'>alert(Your are successfully submitted the child details.We will contact you after 2 days.)</script>");

            string sql = "select ";
           
        }
    }
}