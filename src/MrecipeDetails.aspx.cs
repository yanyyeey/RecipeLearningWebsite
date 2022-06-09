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
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Grid View

            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource2;
            GridView1.DataBind();
           
            
                
            
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                //for new table with zero record
                string query1 = "select count (*) from Comment";
                SqlCommand cmd1 = new SqlCommand(query1, con);

                int record = Convert.ToInt32(cmd1.ExecuteScalar().ToString().Replace(" ", ""));

                if (record < 1)
                {
                    commentid.Text = "1";
                   
                }
                else
                {
                    //for table with record(s)
                    string query1a = "select Top 1 CommentId from Comment order by CommentId desc";
                    SqlCommand cmd1a = new SqlCommand(query1a, con);
                    record = Convert.ToInt32(cmd1a.ExecuteScalar().ToString().Replace(" ", "")) + 1;
                    commentid.Text = record.ToString();

                }

                RecipeId.Text = Session["recipeid"].ToString();
                if (Session["Username"] != null)
                {
                    username.Text = Session["Username"].ToString();


                }

            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
        }

        protected void comment_Click(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Clogin.aspx");
            }
            

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string query = "select count(*) from Users where Username ='" + Session["Username"] + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (check > 0 && text.Text != "")
                {
                    string query1 = "insert into Comment (CommentId, Username, CommentText, CommentDate, Recipe_Id) values (@commentid, @username, @commenttext, @commentdate, @recipeid)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@commentid", commentid.Text);
                    cmd1.Parameters.AddWithValue("@username", username.Text);
                    cmd1.Parameters.AddWithValue("@commenttext", text.Text);
                    cmd1.Parameters.AddWithValue("@commentdate", DateTime.Now);
                    cmd1.Parameters.AddWithValue("@recipeid", RecipeId.Text);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Redirect("MemberRecipe.aspx");
                    notification.Text = "Comment has been added successfully!";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                notification.Visible = true;
                notification.ForeColor = System.Drawing.Color.Red;
                notification.Text = "Comment Failed." + ex.ToString();
            }
            
        }
    }
}