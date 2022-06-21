using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MYPROJECT1
{
    public partial class registration : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=.;Initial Catalog=room_rental_system;Integrated Security=True";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label8.Text = "";
            long result = 0;
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
            {
                Label8.Text = "";
                Label8.Text = "Please Fill All Information properly";
            }
            else if (CheckEmail() == 1)
            {

                Label8.Text = "This Email_Id Already Registered With Us ";
            }
            else if (TextBox4.Text != TextBox3.Text)
            {
                Label8.Text = "";
                Label8.Text = "Password Not Matched Please Re-Enter Password";
            }
            else if (!long.TryParse(TextBox5.Text, out result))
            {
                Label8.Text = "";
                Label8.Text = "please enter mobile number in digit";
            }
            else if (TextBox5.Text.Length != 10)
            {
                Label8.Text = "Please Enter 10 Digit Of Mobile Number";
            }
            else
            {
                cmd = new SqlCommand("insert into REGISTRATION" + " (Fname,Lname,Email_Id,Phone_no,Pass_word)Values(@Fname,@Lname,@Email_Id,@Phone_no,@Pass_word)", con);
                cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Lname", TextBox6.Text);
                cmd.Parameters.AddWithValue("@Email_Id", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Phone_No", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Pass_word", TextBox3.Text);
                cmd.ExecuteNonQuery();
                Label8.Text = "";
                Label8.Text = "You Are Signed Up";
                Response.Redirect("login.aspx");
                con.Close();
            }
        }
        public int CheckEmail()
        {

            SqlConnection con2 = new SqlConnection();
            con2.ConnectionString = "Data Source=.;Initial Catalog=room_rental_system;Integrated Security=True";
            int count = 0;
            con2.Open();
            SqlCommand cmd2 = new SqlCommand("select * from REGISTRATION where Email_Id=@Email_ID", con2);
            cmd2.Parameters.AddWithValue("@Email_Id", TextBox2.Text);
            cmd.Connection = con2;
            SqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                count++;
            }

            return count;
            con2.Close();

        }
    }
}