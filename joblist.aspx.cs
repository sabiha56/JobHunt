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
    public partial class joblist : System.Web.UI.Page
    {
        private String id = "";
        private String deleteid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RUser"] == null)
            {
                Response.Redirect("~/Recruiter_login.aspx");
            }
            this.deleteid = Request.QueryString["deleteId"];

            int delete = Convert.ToInt32(this.deleteid);
            if (this.deleteid != null && this.deleteid != "")
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();

                SqlCommand cmd = new SqlCommand("DELETE from ApplyforJob Where job_id = " + delete, con);

                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("DELETE from PostAJob Where job_id = " + delete, con);

                cmd1.ExecuteNonQuery();
                con.Close();
            }
        }

      

        public List<JobHunt.Models.JobDetails> getWhileLoopDataList()
        {
            int no = 1;

            int cid = Convert.ToInt32(Session["Cid"].ToString());

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM PostAJob where company_id = " + cid);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;

          
            SqlDataReader reader = cmd.ExecuteReader();
            List<JobHunt.Models.JobDetails> data = new List<Models.JobDetails>();
            while (reader.Read())
            {
                
                int jid = reader.GetInt32(0);
                int id = reader.GetInt32(1);
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