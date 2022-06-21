using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MYPROJECT1
{
    public partial class master : System.Web.UI.MasterPage
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=.;Initial Catalog=room_rental_system;Integrated Security=True";
           
            if (Session["user"]!=null)
            {
                login_button.Visible = false;
                string user1 = Session["user"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("select Fname from REGISTRATION where email_id=@email_id ", con);
                cmd.Parameters.AddWithValue("@email_id", Session["user"].ToString());
                SqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    welcome_text1.InnerHtml = "Hello";
                    welcome_text2.InnerHtml= da.GetValue(0).ToString();
                }
                con.Close();
            }
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {

        }
        public void home()
        {
            Response.Redirect("house_section.aspx");
        }
    }
}