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
    public partial class SearchByCategory : System.Web.UI.Page
    {
        SqlDataAdapter adp = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                category();
                DropDownList2.Items.Insert(0, new ListItem("select", "0"));
            }
        }
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query="Select * From job_post where area_id="+DropDownList2.SelectedValue;
            adp= new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
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
                else if (chk2.Checked == true)
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            area();
        }
    }
}