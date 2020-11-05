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
    public partial class Recruiter_login : System.Web.UI.Page
    {
        private String LogoutId = "";
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        SqlDataAdapter adp = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Visible = false;
            this.LogoutId = Request.QueryString["LogoutId"];

            int Logout = Convert.ToInt32(this.LogoutId);
            if (this.LogoutId != null && this.LogoutId != "")
            {

                Session.Abandon();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int rowCount;
            string userName;
            string passWord;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Login where username=@username and password=@password",con);
            cmd.Parameters.AddWithValue("@username",TextBox5.Text);
            cmd.Parameters.AddWithValue("@password", TextBox1.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            int cid = 0; // companyid
            rowCount = dt.Rows.Count;
            for(int i=0; i<rowCount; i++)
            {
                userName = dt.Rows[i]["username"].ToString();
                passWord = dt.Rows[i]["password"].ToString();
                if(userName== TextBox5.Text && passWord== TextBox1.Text)
                {
                    Session["RUser"] = userName;
                    Session["JName"] = null;

                    if (dt.Rows[i]["role"].ToString()== "recruiter")
                    {
                        cid = getRid(userName);
                        Session.Add("Cid", cid);
                        Response.Redirect("~/CompanyProfile.aspx");
                    }
              

                }
                else
                {
                    Session["RUser"] = null ;
                    Label2.Visible = true;
                    Label2.Text = "Invalid UserName or Password. Please Try again!";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }

            }



        }


        public int getRid(string UserName)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            int js;

            string query = "select company_id from Company where username='" + UserName + "' ";
            adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            js = Convert.ToInt32(ds.Tables[0].Rows[0]["company_id"].ToString());

            return (js);


        }


        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}