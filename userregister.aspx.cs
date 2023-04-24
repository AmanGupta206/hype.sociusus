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
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
         
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Sign Up Buttion Click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //SqlConnection con = new SqlConnection(strcon);
                //if (con.State == System.Data.ConnectionState.Closed )
                //{
                //    con.Open();
                //}

                //SqlCommand cmd = new SqlCommand("INSERT INTO existing_member_table
                //(full_name, user_name, email_id, password)
                //VALUES (@full_name, @user_name, @email_id, @password)", con);

                //cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                //cmd.Parameters.AddWithValue("@user_name", TextBox2.Text.Trim());
                //cmd.Parameters.AddWithValue("@email_id", TextBox3.Text.Trim());
                //cmd.Parameters.AddWithValue("@password", TextBox4.Text.Trim());

                //cmd.ExecuteNonQuery();
                //con.Close();
                //Response.Write("<script>alert('Sign Up Successful.Go to User Login');</script>");

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}