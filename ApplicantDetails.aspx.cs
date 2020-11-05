using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

namespace JobHunt
{
    public partial class ApplicantDetails : System.Web.UI.Page
    {
        private String ApplicantId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RUser"] == null)
            {
                Response.Redirect("~/Recruiter_login.aspx");
            }
            this.ApplicantId = Request.QueryString["ApplicantId"];
        }

        protected void want_a_job_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/wantjob.aspx");
        }


        int showtitle = 0;
        public List<JobHunt.Models.applicants> getWhileLoopDataList()
        {
            int applicantid = Convert.ToInt32(this.ApplicantId);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM ApplyforJob where apply_id = " + applicantid);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            List<JobHunt.Models.applicants> data = new List<Models.applicants>();
            while (reader.Read())
            {

                int aid = reader.GetInt32(0);
                int jobid = reader.GetInt32(2);
                string applicant_firstname = reader.GetString(5);
                string applicant_lastname = reader.GetString(6);
                string email = reader.GetString(7);
                string phoneno = reader.GetString(8);
                string city = reader.GetString(9);
                string addres = reader.GetString(10);
                string qualification = reader.GetString(11);
                string experience = reader.GetString(12);
             
                JobHunt.Models.applicants applicants = new Models.applicants();
                applicants.job_id = jobid;
                applicants.apply_id = aid;
                applicants.applicant_firstname = applicant_firstname;
                applicants.applicant_lastname = applicant_lastname;
                applicants.email = email;
                applicants.phoneno = phoneno;
                applicants.city = city ; 
                applicants.addres =addres;
                applicants.qualification = qualification;
                applicants.experience = experience;

                showtitle = jobid;

                data.Add(applicants);
                

            }
            con.Close();
            return data;
        }



        public List<JobHunt.Models.JobDetails> getjobtitle()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT job_title FROM PostAJob where job_id = " + showtitle);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            List<JobHunt.Models.JobDetails> data1 = new List<Models.JobDetails>();
            while (reader.Read())
            {
               
                string title = reader.GetString(0);
                JobHunt.Models.JobDetails applicant = new Models.JobDetails();
           
                applicant.Name = title;

                data1.Add(applicant);
                System.Diagnostics.Debug.WriteLine(applicant.Name);
            }

           
            con.Close();
            return data1;
        }

        protected void bttnpdf_Click(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("~/UploadedCV/Resume.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }

    }
}