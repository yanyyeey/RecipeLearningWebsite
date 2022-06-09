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
    public partial class Mviewprofile : System.Web.UI.Page
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

                // Display record from first table
                SqlDataAdapter da = new SqlDataAdapter("select * from Users where Username = '" + Session["Username"] + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                LabelId.Text = dt.Rows[0][0].ToString();
                LabelUsername_Display.Text = dt.Rows[0][1].ToString();
                LabelMemberName.Text = dt.Rows[0][1].ToString();


                // Display record from second table
                SqlDataAdapter da2 = new SqlDataAdapter("select * from UserDetails where User_id = '" + LabelId.Text + "'", con);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                LabelName_Display.Text = dt2.Rows[0][1].ToString();
                LabelEmail_Display.Text = dt2.Rows[0][2].ToString();
                LabelGender_Display.Text = dt2.Rows[0][3].ToString();
                LabelCountry_Display.Text = dt2.Rows[0][4].ToString();
                ProfilePictureMember.ImageUrl = dt2.Rows[0][5].ToString();
            }
        }

        protected void ButtonEditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mupdateprofile.aspx");
        }
    }
}