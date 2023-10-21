using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            SqlCommand cmd = new SqlCommand("Insert into Company(company_name,username,contact_person,company_contact,company_addrs,company_email,company_details) values('" + TextBox1.Text + "','" + user_text.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox3.Text + "')");
            SqlCommand cmd2 = new SqlCommand("insert into login (username,password,role) values('" + user_text.Text + "','" + pass_text.Text + "','recruiter')", con);
            cmd.Connection = con;
            cmd2.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/RecruiterLogin.aspx");

        }
    }
}