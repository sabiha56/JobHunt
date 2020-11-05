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
    public partial class jobedit : System.Web.UI.Page
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

        protected void update(object sender, EventArgs e)
        {

            int jobid = Convert.ToInt32(this.id);

            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox5.Text == "" || TextBox7.Text == "" || TextBox8.Text == "" || TextBox6.Text == "")
            {

                Response.Write("<script>alert('Please fill up all the fields');</script>");
            }

            else
            {
                try
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                    con.Open();


                    SqlCommand cmd1 = new SqlCommand("UPDATE PostAJob SET  job_title = '" + TextBox1.Text + "', email = '" + TextBox2.Text + "', radios = '" + TextBox3.Text + "', location = '" + TextBox5.Text + "', job_description = '" + TextBox7.Text + "', requirment = '" + TextBox8.Text + "', Category = '" + TextBox6.Text + "' WHERE job_id =  " + jobid, con);

                    cmd1.ExecuteNonQuery();
                    con.Close();

                    System.Diagnostics.Debug.WriteLine("asche" +jobid);
                    Response.Redirect("~/joblist.aspx");




                }
                catch (Exception ex)
                {
                    //MessageBox.Show(ex.Message);
                }
            }

        }
    }
}