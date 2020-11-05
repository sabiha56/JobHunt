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
    public partial class JobSeekerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
         //       que();
            }
        }

   
        protected void Button5_Click(object sender, EventArgs e)
        {
  

            int count = 0;

            if (TextBox15.Text == "" || TextBox1.Text == "" || TextBox16.Text == "" || TextBox18.Text == "" || TextBox19.Text == "" || TextBox11.Text == "" || TextBox17.Text == "")
            {
                // MessageBox.Show("Please fill up all the fields");
                Response.Write("<script>alert('Please fill up all the fields');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                    con.Open();

                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from jobseekerinfo where username='" + TextBox1.Text + "'";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    count = Convert.ToInt32(dt.Rows.Count.ToString());

                    if (count > 0)
                    {
                        Response.Write("<script>alert('This username already exists.');</script>");
                    }
                    else
                    {
                        SqlCommand cmd1 = new SqlCommand("insert into jobseekerinfo(jobseeker_name,username,gender,education,contactno,addres, email,interest) values('" + TextBox15.Text + "','" + TextBox1.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox11.Text + "','" + TextBox4.Text + "')", con);
                        cmd1.ExecuteNonQuery();
                        SqlCommand cmd2 = new SqlCommand("insert into Login (username,password,role) values('" + TextBox1.Text + "','" + TextBox2.Text + "','jobseeker')", con);
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        //Response.Redirect("~/Rucruiter_profile.aspx");
                        //Label13.Text = "Registration successful! Now go to Home page & Login";

                        Response.Write("<script>alert('Go to login page');</script>");
                    }


                }
                catch (Exception ex)
                {
                    //MessageBox.Show(ex.Message);
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}