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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public List<JobHunt.Models.JobDetails> getWhileLoopDataList()
        {
            int no = 1;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();


            SqlCommand cmd = new SqlCommand("select Distinct Category from PostAJob");


            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            List<JobHunt.Models.JobDetails> data = new List<Models.JobDetails>();
            while (reader.Read())
            {

                string category = reader.GetString(0);
                JobHunt.Models.JobDetails jobDetails = new Models.JobDetails();
                jobDetails.category = category;


                data.Add(jobDetails);
                no++;
            }
            con.Close();
            return data;
        }
    }
}