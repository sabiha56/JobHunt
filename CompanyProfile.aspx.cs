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
    public partial class CompanyProfile : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RUser"] == null)
            {
                Response.Redirect("~/Recruiter_login.aspx");
            }
            // Label2.Text = Session["RUser"].ToString();
          



        }

        public List<JobHunt.Models.companyprofile> getWhileLoopDataList()
        {
            string CName = Session["RUser"].ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from Company where username='" + CName + "'") ;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();

            List<JobHunt.Models.companyprofile> data = new List<Models.companyprofile>();
            while (reader.Read())
            {

                int cid = reader.GetInt32(0);
                string CompanyName = reader.GetString(1);
                string username = reader.GetString(2);
                string contactperson = reader.GetString(3);
                decimal no = reader.GetDecimal(4);
                string address = reader.GetString(5);
                string email = reader.GetString(6);
                string details = reader.GetString(7);
                JobHunt.Models.companyprofile profile = new Models.companyprofile();

                profile.company_id = cid;
                profile.company_name = CompanyName;
                profile.username = username;
                profile.contact_person = contactperson;
                profile.company_contact = no;
                profile.company_address = address;
                profile.company_email = email;
                profile.company_details = details;


                data.Add(profile);

            }
            con.Close();
            return data;
        }


        protected void update(object sender, EventArgs e)
        {



            if (TextBox1.Text == ""  || TextBox3.Text == "" || TextBox5.Text == "" || TextBox7.Text == "" || TextBox8.Text == "" || TextBox6.Text == "")
            {

                Response.Write("<script>alert('Please fill up all the fields');</script>");
            }

            else
            {
                try
                {
                    string CName = Session["RUser"].ToString();
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                    con.Open();

                    string query = "select * from Company where username='" + CName + "'";
                    SqlDataAdapter adp = new SqlDataAdapter(query, con);

                    DataSet ds = new DataSet();
                    adp.Fill(ds);
                    int comapany_id = Convert.ToInt32(ds.Tables[0].Rows[0]["company_id"].ToString());

                    //System.Diagnostics.Debug.WriteLine(comapany_id);

                    SqlCommand cmd1 = new SqlCommand("  UPDATE Company SET company_name = '" + TextBox1.Text + "', contact_person = '" + TextBox3.Text + "', company_contact = "+TextBox5.Text+", company_address = '" + TextBox7.Text + "', company_email = '" + TextBox8.Text + "', company_details = '" + TextBox6.Text+"' WHERE company_id =  "+comapany_id , con);

                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/CompanyProfile.aspx");

                }
                catch (Exception ex)
                {
                    //MessageBox.Show(ex.Message);
                }
            }



        }



    }
}