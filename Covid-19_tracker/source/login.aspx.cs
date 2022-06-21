using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MYPROJECT1
{
    public partial class login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        { 
            if(Session["user"]!=null)
            {
                Response.Redirect("index1.aspx");
            }
        
            con.ConnectionString = "Data Source=.;Initial Catalog=room_rental_system;Integrated Security=True";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            string user = TextBox1.Text.Trim();
            con.Open();
            string checkuser = "select count(*) from REGISTRATION where Email_Id='" + TextBox1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
            con.Close();

            if (temp == 1)
            {
                con.Open();
                try
                {

                    string checkpassword = "select Pass_word from REGISTRATION where Email_id='" + TextBox1.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(checkpassword, con);
                    string password = cmd2.ExecuteScalar().ToString().Replace(" ", "");
                    con.Close();
                    if (password == TextBox2.Text)
                    {
                        Session[ "user"] = user;
                            Response.Redirect("index1.aspx");
                    }
                    else
                    {
                        Label4.Text = "Password not Match to This User Id";

                    }

                }
                catch (NullReferenceException ex)
                {
                    Response.Write("null exception");
                }
            }
            else
            {
                Label4.Text = "Username does not exist";
            }
        }
    }
}
