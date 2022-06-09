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
    public partial class WebForm17 : System.Web.UI.Page
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

                SqlDataAdapter da = new SqlDataAdapter("select * from Recipe where RecipeType = '" + Recipetype.Text + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                recipeName.DataSource = dt;
                recipeName.DataTextField = "Recipe_name";
                DataBind();
            }

        }

        protected void recipeName_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from Recipe where Recipe_name = '" + recipeName.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            recipeId.Text = dt.Rows[0][0].ToString();
            recipeCategory.Text = dt.Rows[0][1].ToString();
            recipeName.Text = dt.Rows[0][2].ToString();
            recipeDatetime.Text = dt.Rows[0][3].ToString();
            recipeDescription.Text = dt.Rows[0][4].ToString();
            recipeDuration.Text = dt.Rows[0][5].ToString();
            recipeServings.Text = dt.Rows[0][6].ToString();
            recipeIngredients.Text = dt.Rows[0][7].ToString().Replace("<br/>", Environment.NewLine);
            recipeSteps.Text = dt.Rows[0][8].ToString().Replace("<br/>", Environment.NewLine);
            recipeDiet.Text = dt.Rows[0][9].ToString();
            recipeImage.ImageUrl = dt.Rows[0][10].ToString();
            recipeVideo.Text = dt.Rows[0][11].ToString();

        }

        protected void recipeUpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (recipeCategory.Text != "" && recipeDescription.Text != "" && recipeDuration.Text != ""
                && recipeServings.Text != "" && recipeIngredients.Text != "" && recipeSteps.Text != "" && recipeDiet.Text != "")
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();

                    //for file Upload
                    string folderPath = Server.MapPath("~/images/");

                    //Check whether Directory (Folder) exists.
                    if (!Directory.Exists(folderPath))
                    {
                        //If Directory (Folder) does not exists Create it.
                        Directory.CreateDirectory(folderPath);
                    }

                    if (FileUploadImage.FileName != "")
                    {
                        //Save the File to the Directory (Folder);
                        FileUploadImage.SaveAs(folderPath + Path.GetFileName(FileUploadImage.FileName));

                        //Display the Picture in Image control.
                        recipeImage.ImageUrl = "~/images/" + Path.GetFileName(FileUploadImage.FileName);

                    }

                    if (NewRecipeName.Text == "")
                    {

                        NewRecipeName.Text = recipeName.Text;
                    }

                    if (newRecipeVideo.Text == "")
                    {
                        newRecipeVideo.Text = recipeVideo.Text;
                    }
                    else if (newRecipeVideo.Text != "")
                    {
                        //create the string for video link
                        String link = "<embed width = \"700\" height = \"500\" src = \"https://www.youtube.com/embed/" + newRecipeVideo.Text + "\" frameborder=\" 0 \" allowfullscreen></embed>";

                        string query = "update Recipe set Video ='" + link + "' where Recipe_Id = '" + recipeId.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.ExecuteNonQuery();
                       // con.Close();
                       
                    }

                    string query1 = "update Recipe set Recipe_name ='" + NewRecipeName.Text + "',Category ='" + recipeCategory.Text + "',Datetime ='" + DateTime.Now + "',Description ='" + recipeDescription.Text +
                       "',Duration ='" + recipeDuration.Text + "',Servings ='" + recipeServings.Text + "',Ingredients ='" + recipeIngredients.Text.Replace(Environment.NewLine, "<br/>") + "',Steps ='" + recipeSteps.Text.Replace(Environment.NewLine, "<br/>") +
                       "',Diet ='" + recipeDiet.Text + "',Image ='" + recipeImage.ImageUrl + "',RecipeType ='" + Recipetype.Text + "' where Recipe_Id = '" + recipeId.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Arecipe.aspx");

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

        protected void recipeDeleteBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //delete first table record
            string query = "delete from Recipe where Recipe_name = '" + recipeName.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Arecipe.aspx");
        }
    }
}