using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;

namespace JobHunt
{
    public partial class Admin_login : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        protected void Page_Load(object sender, EventArgs e)
        {

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
            while(dr.Read())
            {
                string Username = dr[0].ToString();
                string Password = dr[1].ToString();
                if(TextBox5.Text== Username && TextBox6.Text== Password)
                {
                    Role = dr[2].ToString();
                    Flag = true;
                }
            }
            dr.Close();
            if(Flag==false)
            {
                Label2.Visible = true;
                Label2.Text = "Not Authorized";
                Label2.ForeColor = System.Drawing.Color.Red;

            }
            if(Flag==true)
            {
                if(Role== "admin")
                {
                    Session["User"] = TextBox5.Text;
                    Label2.Visible = true;
                    Label2.Text = "Authorized";
                    Label2.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("~/Admin_user.aspx");

                }
            }
            con.Close();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}