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
                TextBoxPassword.Text = dt.Rows[0][2].ToString();

                // Display record from second table
                SqlDataAdapter da2 = new SqlDataAdapter("select * from UserDetails where User_id = '" + LabelId.Text + "'", con);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                TextBoxName.Text = dt2.Rows[0][1].ToString();
                TextBoxEmail.Text = dt2.Rows[0][2].ToString();
            }
        }

        protected void TextBoxName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonMale_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxPassword_TextChanged1(object sender, EventArgs e)
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
                ["MyDB"].ConnectionString);
                con.Open();

                // Update First Table
                string query = "update Users set User_id = '" + LabelId.Text + "', Password = '" + TextBoxPassword.Text + "', Usertype = '" + LabelUsertype.Text + "' where Username = '" + LabelUsername_Display.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                // Update Second Table
                string query2 = "update UserDetails set Name = '" + TextBoxName.Text + "', Email = '" + TextBoxEmail.Text + "' where User_id = '" + LabelId.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.ExecuteNonQuery();
                
                Response.Redirect("Aprofile.aspx");
            }
            catch
            {
                this.LabelErrorMessage.ForeColor = System.Drawing.Color.Red;
                this.LabelErrorMessage.Text = "Failed to Update Changes!";
                this.LabelErrorMessage.Visible = true;
                return;
            }
        }
    }
}