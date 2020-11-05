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
    public partial class postajob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RUser"] == null)
            {
                Response.Redirect("~/Recruiter_login.aspx");
            }



        }

        protected void postjob(object sender, EventArgs e)
        {



            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {
                
                Response.Write("<script>alert('Please fill up all the fields');</script>");
            }

            else
            {
                try
                {
                    string RName = Session["RUser"].ToString();
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                    con.Open();

                    string query = "select * from Company where username='" + RName + "'";
                    SqlDataAdapter adp = new SqlDataAdapter(query, con);

                    DataSet ds = new DataSet();
                    adp.Fill(ds);
                    int comapany_id = Convert.ToInt32(ds.Tables[0].Rows[0]["company_id"].ToString());

                    //System.Diagnostics.Debug.WriteLine(comapany_id);

                    SqlCommand cmd1 = new SqlCommand("insert into PostAJob(company_id,job_title,email,radios,location,job_description,requirment,Category) values('" + comapany_id + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + rblMeasurementSystem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);

                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/postajob.aspx");

                }
                catch (Exception ex)
                {
                    //MessageBox.Show(ex.Message);
                }
            }



        }


    }
}
