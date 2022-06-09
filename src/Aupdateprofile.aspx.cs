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
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Clogin.aspx");
            }

            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString);
                con.Open();

                // Display record from first table
                SqlDataAdapter da = new SqlDataAdapter("select * from Users where Username = '" + Session["Username"] + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                LabelId.Text = dt.Rows[0][0].ToString();
                LabelUsername_Display.Text = dt.Rows[0][1].ToString();
                LabelAdminName.Text = dt.Rows[0][1].ToString();

                // Display record from second table
                SqlDataAdapter da2 = new SqlDataAdapter("select * from UserDetails where User_id = '" + LabelId.Text + "'", con);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                TextBoxName.Text = dt2.Rows[0][1].ToString();
                TextBoxEmail.Text = dt2.Rows[0][2].ToString();
                DropDownGender.SelectedItem.Text = dt2.Rows[0][3].ToString();
                TextBoxCountry.Text = dt2.Rows[0][4].ToString();
            }
        }

        protected void TextBoxName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxCountry_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSaveChanges_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString);
                con.Open();

                string query1 = "select count(*) from UserDetails where Email = '" + TextBoxEmail.Text + "' and User_id != '" + LabelId.Text + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                int check1 = Convert.ToInt32(cmd1.ExecuteScalar().ToString());

                if (check1 > 0)
                {
                    LabelEmailTakenError.Visible = true;
                    LabelEmailTakenError.ForeColor = System.Drawing.Color.Red;
                    LabelEmailTakenError.Text = "Email has been taken!";
                }
                else if (check1 == 0 && LabelId.Text != "" && TextBoxName.Text != "" && TextBoxEmail.Text != ""
                    && RegularExpressionValidatorEmail.IsValid && TextBoxCountry.Text != "")
                {
                    LabelEmailTakenError.Visible = false;

                    // Update First Table
                    string query = "update Users set User_id = '" + LabelId.Text + "', Usertype = '" + LabelUsertype.Text + "' where Username = '" + LabelUsername_Display.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    // Update Second Table
                    string query2 = "update UserDetails set Name = '" + TextBoxName.Text + "', Gender = '" + DropDownGender.SelectedItem.Text + "', Country = '" + TextBoxCountry.Text + "', Email = '" + TextBoxEmail.Text + "' where User_id = '" + LabelId.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                    cmd2.ExecuteNonQuery();

                    Response.Redirect("Aviewprofile.aspx");
                }
            }
            catch (Exception ex)
            {
                this.LabelErrorMessage.ForeColor = System.Drawing.Color.Red;
                this.LabelErrorMessage.Text = "Failed to Update Changes!" + ex.ToString();
                this.LabelErrorMessage.Visible = true;
                return;
            }
        }

        protected void DropDownListGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem li = new ListItem();
            li.Text = "Female";
            li.Value = "Female";
            DropDownGender.Items.Add(li);
        }

        protected void ButtonChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("Achangepassword.aspx");        
        }
    }
}