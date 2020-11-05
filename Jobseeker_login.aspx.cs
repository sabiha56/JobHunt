using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace JobHunt
{
    public partial class Jobseeker_login : System.Web.UI.Page
    {
        private String LogoutId = "";
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        SqlDataAdapter adp = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LogoutId = Request.QueryString["LogoutId"];

            int Logout = Convert.ToInt32(this.LogoutId);
            if (this.LogoutId != null && this.LogoutId != "")
            {

                Session.Abandon();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            bool Flag = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Login";
            dr = cmd.ExecuteReader();
            string Role = "";
            string Uname;
            
            while (dr.Read())
            {
                string UserName = dr[0].ToString();
                string PassWord = dr[1].ToString();
                Uname = UserName;
                int jid = 0; //jobseeker
                string interest;

                if (TextBox5.Text == UserName && TextBox6.Text == PassWord)
                {
                    Session.Add("JName", UserName);
                    Role = dr[2].ToString();
                    Flag = true;

                    jid = getjid(UserName);
                    interest = getjobseekerinterst(UserName);
                    Session.Add("interest", interest);
                    Session.Add("Jid", jid);
                    Session["RUser"] = null;


                }
                
            }
            dr.Close();

            if (Flag == false)
            {
                Label2.Visible = true;
                Label2.Text = "Not authorized";
                Label2.ForeColor = System.Drawing.Color.Red;
                Session["JName"] =null;

            }
            if (Flag == true)
            {

                if (Role == "jobseeker")
                {

                   
                    Response.Redirect("~/jobseekerprofile.aspx");
                }
            }
            con.Close();
        }
        public int getjid(string UserName)
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            int js;

            string query = "select jobseeker_id from jobseekerinfo where username='" + UserName + "' ";
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            js = Convert.ToInt32(ds.Tables[0].Rows[0]["jobseeker_id"].ToString());

            return (js);


        }

        public string getjobseekerinterst(string UserName)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            string js;

            string query = "select interest from jobseekerinfo where username='" + UserName + "' ";
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            js = ds.Tables[0].Rows[0]["interest"].ToString();

            return (js);


        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("JobSeekerRegistration.aspx");
        }
    }
}