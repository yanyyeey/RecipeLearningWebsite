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

namespace Assignment.admin
{
    public partial class Aregister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Clogin.aspx");
            }
            else if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                //for new table with zero record
                string query1 = "select count (*) from Users";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                int record = Convert.ToInt32(cmd1.ExecuteScalar().ToString().Replace(" ", ""));
                if (record < 1)
                {
                    LabelId.Text = "1";
                }
                else
                {
                    //for table with record(s)
                    string query1a = "select Top 1 User_id from Users order by User_id desc";
                    SqlCommand cmd1a = new SqlCommand(query1a, con);
                    record = Convert.ToInt32(cmd1a.ExecuteScalar().ToString().Replace(" ", "")) + 1;
                    LabelId.Text = record.ToString();
                }
            }
            if (CheckBoxPassword.Checked == true && CheckBoxConfirmPassword.Checked == true)
            {
                TextBoxPassword.TextMode = TextBoxMode.SingleLine;
                TextBoxPassword.Attributes["type"] = "text";
                TextBoxConfirmPassword.TextMode = TextBoxMode.SingleLine;
                TextBoxConfirmPassword.Attributes["type"] = "text";
            }
            else if (CheckBoxPassword.Checked == false && CheckBoxConfirmPassword.Checked == true)
            {
                TextBoxPassword.Attributes["type"] = "password";
                TextBoxConfirmPassword.TextMode = TextBoxMode.SingleLine;
                TextBoxConfirmPassword.Attributes["type"] = "text";
            }
            else if (CheckBoxPassword.Checked == true && CheckBoxConfirmPassword.Checked == false)
            {
                TextBoxPassword.TextMode = TextBoxMode.SingleLine;
                TextBoxPassword.Attributes["type"] = "text";
                TextBoxConfirmPassword.Attributes["type"] = "password";
            }
            else if (CheckBoxPassword.Checked == false && CheckBoxConfirmPassword.Checked == false)
            {
                TextBoxConfirmPassword.Attributes["type"] = "password";
                TextBoxPassword.Attributes["type"] = "password";
            }
        }
        protected void TextBoxUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxConfirmPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonAddAdmin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query1 = "select count(*) from Users where Username = '" + TextBoxUsername.Text + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                string query2 = "select count(*) from UserDetails where Email = '" + TextBoxEmail.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);

                int check1 = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
                int check2 = Convert.ToInt32(cmd2.ExecuteScalar().ToString());

                if (check1 > 0)
                {
                    LabelUsernameTakenError.Visible = true;
                    LabelUsernameTakenError.ForeColor = System.Drawing.Color.Red;
                    LabelUsernameTakenError.Text = "Username has been taken!";
                }
                else if (check2 > 0)
                {
                    LabelUsernameTakenError.Visible = false;

                    LabelEmailTakenError.Visible = true;
                    LabelEmailTakenError.ForeColor = System.Drawing.Color.Red;
                    LabelEmailTakenError.Text = "Email has been taken!";
                }
                else if (TextBoxUsername.Text.Length < 8 || TextBoxUsername.Text.Length > 16)
                {
                    LabelUsernameTakenError.Visible = false;
                    LabelEmailTakenError.Visible = false;

                    LabelUsernameLengthError.Visible = true;
                    LabelUsernameLengthError.ForeColor = System.Drawing.Color.Red;
                    LabelUsernameLengthError.Text = "Username must be between 8 and 16 characters.";
                }
                else if (TextBoxPassword.Text.Length < 8 || TextBoxPassword.Text.Length > 16)
                {
                    LabelUsernameTakenError.Visible = false;
                    LabelEmailTakenError.Visible = false;
                    LabelUsernameLengthError.Visible = false;

                    LabelPasswordLengthError.Visible = true;
                    LabelPasswordLengthError.ForeColor = System.Drawing.Color.Red;
                    LabelPasswordLengthError.Text = "Password must be between 8 and 16 characters.";
                }
                else if (TextBoxPassword.Text != TextBoxConfirmPassword.Text)
                {
                    LabelUsernameTakenError.Visible = false;
                    LabelEmailTakenError.Visible = false;
                    LabelUsernameLengthError.Visible = false;
                    LabelPasswordLengthError.Visible = false;

                    LabelPasswordMatchError.Visible = true;
                    LabelPasswordMatchError.ForeColor = System.Drawing.Color.Red;
                    LabelPasswordMatchError.Text = "Password Does Not Match!";
                }
                else if (check1 == 0 && check2 == 0 && LabelId.Text != "" && TextBoxName.Text != "" && TextBoxUsername.Text.Length > 8 && TextBoxUsername.Text.Length < 16
                && TextBoxEmail.Text != "" && RegularExpressionValidatorEmail.IsValid && TextBoxCountry.Text != "" && TextBoxPassword.Text.Length > 8
                && TextBoxPassword.Text.Length < 16 && TextBoxPassword.Text == TextBoxConfirmPassword.Text)
                {
                    LabelUsernameTakenError.Visible = false;
                    LabelEmailTakenError.Visible = false;
                    LabelUsernameLengthError.Visible = false;
                    LabelPasswordLengthError.Visible = false;
                    LabelPasswordMatchError.Visible = false;

                    //create record in a table called Users
                    string query3 = "insert into Users (User_id, Username, Password, Usertype) values (@id, @username, @password, @usertype) ";
                    SqlCommand cmd3 = new SqlCommand(query3, con);
                    cmd3.Parameters.AddWithValue("@id", LabelId.Text);
                    cmd3.Parameters.AddWithValue("@username", TextBoxUsername.Text);
                    cmd3.Parameters.AddWithValue("@password", TextBoxPassword.Text);
                    cmd3.Parameters.AddWithValue("@usertype", LabelUserType.Text);
                    cmd3.ExecuteNonQuery();

                    //create record in a table called UserDetails
                    string query4 = "insert into UserDetails (User_id, Name, Email, Gender, Country) values (@id, @fullName, @email, @gender, @country) ";
                    SqlCommand cmd4 = new SqlCommand(query4, con);
                    cmd4.Parameters.AddWithValue("@id", LabelId.Text);
                    cmd4.Parameters.AddWithValue("@fullname", TextBoxName.Text);
                    cmd4.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                    cmd4.Parameters.AddWithValue("@gender", DropDownGender.SelectedItem.ToString());
                    cmd4.Parameters.AddWithValue("@country", TextBoxCountry.Text);
                    cmd4.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Clogin.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                LabelErrorMessage.Visible = true;
                LabelErrorMessage.ForeColor = System.Drawing.Color.Red;
                LabelErrorMessage.Text = "Registration not sucessful!" + ex.ToString();
                return;
            }
        }

        protected void DropDownGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem li = new ListItem();
            li.Text = "Female";
            li.Value = "Female";
            DropDownGender.Items.Add(li);
        }

        protected void TextBoxCountry_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxPassword_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxConfirmPassword_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}