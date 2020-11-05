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
    public partial class appliedjobs : System.Web.UI.Page
    {
        private String deleteid = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            this.deleteid = Request.QueryString["deleteId"];
            if (Session["JName"] == null)
            {
                Response.Redirect("~/Jobseeker_login.aspx");

            }

            int jobseekerid = Convert.ToInt32(Session["jid"].ToString());
            int delete = Convert.ToInt32(this.deleteid);

            if (this.deleteid != null && this.deleteid != "")
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();

                SqlCommand cmd1 = new SqlCommand("delete from ApplyforJob where job_id = "+delete+" and jobseeker_id = "+jobseekerid, con);

                cmd1.ExecuteNonQuery();
                con.Close();
            }
        }



        public List<JobHunt.Models.JobDetails> getWhileLoopDataList()
        {
            int no = 1;
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            int jobseekerid = Convert.ToInt32(Session["jid"].ToString());



            SqlCommand cmd = new SqlCommand("select * from PostAJob where job_id in (select  job_id from ApplyforJob where jobseeker_id="+jobseekerid+" and applystatus=0)");

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            List<JobHunt.Models.JobDetails> data = new List<Models.JobDetails>();
            while (reader.Read())
            {
                
                int jid = reader.GetInt32(0);
                string Name = reader.GetString(2);
                JobHunt.Models.JobDetails jobDetails = new Models.JobDetails();
                jobDetails.jid = jid;
                jobDetails.no = no;
                jobDetails.Name = Name;
           
                data.Add(jobDetails);
                no++;
            }
            con.Close();
            return data;
        }


        public List<JobHunt.Models.JobDetails> getWhileLoopDataList2()
        {
            int no = 1;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            int jobseekerid = Convert.ToInt32(Session["jid"].ToString());



            SqlCommand cmd = new SqlCommand("select * from PostAJob where job_id in (select  job_id from ApplyforJob where jobseeker_id=" + jobseekerid + " and applystatus=1)");

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            List<JobHunt.Models.JobDetails> data = new List<Models.JobDetails>();
            while (reader.Read())
            {

                int jid = reader.GetInt32(0);
                string Name = reader.GetString(2);
                JobHunt.Models.JobDetails jobDetails = new Models.JobDetails();
                jobDetails.jid = jid;
                jobDetails.no = no;
                jobDetails.Name = Name;

                data.Add(jobDetails);
                no++;
            }
            con.Close();
            return data;
        }

    }
}