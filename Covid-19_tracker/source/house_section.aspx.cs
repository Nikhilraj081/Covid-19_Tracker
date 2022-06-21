using System;
using System.Web.UI.WebControls;

namespace MYPROJECT1
{
    public partial class house_section : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp1 = Request.QueryString["ref"].ToString();
            if (temp1 == "room")
            {
                Label6.Text = "home";
            }
            else if (temp1 == "hostel")
            {
                Label6.Text = "hostel";
            }
            else
            {
                Label6.Text = "p.g";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("view_details.aspx?ad_id=" + e.CommandArgument.ToString());

        }
    }
}