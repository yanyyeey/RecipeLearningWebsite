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
    public partial class AaddRecipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //for new table with zero record
            string query1 = "select count (*) from Recipe";
            SqlCommand cmd1 = new SqlCommand(query1, con);

            int record = Convert.ToInt32(cmd1.ExecuteScalar().ToString().Replace(" ", ""));
            if (record < 1)
            {
                id.Text = "1";
            }
            else
            {
                //for table with record(s)
                string query1a = "select Top 1 Recipe_Id from Recipe order by Recipe_Id desc";
                SqlCommand cmd1a = new SqlCommand(query1a, con);
                record = Convert.ToInt32(cmd1a.ExecuteScalar().ToString().Replace(" ", "")) + 1;
                id.Text = record.ToString();
            }
        }

        protected void AddRecipeBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "select count(*) from Recipe where Recipe_name = '" + recipeName.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);

                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (check > 0)
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Record has been taken!";
                }
                else if (check == 0 && recipeCategory.Text != "" && recipeName.Text != "" && recipeDescription.Text != "" && recipeDuration.Text != ""
                && recipeServings.Text != "" && recipeIngredients.Text != "" && recipeSteps.Text != "" && recipeDiet.Text != "")
                {


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

                    //------------Create a recipe record in a Recipe table--------------------------

                    //create the string for video link
                    String link = "<embed width = \"700\" height = \"500\" src = \"https://www.youtube.com/embed/" + recipeVideo.Text + "\" frameborder=\" 0 \" allowfullscreen></embed>";

                    //Save record query
                    string query1 = "insert into Recipe (Recipe_Id, Category, Recipe_name, Datetime, Description, Duration, Servings, Ingredients, Steps, Diet, Image, Video, RecipeType) " +
                        "values (@recipeId, @category, @recipeName, @datetime, @description, @duration, @servings, @ingredients, @steps, @diet, @image, @video, @recipetype)" ;
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@recipeId", id.Text);
                    cmd1.Parameters.AddWithValue("@category", recipeCategory.Text);
                    cmd1.Parameters.AddWithValue("@recipeName", recipeName.Text);
                    cmd1.Parameters.AddWithValue("@datetime", DateTime.Now);
                    cmd1.Parameters.AddWithValue("@description", recipeDescription.Text);
                    cmd1.Parameters.AddWithValue("@duration", recipeDuration.Text);
                    cmd1.Parameters.AddWithValue("@servings", recipeServings.Text);
                    cmd1.Parameters.AddWithValue("@ingredients", recipeIngredients.Text.Replace(Environment.NewLine, "<br/>"));
                    cmd1.Parameters.AddWithValue("@steps", recipeSteps.Text.Replace(Environment.NewLine, "<br/>"));
                    cmd1.Parameters.AddWithValue("@diet", recipeDiet.Text);
                    cmd1.Parameters.AddWithValue("@image", recipeImage.ImageUrl);
                    cmd1.Parameters.AddWithValue("@video", link);
                    cmd1.Parameters.AddWithValue("@recipetype", recipetype.Text);
                    cmd1.ExecuteNonQuery();
                    Response.Redirect("Arecipe.aspx");

                }
                con.Close();
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Add New Recipe not sucessful!" + ex.ToString();
            }
        }

        
    }
}