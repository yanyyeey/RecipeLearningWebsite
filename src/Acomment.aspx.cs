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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Clogin.aspx");
            }
            else
            {
                GridView1.DataSourceID = null;
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //delete first table record
            string query = "delete from Comment where CommentId = '" + commentID.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Acomment.aspx");
        }

        protected void commentID_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings
            ["ConnectionString"].ConnectionString);
            con.Open();

            // Display record from Announcement table
            SqlDataAdapter da = new SqlDataAdapter("select * from Comment where CommentID = '" + commentID.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            commentID.Text = dt.Rows[0][0].ToString();
            username.Text = dt.Rows[0][1].ToString();
            commentContent.Text = dt.Rows[0][2].ToString();
            datetime.Text = dt.Rows[0][3].ToString();
            recipeID.Text = dt.Rows[0][4].ToString();
        }
    }
}