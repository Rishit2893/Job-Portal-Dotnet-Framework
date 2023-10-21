using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace job_portal
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["user"].ToString();
            string Rname = Session["user"].ToString();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select * from Company where username='" + Rname + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
        }
    }
}