using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace job_portal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int RowCount;
            string UserName = null;
            string PassWord = null;
            SqlConnection con= new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * From Login where username=@username and password=@password",con);
            cmd.Parameters.AddWithValue("@username", user_text.Text);
            cmd.Parameters.AddWithValue("@password", pass_text.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                UserName = dt.Rows[i]["username"].ToString();
                PassWord = dt.Rows[i]["password"].ToString();
                if (UserName == user_text.Text && PassWord == pass_text.Text)
                {
                    
                    Session["User"] = UserName;
                    if (dt.Rows[i]["role"].ToString() == "admin")
                    {
                        Response.Redirect("~/Admin.aspx");
                    }
                    else if (dt.Rows[i]["role"].ToString() == "recruiter")
                    {
                        Response.Redirect("~/Recruiter_profile.aspx");
                    }
                    else if (dt.Rows[i]["role"].ToString() == "jobseeker")
                    {
                        Response.Redirect("~/Default.aspx");
                    }
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid UserName or Password! Please Try Again... ";
                    Label1.ForeColor = System.Drawing.Color.Red;

                }
            }
        }
    }
}