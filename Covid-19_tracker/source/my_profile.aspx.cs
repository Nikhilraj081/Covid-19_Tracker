using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MYPROJECT1
{
    public partial class my_profile : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlConnection con2 = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Session["user"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                if (!Page.IsPostBack)
                {
                    con.ConnectionString = "Data Source=.;Initial Catalog=room_rental_system;Integrated Security=True";

                    con.Open();
                    if (Session["user"] != null)
                    {
                        this.logout_btn.Style.Add("background-color", "silver");
                        Button2.BackColor = System.Drawing.Color.Silver;
                        SqlCommand cmd = new SqlCommand("select Fname,Lname,email_id,phone_no from REGISTRATION where email_id=@email_id ", con);
                        cmd.Parameters.AddWithValue("@email_id", Session["user"].ToString());
                        SqlDataReader da = cmd.ExecuteReader();
                        while (da.Read())
                        {
                            TextBox1.Text = da.GetValue(0).ToString();
                            TextBox2.Text = da.GetValue(1).ToString();
                            TextBox3.Text = da.GetValue(2).ToString();
                            TextBox4.Text = da.GetValue(3).ToString();


                        }
                    }
                }
                con.Close();
            
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.logout_btn.Style.Add("background-color", "white");
            Session["user"] = null;
            Response.Redirect("index1.aspx");
        }

       

        protected void Button14_Click(object sender, EventArgs e)
        {
            con2.ConnectionString = "Data Source=.;Initial Catalog=room_rental_system;Integrated Security=True";
            con2.Open();
            cmd2 = new SqlCommand("update REGISTRATION set phone_no='" + TextBox4.Text + "' where email_id='" + Session["user"].ToString() + "'", con2);
            cmd2.ExecuteNonQuery();
            Response.Redirect("my_profile.aspx");
            con2.Close();
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            TextBox6.Text = "";
            TextBox6.Attributes["Type"] = "password";
            Button12.Visible = false;
            TextBox6.ReadOnly = false;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            Button8.Visible = true;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Button9.Visible = false;
            TextBox1.ReadOnly = false;
            TextBox2.ReadOnly = false;
            Button5.Visible = true;


        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Button10.Visible = false;
            Button6.Visible = true;
            TextBox3.ReadOnly = false;
            
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Button11.Visible = false;
            Button7.Visible = true;
            TextBox4.ReadOnly = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con2.ConnectionString = "Data Source=.;Initial Catalog=room_rental_system;Integrated Security=True";
            con2.Open();
            cmd2 = new SqlCommand( "update REGISTRATION set Fname='" + TextBox1.Text +"',Lname='"+ TextBox2.Text +"' where email_id='"+ Session["user"].ToString()+"'",con2);           
            cmd2.ExecuteNonQuery();
            Response.Redirect("my_profile.aspx");
            con2.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            con2.ConnectionString = "Data Source=.;Initial Catalog=room_rental_system;Integrated Security=True";
            con2.Open();
            cmd2 = new SqlCommand("update REGISTRATION set email_id='" + TextBox3.Text + "' where email_id='" + Session["user"].ToString() + "'", con2);
            cmd2.ExecuteNonQuery();
            Response.Redirect("my_profile.aspx");
           
            con2.Close();
        }
    }
}