using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace adoptu
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void contact_Click(object sender, EventArgs e)
        {
            Response.Write("<script LANGUAGE='Javascript'>alert('Thanks for your feedback..')</script>");

        }
    }
}