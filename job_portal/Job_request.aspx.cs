using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal
{
    public partial class Job_request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Rname = Session["user"].ToString();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            SqlCommand cmd = new SqlCommand("Select first_name,last_name,contact_no,email_id,graduation,perc_grad,expr_yrs,expr_mth,skills,job_title,post,skills_req from Company,Candidate_basic,candidate_education,candidate_professional,job_applied,job_post where Company.username='" + Rname + "' and Company.company_id=Job_post.company_id and Job_post.job_post_id=Job_applied.job_post_id and job_applied.candidate_id=Candidate_basic.candidate_id and Candidate_basic.candidate_id=Candidate_education.candidate_id and Candidate_basic.candidate_id=Candidate_professional.candidate_id", con);
            
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource=reader;
            GridView1.DataBind();
        }
    }
}