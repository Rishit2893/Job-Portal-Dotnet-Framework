using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace job_portal
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con=null;
        SqlCommand cmd=null;
        SqlDataReader dr=null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool flag = false;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Login ";
            dr = cmd.ExecuteReader();
            string Role = "";
            while (dr.Read())
            {
                string username = dr[0].ToString();
                string password = dr[1].ToString();
                if (user_text.Text == username && pass_text.Text == password)
                {
                    Role = dr[2].ToString();
                    flag = true;
                }

            }
            dr.Close();
            if (flag == false)
            {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Not Authorized";
            }
            if (flag == true)
            {
                if (Role == "admin")
                {
                    Session["User"] = user_text.Text;
                    Label1.Visible = true;
                    Label1.Text = "Authorized";
                    Label1.ForeColor=System.Drawing.Color.Green;
                    Response.Redirect("~/AdminUp.aspx");

                }
            }
            con.Close();
        }
    }
}