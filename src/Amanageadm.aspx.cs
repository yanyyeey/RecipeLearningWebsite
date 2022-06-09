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
    public partial class Amanageadm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            if (!Page.IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Users where Usertype = '" + Usertype.Text + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Uname.DataSource = dt;
                Uname.DataTextField = "Username";
                DataBind();
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //update first table
            string query = "update Users set User_id ='" + UserId.Text + "',Password ='" + Pwd.Text + "',Usertype = '"
                + Usertype.Text + "'where Username = '" + Uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            //update second table
            string query2 = "update UserDetails set Name ='" + Fullname.Text + "', Email = '" + Email.Text + "',Gender = '"
                + Gender.Text + "',Country ='" + Country.Text + "'where User_id = '" + UserId.Text + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Amanageadm.aspx");
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

        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem li = new ListItem();
            li.Text = "F";
            li.Value = "F";
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
            Response.Redirect("Amanageadm.aspx");
        }
    }
}