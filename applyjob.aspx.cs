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
    public partial class applyjob : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        SqlDataAdapter adp = null;


        static String CVLink;
        private String jobId = "";
        int jobapplyid = 0;
        int cid = 0;
        int CId = 0;
        int jobseekerid = 0;
        int zero = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //System.Diagnostics.Debug.WriteLine(Request.QueryString["ApplyId"]);


            //job id 
            this.jobId = Request.QueryString["ApplyId"];
            jobapplyid = Convert.ToInt32(this.jobId);
            //if not logged in
            if (Session["JName"] == null)
            {
                Response.Redirect("~/Jobseeker_login.aspx");
            }

            //getting company id from this.jobapplyid or this.jobid
          
            
            cid = getCid(jobapplyid);
            Session.Add("Cid", cid);
            CId = Convert.ToInt32(Session["Cid"].ToString());

            //getting jobseeker/applicants id 
            jobseekerid = Convert.ToInt32(Session["jid"].ToString());
            //status
            
            
        }



        protected void want_a_job_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/wantjob.aspx");
        }


        public int getCid(int JOBID)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            int js;

            string query = "select company_id from PostAJob where job_id='" + JOBID+ "' ";
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            js = Convert.ToInt32(ds.Tables[0].Rows[0]["company_id"].ToString());

            return (js);


        }

        protected void postjob(object sender, EventArgs e)
        {


            if (UploadCV() == true)
            {
               // if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text == "")
               // {
                    // MessageBox.Show("Please fill up all the fields");
                  //  Response.Write("<script>alert('Please fill up all the fields');</script>");
               // }

              //  else
               // {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                    con.Open();

                    SqlCommand cmd1 = new SqlCommand("insert into ApplyforJob(comapany_id,job_id,jobseeker_id,applystatus,applicant_firstname,applicant_lastname,email,phoneno,city,addres,qualification,experience,CV) values('" + CId + "','" + jobapplyid + "','" + jobseekerid + "','" + zero + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "' ,'" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + CVLink + "' )", con);

                    cmd1.ExecuteNonQuery();
                    con.Close();


                    Response.Redirect("~/wantjob.aspx");
               // }
            }

        }

        protected void back(object sender, EventArgs e)
        {
            Response.Redirect("~/wantjob.aspx");
        }
        private Boolean UploadCV()
        {
            Boolean CVsaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "application/pdf")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    //postjob();
                    FileUpload1.SaveAs(Server.MapPath("~/UploadedCV/") + jobapplyid + ".pdf");

                    CVLink = "UploadedCV/" + jobapplyid + ".pdf";
                    CVsaved = true;
                    Label1.Text = "";
                }
                else
                {
                    Label1.Text = "Upload CV in PDF Format Only";
                }

            }
            else
            {
                Label1.Text = "Kindly Upload your CV in PDF Format before Applying";
            }


            return CVsaved;
        }



    }
}