using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services.Description;

namespace JobHunt
{
    public partial class Recruiter_registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               // que();
            }
        }

    
        protected void Button3_Click(object sender, EventArgs e)
        {
            int count = 0;
            
            if (TextBox15.Text == "" || TextBox1.Text == "" || TextBox16.Text == "" || TextBox18.Text == "" || TextBox19.Text == "" || TextBox11.Text == "" || TextBox17.Text == "" )
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
                    cmd.CommandText = "select * from Company where username='" + TextBox1.Text + "'";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    count = Convert.ToInt32(dt.Rows.Count.ToString());

                    if(count>0){
                        Response.Write("<script>alert('This username already exists.');</script>");
                    }
                    else
                    {
                        SqlCommand cmd1 = new SqlCommand("insert into Company(company_name,username,contact_person,company_contact,company_address,company_email, company_details) values('" + TextBox15.Text + "','" + TextBox1.Text + "','" + TextBox16.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox11.Text + "','" + TextBox17.Text + "')", con);

                        cmd1.ExecuteNonQuery();
                        SqlCommand cmd2 = new SqlCommand("insert into Login (username,password,role) values('" + TextBox1.Text + "','" + TextBox2.Text + "','recruiter')", con);
                        cmd2.ExecuteNonQuery();
                        con.Close();
                       

                        Response.Write("<script>alert('Go to login page');</script>");
                    }
                    

                }
                catch (Exception ex)
                {
                    //MessageBox.Show(ex.Message);
                }
            }


           
           

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}