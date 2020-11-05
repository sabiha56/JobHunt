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
    public partial class morejobs : System.Web.UI.Page
    {
        private String ApplyId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ApplyId = Request.QueryString["ApplyId"];

            if (Session["JName"] == null)
            {
                Response.Redirect("~/Jobseeker_login.aspx");
            }

            string username = Session["JName"].ToString();
            int jobseekerid = Convert.ToInt32(Session["jid"].ToString());
            int zero = 0;
            if (this.ApplyId != null && this.ApplyId != "")
            {
                System.Diagnostics.Debug.WriteLine(this.ApplyId);

                int jobapplyid = Convert.ToInt32(this.ApplyId);

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();

                SqlCommand cmd1 = new SqlCommand("insert into ApplyforJob(job_id,jobseeker_id,applystatus) values('" + jobapplyid + "','" + jobseekerid + "','" + zero + "')", con);

                cmd1.ExecuteNonQuery();
                con.Close();

            }




        }

        protected void post_a_job_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/postajob.aspx");
        }

        protected void want_a_job_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/wantjob.aspx");
        }

        protected void jobapply(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            System.Diagnostics.Debug.WriteLine(btn.CommandArgument.ToString());
            System.Diagnostics.Debug.WriteLine(btn.Attributes["CustomParameter"].ToString());
            Response.Redirect("~/wantjob.aspx");
        }

        protected void showdetails(object sender, EventArgs e)
        {

            Response.Redirect("~/JobDescription.aspx");


        }


        public List<JobHunt.Models.JobDetails> getWhileLoopDataList()
        {
            int no = 1;
            string intrst = Session["interest"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            int jobseekerid = Convert.ToInt32(Session["jid"].ToString());

            SqlCommand cmd = new SqlCommand("select * from PostAJob where (requirment not LIKE '%" + intrst + "%') AND (job_id not in (select job_id  from ApplyforJob where jobseeker_id =" + jobseekerid + " and(applystatus = 0 or applystatus = 1)))");
            System.Diagnostics.Debug.WriteLine(jobseekerid);
            System.Diagnostics.Debug.WriteLine(intrst);

           


            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            List<JobHunt.Models.JobDetails> data = new List<Models.JobDetails>();
            while (reader.Read())
            {
                int id = reader.GetInt32(1);
                int jid = reader.GetInt32(0);
                string Name = reader.GetString(2);
                JobHunt.Models.JobDetails jobDetails = new Models.JobDetails();
                jobDetails.jid = jid;
                jobDetails.no = no;
                jobDetails.id = id;
                jobDetails.Name = Name;

                data.Add(jobDetails);
                no++;
            }
            con.Close();
            return data;
        }





    }
}