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
    public partial class JobDescriptionforcompany : System.Web.UI.Page
    {
        private String id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RUser"] == null)
            {
                Response.Redirect("~/Recruiter_login.aspx");
            }
            this.id = Request.QueryString["id"];

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



    }
}