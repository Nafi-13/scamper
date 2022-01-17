using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["First_Name"] != null)
            {
                name.Text = Session["First_Name"].ToString();
                
            }
            if (Session["P_Code"] != null)
            {
                prodcode.Text = Session["P_Code"].ToString(); 
            }

           HttpCookie cookie = Request.Cookies["UserInfo"];
            if (cookie != null)
           {
                mobilenumber.Text = cookie["M_No"];
            }


        }

        protected void viewmore_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }
    }
}