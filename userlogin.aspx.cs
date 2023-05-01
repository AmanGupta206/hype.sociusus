using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hype.sociusus
{
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from existing_member_table where emailid ='" + TextBox2.Text.Trim() + "'AND password='" + TextBox4.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>"); //"+dr.GetValue(3).ToString()+"//
                        Session["emailid"] = dr.GetValue(3).ToString();
                    }
                    Response.Redirect("dashboard2.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Email Id Or Password');</script>");
                }

            }
            catch(Exception ex)
            {

            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}