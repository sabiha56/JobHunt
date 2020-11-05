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
    public partial class applicantlist : System.Web.UI.Page
    {
        private String acceptid = "";
        private String deleteid = "";

        private String jobidforapplicantlist = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.acceptid = Request.QueryString["acceptId"];
            this.deleteid = Request.QueryString["deleteId"];
            this.jobidforapplicantlist = Request.QueryString["jobidforapplicantlist"];
            if (Session["RUser"] == null)
            {
                Response.Redirect("~/Recruiter_login.aspx");

            }

            string companyname = Session["RUser"].ToString();

            
            //get company id 
            int companyid = Convert.ToInt32(Session["Cid"].ToString());
            //get accept id 
       
            int accept = Convert.ToInt32(this.acceptid);
            //System.Diagnostics.Debug.WriteLine(companyid);
            if (this.acceptid != null && this.acceptid != "")
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();

                SqlCommand cmd1 = new SqlCommand("Update ApplyforJob SET applystatus = 1 where apply_id = "+accept, con);

                cmd1.ExecuteNonQuery();
                con.Close();
            }

            int delete = Convert.ToInt32(this.deleteid);
            if (this.deleteid != null && this.deleteid != "")
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();

                SqlCommand cmd1 = new SqlCommand("DELETE from ApplyforJob Where apply_id = " + delete, con);

                cmd1.ExecuteNonQuery();
                con.Close();
            }


        }

        
        public List<JobHunt.Models.applicants> getWhileLoopDataList()
        {
            //get company id 
            int companyid = Convert.ToInt32(Session["Cid"].ToString());
            int jobidforapplicantlist = Convert.ToInt32(this.jobidforapplicantlist);
            int no = 1;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from ApplyforJob where job_id = " +jobidforapplicantlist+" and applystatus=0 ");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            List<JobHunt.Models.applicants> data = new List<Models.applicants>();
            while (reader.Read())
            {
                int applyid = reader.GetInt32(0);
                //int jid = reader.GetInt32(0);
                string Name = reader.GetString(5);
                JobHunt.Models.applicants applicants = new Models.applicants();

                applicants.no = no;
                applicants.apply_id = applyid;
                applicants.applicant_firstname = Name;

                data.Add(applicants);
                no++;
            }
            con.Close();
            return data;
        }

    }
}