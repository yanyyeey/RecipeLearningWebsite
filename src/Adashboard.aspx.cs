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
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace Assignment
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Clogin.aspx");
            }

            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("select * from Users where Usertype = '" + Usertype.Text + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Uname.DataSource = dt;
                Uname.DataTextField = "Username";
                DataBind();
            }
        }


        protected void Uname_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //first table
            SqlDataAdapter da = new SqlDataAdapter("select * from Users where Username = '" + Uname.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            UserId.Text = dt.Rows[0][0].ToString();
            Uname.Text = dt.Rows[0][1].ToString();
            Pwd.Text = dt.Rows[0][2].ToString();

            //second table
            SqlDataAdapter da2 = new SqlDataAdapter("select * from UserDetails where User_id = '" + UserId.Text + "'", con);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            Fullname.Text = dt2.Rows[0][1].ToString();
            Email.Text = dt2.Rows[0][2].ToString();
            Gender.SelectedItem.Text = dt2.Rows[0][3].ToString();
            Country.Text = dt2.Rows[0][4].ToString();
        }


        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query1 = "select count(*) from UserDetails where Email = '" + Email.Text + "' and User_id != '" + UserId.Text + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                int check1 = Convert.ToInt32(cmd1.ExecuteScalar().ToString());

                if (check1 > 0)
                {
                    LabelEmailTakenError.Visible = true;
                    LabelEmailTakenError.ForeColor = System.Drawing.Color.Red;
                    LabelEmailTakenError.Text = "Email has been taken!";
                }
                else if (check1 == 0 && UserId.Text != "" && Fullname.Text != "" && Email.Text != ""
                    && RegularExpressionValidatorEmail.IsValid && Country.Text != "")
                {
                    LabelEmailTakenError.Visible = false;

                    // Update First Table
                    string query = "update Users set User_id = '" + UserId.Text + "', Usertype = '" + Usertype.Text + "' where Username = '" + Uname.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    // Update Second Table
                    string query2 = "update UserDetails set Name = '" + Fullname.Text + "', Gender = '" + Gender.SelectedItem.Text + "', Country = '" + Country.Text + "', Email = '" + Email.Text + "' where User_id = '" + UserId.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Adashboard.aspx");
                }
            }
            catch (Exception ex)
            {
                this.errMsg.ForeColor = System.Drawing.Color.Red;
                this.errMsg.Text = "Failed to Update Changes!" + ex.ToString();
                this.errMsg.Visible = true;
                return;

                
            }
        }
        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem li = new ListItem();
            li.Text = "Female";
            li.Value = "Female";
            Gender.Items.Add(li);
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //delete first table record
            string query = "delete from Users where Username = '" + Uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            //delete second table record
            string query2 = "delete from UserDetails where User_id = '" + UserId.Text + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Adashboard.aspx");
        }
    }
}