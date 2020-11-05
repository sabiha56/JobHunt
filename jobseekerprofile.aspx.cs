using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace JobHunt
{
    public partial class jobseekerprofile : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["JName"] == null)
            {
                Response.Redirect("~/Jobseeker_login.aspx");
            }


   
            int jobseekerid = Convert.ToInt32(Session["jid"].ToString());
        }
        //protected void Applied_Job(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/appliedjob.aspx");
        //}

        protected void want_a_job_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/wantjob.aspx");
        }


        public List<JobHunt.Models.jobseekerprofile> getWhileLoopDataList()
        {
            string username = Session["JName"].ToString();
            int jobseekerid = Convert.ToInt32(Session["jid"].ToString());

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from jobseekerinfo where jobseeker_id='" + jobseekerid + "'");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();

            List<JobHunt.Models.jobseekerprofile> data = new List<Models.jobseekerprofile>();
            while (reader.Read())
            {

                int jid = reader.GetInt32(0);
                string jname = reader.GetString(1);
                string user = reader.GetString(2);
                string gender = reader.GetString(3);
                string education = reader.GetString(4);
                int no = reader.GetInt32(5);
                string address = reader.GetString(6);
                string email = reader.GetString(7);
                string intrst = reader.GetString(8);
                JobHunt.Models.jobseekerprofile profile = new Models.jobseekerprofile();

                profile.jobseeker_id = jid;
                profile.jobseeker_name= jname;
                profile.username = user;
                profile.gender = gender;
                profile.education = education;
                profile.contactno = no;
                profile.addres = address;
                profile.email = email;
                profile.interest = intrst;


                data.Add(profile);

            }
            con.Close();
            return data;
        }


        protected void update(object sender, EventArgs e)
        {



            if (TextBox1.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "")
            {

                Response.Write("<script>alert('Please fill up all the fields');</script>");
            }

            else
            {
                try
                {
                    string username = Session["JName"].ToString();
                    int jobseekerid = Convert.ToInt32(Session["jid"].ToString());

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                    con.Open();

                    SqlCommand cmd1 = new SqlCommand(" UPDATE jobseekerinfo SET jobseeker_name = '"+TextBox1.Text+ "', education = '" + TextBox3.Text + "', contactno = "+TextBox4.Text+", addres = '" + TextBox5.Text + "', email = '" + TextBox6.Text + "', interest = '" + TextBox7.Text + "' WHERE jobseeker_id =  "+jobseekerid, con);

                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/jobseekerprofile.aspx");

                }
                catch (Exception ex)
                {
                    //MessageBox.Show(ex.Message);
                }
            }



        }




    }
}