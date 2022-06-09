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

namespace Assignment.admin
{
    public partial class AaddAnnouncement : System.Web.UI.Page
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

                //for new table with zero record
                string query1 = "select count (*) from Announcement";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                int record = Convert.ToInt32(cmd1.ExecuteScalar().ToString().Replace(" ", ""));
                if (record < 1)
                {
                    LabelAnnouncementId_Display.Text = "1";
                }
                else
                {
                    //for table with record(s)
                    string query1a = "select Top 1 Annc_Id from Announcement order by Annc_Id desc";
                    SqlCommand cmd1a = new SqlCommand(query1a, con);
                    record = Convert.ToInt32(cmd1a.ExecuteScalar().ToString().Replace(" ", "")) + 1;
                    LabelAnnouncementId_Display.Text = record.ToString();
                }

                LabelDateTime_Display.Text = DateTime.Now.ToString();
            }
        }

        protected void TextBoxAnnouncementTitle_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxAnnouncementText_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonAddAnnouncement_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query1 = "select count(*) from Announcement where Annc_title = '" + TextBoxAnnouncementTitle.Text + "'";
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
                else if (TextBoxAnnouncementTitle.Text != "" && TextBoxAnnouncementContent.Text != "")
                {
                    //create record in a table called Accouncement
                    string query2 = "insert into Announcement (Annc_id, Annc_title, Annc_datetime, Annc_text) values (@id, @title, @datetime, @text) ";
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                    cmd2.Parameters.AddWithValue("@id", LabelAnnouncementId_Display.Text);
                    cmd2.Parameters.AddWithValue("@title", TextBoxAnnouncementTitle.Text);
                    cmd2.Parameters.AddWithValue("@datetime", LabelDateTime_Display.Text);
                    cmd2.Parameters.AddWithValue("@text", TextBoxAnnouncementContent.Text);
                    cmd2.ExecuteNonQuery();

                    con.Close();
                    Response.Redirect("AaddAnnouncement.aspx");
                }
            }
            catch (Exception ex)
            {
                LabelErrorMessage.Visible = true;
                LabelErrorMessage.ForeColor = System.Drawing.Color.Red;
                LabelErrorMessage.Text = "Add Announcement Failed!" + ex.ToString();
                return;
            }

        }
    }
}