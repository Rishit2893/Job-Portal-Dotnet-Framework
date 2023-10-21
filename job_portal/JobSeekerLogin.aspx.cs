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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        SqlDataAdapter adp = null;
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
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Login";
            cmd.Connection = con;
            dr = cmd.ExecuteReader();
            string Role = "";
            while (dr.Read())
            {
                string UserName = dr[0].ToString();
                string password = dr[1].ToString();
                int cid = 0;

                if (user_text.Text == UserName && pass_text.Text == password)
                {
                    Session.Add("JName", UserName);
                    Role = dr[2].ToString();
                    flag = true;

                    cid = getcid(UserName);
                    Session.Add("Cid", cid);

                }
            }
            dr.Close();
            if (flag==false)
            {
                Label1.Visible = true;
                Label1.Text = "Not Authorized";
                Label1.ForeColor= System.Drawing.Color.Red;
            }
            if (flag == true)
            {
                if (Role == "jobseeker")
                {
                    Response.Redirect("~/JobSeekerProfile.aspx");
                }
            }
            con.Close();
        }
        public int getcid(string username)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            int js;
            string query = "Select candidate_id From Candidate_basic where username='" + username + "'";
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            js = Convert.ToInt32(ds.Tables[0].Rows[0]["candidate_id"].ToString());
            return (js);
        }
    }
}