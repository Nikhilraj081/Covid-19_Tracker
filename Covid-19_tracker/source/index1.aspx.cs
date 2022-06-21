using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYPROJECT1
{
    public partial class index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                imageslider();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            imageslider();  
        }
        private void imageslider()
        {
            Random ram = new Random();
            int i = ram.Next(1, 5);
            Image1.ImageUrl = "~/Resources/" + i.ToString() + ".jpeg";
        }
    }
}