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

namespace Assignment
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query1a = "select Top 1 Id from Contact order by Id desc";
            SqlCommand cmd1a = new SqlCommand(query1a, con);

            int record = Convert.ToInt32(cmd1a.ExecuteScalar().ToString().Replace(" ", "")) + 1;
            id.Text = record.ToString();

          
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "select count(*) from Contact where Name ='" + name.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (message.Text.Length < 10)
                {
                    LabelMessageLengthError.Visible = true;
                    LabelMessageLengthError.ForeColor = System.Drawing.Color.Red;
                    LabelMessageLengthError.Text = "Message must be more than 10 characters.";
                }
                else if (check == 0 && id.Text != "" && name.Text != "" && email.Text != ""
                    && RegularExpressionValidatorEmail.IsValid && message.Text != "")
                {
                    string query1 = "insert into Contact (Id, Name, Email, Message, Type) values (@id, @name, @email, @message, @type)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@id", id.Text);
                    cmd1.Parameters.AddWithValue("@Name", name.Text);
                    cmd1.Parameters.AddWithValue("@Email", email.Text);
                    cmd1.Parameters.AddWithValue("@Message", message.Text);
                    cmd1.Parameters.AddWithValue("@type", type.Text);
                    cmd1.ExecuteNonQuery();
                    Response.Redirect("Mcontact.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Failed to make contact!" + ex.ToString();
            }
        }
    }
}