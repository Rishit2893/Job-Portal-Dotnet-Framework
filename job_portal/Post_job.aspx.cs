using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace job_portal
{
    public partial class Post_job : System.Web.UI.Page
    {
        SqlDataAdapter adp = null;
        public void category()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "Select * from Category";
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataTextField = "category_name";
            DropDownList1.DataValueField = "category_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("select", "0"));

            con.Close();

        }
        public void area()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "Select * from Area where area.category_id=" + DropDownList1.SelectedValue;
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            DropDownList2.DataSource = ds.Tables[0];
            DropDownList2.DataTextField = "area_name";
            DropDownList2.DataValueField = "area_id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("select", "0"));

            con.Close();
        }
        public void country()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "Select * from Country";
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            DropDownList3.DataSource = ds.Tables[0];
            DropDownList3.DataTextField = "country_name";
            DropDownList3.DataValueField = "country_id";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("select", "0"));

            con.Close();
        }
        public void state()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "Select * from State where state.country_id=" + DropDownList3.SelectedValue;
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            DropDownList4.DataSource = ds.Tables[0];
            DropDownList4.DataTextField = "state_name";
            DropDownList4.DataValueField = "state_id";
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, new ListItem("select", "0"));

            con.Close();
        }
        public void city()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "Select * from City where city.state_id=" + DropDownList4.SelectedValue;
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            DropDownList5.DataSource = ds.Tables[0];
            DropDownList5.DataTextField = "city_name";
            DropDownList5.DataValueField = "city_id";
            DropDownList5.DataBind();
            DropDownList5.Items.Insert(0, new ListItem("select", "0"));

            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["User"].ToString() == string.Empty || Session["User"].ToString() == null)
            {
                Response.Redirect("~/JobSeekerLogin.aspx");
            }
            if (!IsPostBack)
            {
                country();
                DropDownList4.Items.Insert(0, new ListItem("select", "0"));
                DropDownList5.Items.Insert(0, new ListItem("select", "0"));

                category();
                DropDownList2.Items.Insert(0, new ListItem("select", "0"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string unm = null;
            unm = Session["User"].ToString();
            int comid = getcomid(unm,con);
            string exprnc = null;
            exprnc = DropDownList6.Text + "Years And" + DropDownList7.Text + "Months";
            string query = "insert into job_post(company_id,job_title,area_id,city_id,post,no_vacancy,start_date,end_date,expr_req,skills_req,edu_req,basic_req,salary_min,salary_max) Values('"+comid+"','" + TextBox1.Text + "','" + DropDownList2.Text + "','" + DropDownList5.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + exprnc + "','" + TextBox3.Text + "','" + DropDownList10.Text + "','" + TextBox4.Text + "','" + DropDownList8.Text + "','" + DropDownList9.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Connection = con;
            int i=cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script> alert('Record added successfuly') </script>");
            }
            con.Close();
        }
        public int getcomid(string unm, SqlConnection con)
        {
            int c;
            adp = new SqlDataAdapter("Select company_id From Company where username='" + unm + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            c = Convert.ToInt32(ds.Tables[0].Rows[0]["company_id"].ToString());
            return c;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            area();

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            state();
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            city();
        }
    }
}