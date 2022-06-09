using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Assignment
{
    public partial class Clogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CheckBoxPassword.Checked == true)
            {
                TextBoxPassword.TextMode = TextBoxMode.SingleLine;
                TextBoxPassword.Attributes["type"] = "text";
            }
            else if (CheckBoxPassword.Checked == false)
            {
                TextBoxPassword.Attributes["type"] = "password";
            }
        }

        protected void TextBoxUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from Users where Username = '"
                + TextBoxUsername.Text + "' and Password = '" + TextBoxPassword.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select Usertype from Users where Username = '" +
                    TextBoxUsername.Text + "'", con);
                string type = cmdType.ExecuteScalar().ToString().Replace(" ", "");
                string uname = TextBoxUsername.Text;
                Session["Usertype"] = type;
                Session["Username"] = uname;

                if (type == "admin")
                {
                    Session["utype"] = "admin";
                    Response.Redirect("Aviewprofile.aspx");
                }
                else if (type == "member")
                {
                    Session["utype"] = "member";
                    Response.Redirect("Mhome.aspx");
                }
            }
            else
            {
                this.LabelFeedback.ForeColor = System.Drawing.Color.Red;
                this.LabelFeedback.Text = "Login Failed!";
                this.LabelFeedback.Visible = true;
                return;
            }
            con.Close();
        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mregister.aspx");
        }

        protected void CheckBox2_CheckedChanged1(object sender, EventArgs e)
        {

        }
    }
}