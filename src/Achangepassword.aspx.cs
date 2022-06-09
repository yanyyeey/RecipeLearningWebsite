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
    public partial class Achangepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Clogin.aspx");
            }
            else if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString);
                con.Open();

                // Display record from first table
                SqlDataAdapter da = new SqlDataAdapter("select * from Users where Username = '" + Session["Username"] + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                LabelId.Text = dt.Rows[0][0].ToString();
                LabelOldPasswordCheck.Text = dt.Rows[0][2].ToString();
            }
        }

        protected void ButtonChangePassword_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString);
                con.Open();

                if (TextBoxOldPassword.Text != LabelOldPasswordCheck.Text)
                {
                    LabelValidatorOldPassword.Visible = true;
                    LabelValidatorOldPassword.ForeColor = System.Drawing.Color.Red;
                    LabelValidatorOldPassword.Text = "Old Password is Incorrect.";
                }
                else if (TextBoxNewPassword.Text.Length < 8 || TextBoxNewPassword.Text.Length > 16)
                {
                    LabelValidatorOldPassword.Visible = false;

                    LabelPasswordLengthError.Visible = true;
                    LabelPasswordLengthError.ForeColor = System.Drawing.Color.Red;
                    LabelPasswordLengthError.Text = "Password must be between 8 and 16 characters.";
                }
                else if (TextBoxConfirmPassword.Text != TextBoxNewPassword.Text)
                {
                    LabelValidatorOldPassword.Visible = false;
                    LabelPasswordLengthError.Visible = false;

                    LabelPasswordMatchError.Visible = true;
                    LabelPasswordMatchError.ForeColor = System.Drawing.Color.Red;
                    LabelPasswordMatchError.Text = "Password Does Not Match!";
                }
                else if (TextBoxNewPassword.Text == TextBoxConfirmPassword.Text)
                {
                    // Update First Table
                    string query = "update Users set Password = '" + TextBoxNewPassword.Text + "' where User_id = '" + LabelId.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Aviewprofile.aspx");
                }
            }
            catch (Exception ex)
            {
                this.LabelErrorMessage.ForeColor = System.Drawing.Color.Red;
                this.LabelErrorMessage.Text = "Failed to Update Password!" + ex.ToString();
                this.LabelErrorMessage.Visible = true;
                return;
            }
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Aviewprofile.aspx");
        }

        protected void TextBoxOldPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxNewPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxConfirmPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}