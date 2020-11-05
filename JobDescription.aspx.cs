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
    public partial class JobDescription : System.Web.UI.Page
    {
        private String id = "";

        private String ApplyId = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["JName"] == null)
            {
                Response.Redirect("~/Jobseeker_login.aspx");
            }

            System.Diagnostics.Debug.WriteLine(Request.QueryString["id"]);
            this.id = Request.QueryString["id"];




        }


        protected void want_a_job_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/wantjob.aspx");
        }

        public List<JobHunt.Models.JobDetails> getWhileLoopDataList()
        {
            int jobid = Convert.ToInt32(this.id);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM PostAJob where job_id = " + jobid);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            List<JobHunt.Models.JobDetails> data = new List<Models.JobDetails>();
            while (reader.Read())
            {
              
                int cid = reader.GetInt32(1);
                string Name = reader.GetString(2);
                string email = reader.GetString(3);
                string radios = reader.GetString(4);
                string location = reader.GetString(5);
                string descrptn = reader.GetString(6);
                string rqrmnts = reader.GetString(7);
                JobHunt.Models.JobDetails jobDetails = new Models.JobDetails();
                jobDetails.jid = jobid;
                jobDetails.id = cid;
                jobDetails.Name = Name;
                jobDetails.email = email;
                jobDetails.radios = radios;
                jobDetails.loation = location;
                jobDetails.jobdesc = descrptn;
                jobDetails.reqrmnts = rqrmnts;
                

                data.Add(jobDetails);

            }
            con.Close();
            return data;
        }




        public List<JobHunt.Models.JobDetails> getWhileLoopDataList2()
        {
            int jobid = Convert.ToInt32(this.id);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();


            SqlCommand cmd1 = new SqlCommand("select DISTINCT Company.company_name, Company.company_details from Company join PostAJob on Company.company_id = PostAJob.company_id where Company.company_id in (select company_id from PostAJob where job_id = "+jobid+")");

            cmd1.CommandType = System.Data.CommandType.Text;
            cmd1.Connection = con;
            SqlDataReader reader1 = cmd1.ExecuteReader();
            List<JobHunt.Models.JobDetails> data = new List<Models.JobDetails>();
            while (reader1.Read())
            {
                string companyname = reader1.GetString(0);
                string companydetails = reader1.GetString(1);
                JobHunt.Models.JobDetails jobDetails = new Models.JobDetails();
                jobDetails.companyname = companyname;
                jobDetails.companydetails = companydetails;
                data.Add(jobDetails);
            }

                con.Close();
            return data;
        }

    }
}