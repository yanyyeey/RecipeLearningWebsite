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

namespace Assignment.admin
{
    public partial class Acontact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"] == null)
            {
                Response.Redirect("Clogin.aspx");
            }

        }

        protected void uname_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //Contact table
            SqlDataAdapter da = new SqlDataAdapter("select * from Contact where Name = '" + uname.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ContactID.Text = dt.Rows[0][0].ToString();
            uname.Text = dt.Rows[0][1].ToString();
            email.Text = dt.Rows[0][2].ToString();
            message.Text = dt.Rows[0][3].ToString();
            msgCheck.Text = dt.Rows[0][4].ToString();

        }

        protected void update_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                if (msgCheck.Text != "")
                {
                    // Update Contact Table
                    string query1 = "update Contact set Checked = '" + msgCheck.Text + "' where Name = '" + uname.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.ExecuteNonQuery();

                    con.Close();
                    Response.Redirect("Acontact.aspx");
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //delete first table record
            string query = "delete from Contact where Name = '" + uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Acontact.aspx");
        }
    }
}