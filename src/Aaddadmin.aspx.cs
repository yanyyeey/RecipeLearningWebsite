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
    public partial class Aaddadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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

        protected void AddNewBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "select count(*) from Users where Username = '" + TextBoxUsername.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);

                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (check > 0)
                {
                    LabelErrorMessage.Visible = true;
                    LabelErrorMessage.ForeColor = System.Drawing.Color.Red;
                    LabelErrorMessage.Text = "Record has been taken!";
                }
                else
                {


                    //create record in a table called Users
                    string query1 = "insert into Users (User_id, Username, Password, Usertype) values (@id, @username, @password, @usertype) ";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@id", LabelId.Text);
                    cmd1.Parameters.AddWithValue("@username", LabelErrorMessage.Text);
                    cmd1.Parameters.AddWithValue("@password", Pwd.Text);
                    cmd1.Parameters.AddWithValue("@usertype", LabelUsertype.Text);
                    cmd1.ExecuteNonQuery();


                    //create record in a table called UserDetails
                    string query2 = "insert into UserDetails (User_id, Name, Email, Gender, Country) values (@id, @fullName, @email, @gender, @country) ";
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                    cmd2.Parameters.AddWithValue("@id", LabelId.Text);
                    cmd2.Parameters.AddWithValue("@fullname", TextBoxName.Text);
                    cmd2.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                    cmd2.Parameters.AddWithValue("@gender", Gender.SelectedItem.ToString());
                    cmd2.Parameters.AddWithValue("@country", Country.Text);
                    cmd2.ExecuteNonQuery();

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
                    Response.Redirect("Adashboard.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                LabelErrorMessage.Visible = true;
                LabelErrorMessage.ForeColor = System.Drawing.Color.Red;
                LabelErrorMessage.Text = "Add New Admin not sucessful!" + ex.ToString();
            }
        }
    }
}