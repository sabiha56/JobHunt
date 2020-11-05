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
    public partial class categoryjobs : System.Web.UI.Page
    {
        private String category = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            this.category = Request.QueryString["category"];

        }



        public List<JobHunt.Models.JobDetails> getWhileLoopDataList()
        {

            int no = 1;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();




            SqlCommand cmd = new SqlCommand("select * from PostAJob where Category LIKE '%" + this.category + "%'");


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