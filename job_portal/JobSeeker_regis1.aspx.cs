using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.ComponentModel;

namespace job_portal
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                country();
                DropDownList2.Items.Insert(0, new ListItem("Select", "0"));
                DropDownList3.Items.Insert(0, new ListItem("Select", "0"));
                category();
                DropDownList10.Items.Insert(0, new ListItem("Select", "0"));

            }
        }
        public void country()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            adp = new SqlDataAdapter("select * from Country",con);
            DataSet ds= new DataSet();
            adp.Fill(ds);
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataTextField = "country_name";
            DropDownList1.DataValueField = "country_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Select", "0"));
            con.Close();


        }
        public void category()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            adp = new SqlDataAdapter("select * from Category", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DropDownList10.DataSource = ds.Tables[0];
            DropDownList10.DataTextField = "category_name";
            DropDownList10.DataValueField = "category_id";
            DropDownList10.DataBind();
            DropDownList10.Items.Insert(0, new ListItem("Select", "0"));
            con.Close();
        }
        public void state()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "select * from State where State.country_id=" + DropDownList1.SelectedValue;
            adp = new SqlDataAdapter(query,con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DropDownList2.DataSource = ds.Tables[0];
            DropDownList2.DataTextField = "state_name";
            DropDownList2.DataValueField = "state_id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("Select", "0"));
            con.Close();
        }
        public void city()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "select * from City where City.state_id=" + DropDownList2.SelectedValue;
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DropDownList3.DataSource = ds.Tables[0];
            DropDownList3.DataTextField = "city_name";
            DropDownList3.DataValueField = "city_id";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("Select", "0"));
            con.Close();
        }
        public void area()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
            con.Open();
            string query = "select * from Area where Area.category_id=" + DropDownList10.SelectedValue;
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DropDownList11.DataSource = ds.Tables[0];
            DropDownList11.DataTextField = "area_name";
            DropDownList11.DataValueField = "area_id";
            DropDownList11.DataBind();
            DropDownList11.Items.Insert(0, new ListItem("Select", "0"));
            con.Close();
        }

        public int getcid(string unm, SqlConnection con)
        {
            int c;
            adp = new SqlDataAdapter("Select candidate_id From Candidate_basic where username='" + unm + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            c = Convert.ToInt32(ds.Tables[0].Rows[0]["candidate_id"].ToString());
            return c;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
                SqlCommand cmd1 = null;
                SqlCommand cmd2 = null;
                SqlCommand cmd3 = null;
                SqlCommand cmd4 = null;
                SqlCommand cmd5 = null;

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString;
                string gndr = null;
                string email = null;
                if (RadioButton1.Checked == true)
                {
                    gndr = RadioButton1.Text;
                }
                else
                {
                    gndr = RadioButton2.Text;
                }
                email = TextBox8.Text;
                cmd1 = new SqlCommand("insert into Login(username,password,role) values('" + user_text.Text + "','" + pass_text.Text + "','jobseeker')");
                con.Open();
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();

                cmd2 = new SqlCommand("insert into Candidate_basic(username,profile_date,first_name,middle_name,last_name,candidate_addrs,city_id,gender,dob,contact_no,email_id) values('" + user_text.Text + "','" + TextBox9.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + DropDownList3.SelectedValue + "','" + gndr + "','" + TextBox5.Text + "','" + TextBox7.Text + "','" + email + "')", con);
                cmd2.Connection = con;
                cmd2.ExecuteNonQuery();

            string unm = null;
            unm = user_text.Text;
            int c = getcid(unm, con);

            string slr = null;
            slr = DropDownList6.SelectedValue + "Lacs" + DropDownList14.SelectedValue + "Thousand Rupees";
            cmd4 = new SqlCommand("Insert into Candidate_professional(candidate_id,area_id,expr_yrs,expr_mth,salary,industry,ind_role,skills) values(" + c + ",'" + DropDownList11.SelectedValue + "','" + DropDownList12.Text + "','" + DropDownList13.SelectedValue + "','" + slr + "','" + TextBox27.Text + "','" + TextBox20.Text + "','" + TextBox22
                .Text + "')", con);
            cmd4.Connection = con;
            cmd4.ExecuteNonQuery();

            

                cmd3 = new SqlCommand("insert into candidate_education(candidate_id,per10,per12,graduation,institute_grad,perc_grad,post_grad,institute_post_grad,perc_post_grad,dr_phd,institute_dr_phd,perc_dr_phd,certification) values(" + c + ",'" + TextBox4.Text + "','" + TextBox10.Text + "','" + DropDownList7.SelectedValue + "','" + TextBox17.Text + "','" + TextBox12.Text + "','" + DropDownList4.SelectedValue + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + DropDownList8.SelectedValue + "','" + TextBox16.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "')", con);
                cmd3.Connection = con;
                cmd3.ExecuteNonQuery();
                
                
                
                string File1 = File_Upload(FileUpload1);

                cmd5 = new SqlCommand("insert into Resume(candidate_id,resume_name,data) values(" + c + ",'" + TextBox28.Text + "','" + File1 + "')", con);
                cmd5.Connection = con;
                cmd5.ExecuteNonQuery();
                con.Close();

                Response.Redirect("~/JobSeekerLogin.aspx");
     
            
        }

        public string File_Upload(System.Web.UI.WebControls.FileUpload fp)
        {
            string filepath, folderpath, savepath, folderpathnew, savepathnew;
            folderpath = System.Web.HttpContext.Current.Server.MapPath("Resumes");
            folderpathnew = "~\\Resumes";
            filepath=Path.GetFileName(fp.PostedFile.FileName);
            savepath = folderpath + "\\" + filepath;
            savepathnew = folderpathnew + "\\" + filepath;
            fp.SaveAs(savepath);
            return (savepathnew);
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            state();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            city();
        }

        protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
        {
            area();
        }
    }
}