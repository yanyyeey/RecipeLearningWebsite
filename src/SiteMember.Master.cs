using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class SiteMember : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
                Button1.Text = "LOGOUT";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Session.Abandon();
                Response.Redirect("Mhome.aspx");
            }
            else
            {
                Response.Redirect("Clogin.aspx");
            }
        }

    }
}