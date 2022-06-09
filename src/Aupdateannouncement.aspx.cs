using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Clogin.aspx");
            }
        }

        protected void AnnouncementTitle_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings
            ["ConnectionString"].ConnectionString);
            con.Open();

            // Display record from Announcement table
            SqlDataAdapter da = new SqlDataAdapter("select * from Announcement where Annc_title = '" + AnnouncementTitle.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            LabelAnnouncementId_Display.Text = dt.Rows[0][0].ToString();
            LabelDateTime_Display.Text = dt.Rows[0][2].ToString();
            TextBoxAnnouncementContent.Text = dt.Rows[0][3].ToString();
        }

        protected void TextBoxAnnouncementText_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString);
                con.Open();

                string query1 = "select count(*) from Announcement where Annc_title = '" + TextBoxNewAnnouncementTitle.Text + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                int check1 = Convert.ToInt32(cmd1.ExecuteScalar().ToString());

                

                if (check1 > 0)
                {
                    AnnouncementExist.Visible = true;
                    AnnouncementExist.ForeColor = System.Drawing.Color.Red;
                    AnnouncementExist.Text = "Announcement Title Exist. Please use Another Title.";
                }
                else if (TextBoxAnnouncementContent.Text.Length < 10)
                {
                    LabelMessageLengthError.Visible = true;
                    LabelMessageLengthError.ForeColor = System.Drawing.Color.Red;
                    LabelMessageLengthError.Text = "Message must be more than 10 characters.";
                }
                else if (TextBoxAnnouncementContent.Text != "") {

                    if (TextBoxNewAnnouncementTitle.Text == "")
                    {
                        TextBoxNewAnnouncementTitle.Text = AnnouncementTitle.Text;
                    }

                    LabelDateTime_Display.Text = DateTime.Now.ToString();

                    // Update Announcement Table
                    string query = "update Announcement set Annc_title = '" + TextBoxNewAnnouncementTitle.Text + "', Annc_text = '" + TextBoxAnnouncementContent.Text + "', Annc_datetime = '" + LabelDateTime_Display.Text + "' where Annc_Id = '" + LabelAnnouncementId_Display.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Aupdateannouncement.aspx");
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

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //delete first table record
            string query = "delete from Announcement where Annc_title = '" + AnnouncementTitle.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Aupdateannouncement.aspx");
        }
    }
}