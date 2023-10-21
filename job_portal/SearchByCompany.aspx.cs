using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal
{
    public partial class SearchByCompany : System.Web.UI.Page
    {
        SqlDataAdapter adp = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Company();
            }
        }
        public void Company()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "select Distinct company_name,c1.company_id From Job_post j1, Company c1 where j1.company_id=c1.company_id";
            adp=new SqlDataAdapter(query,con);
            DataSet ds=new DataSet();
            adp.Fill(ds);

            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataTextField = "company_name";
            DropDownList1.DataValueField = "company_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("select", "0"));
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            int cid = 0;
            cid = Convert.ToInt32(Session["Cid"].ToString());

            int rws = 0;
            rws = Convert.ToInt32(GridView1.Rows.Count.ToString());
            for (int i = 0; i < rws; i++)
            {
                CheckBox chk1 = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                CheckBox chk2 = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");

                if (chk1.Checked == true)
                {
                    String a = GridView1.Rows[i].Cells[2].Text;
                    string query = "insert into Saved_jobs(candidate_id,job_post_id) Values(" + cid + "," + a + ")";
                    cmd = new SqlCommand(query, con);
                    cmd.Connection = con;
                    int j = cmd.ExecuteNonQuery();
                    if (j > 0)
                    {
                        Response.Write("<script> alert('Record added successfuly') </script>");
                    }
                    con.Close();
                }
                else if(chk2.Checked == true)
                {
                    String a = GridView1.Rows[i].Cells[2].Text;
                    string query = "insert into Job_applied(candidate_id,job_post_id,applied_date) Values(" + cid + "," + a + ",GetDate())";
                    cmd = new SqlCommand(query, con);
                    cmd.Connection = con;
                    int j = cmd.ExecuteNonQuery();
                    if (j > 0)
                    {
                        Response.Write("<script> alert('Record added successfuly') </script>");
                    }
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "Select job_post_id,company_name,job_title,category_name,area_name,country_name,state_name,city_name,post,no_vacancy,start_date,end_date,expr_req,skills_req,edu_req,basic_req,salary_min,salary_max from job_post,Area,Category,City,State,Country,Company where job_post.area_id=area.area_id and Area.category_id=Category.category_id and job_post.city_id=City.city_id and state.state_id=city.state_id and country.country_id=State.country_id and job_post.company_id=Company.Company_id and job_post.company_id=" + DropDownList1.SelectedValue;
            adp = new SqlDataAdapter(query, con);
            DataSet ds= new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}