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
    public partial class Saved_jobs : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
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
                if (chk1.Checked == true)
                {
                    String a = GridView1.Rows[i].Cells[3].Text;
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
            }
    }