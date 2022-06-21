using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MYPROJECT1
{
    public partial class postad1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            con.ConnectionString = "Data Source=.;Initial Catalog=room_rental_system;Integrated Security=True";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label13.Text = "";
            long result;
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {
                Label13.Text = "Please Fill All Information";
            }

            else if (TextBox2.Text.Length > 100)
            {
                Label13.Text = "Address Should Be Maximun 100 Words";
            }
            else if (!long.TryParse(TextBox3.Text, out result))
            {
                Label13.Text = "";
                Label13.Text = "please enter mobile number in digit";
            }
            else if (TextBox3.Text.Length != 10)
            {
                Label13.Text = "Please Enter 10 Digit Of Mobile Number";
            }
            else if (!fileupload.HasFile)
            {
                Label13.Text = "Please Insert Image";
            }
            else
            {
                int length = fileupload.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                fileupload.PostedFile.InputStream.Read(pic, 0, length);
                SqlCommand cmd = new SqlCommand("insert into POSTAD" + "(name,ustate,city,uaddress,contact,category,utype,bedroom,bathrooms,price,pic,email_id) values (@name,@ustate,@city,@uaddress,@contact,@category,@utype,@bedroom,@bathrooms,@price,@pic,@email_id)", con);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Ustate", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@uaddress", TextBox2.Text);
                cmd.Parameters.AddWithValue("@contact", TextBox3.Text);
                cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@utype", DropDownList4.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@bedroom", TextBox4.Text);
                cmd.Parameters.AddWithValue("@bathrooms", TextBox5.Text);
                cmd.Parameters.AddWithValue("@price", TextBox6.Text);
                cmd.Parameters.AddWithValue("@pic", pic);
                cmd.Parameters.AddWithValue("@email_id", Session["user"].ToString());
                cmd.ExecuteNonQuery();
                Label13.Text = "data saved";
            }
        }
    }
}