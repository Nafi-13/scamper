using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication3
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);
                con.Open();
                string insert = "insert into userinfo (first_name,last_name,mobile_no,product_code,address) values(@first_name,@last_name,@mobile_no,@product_code,@address)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@first_name", fname.Text);
                cmd.Parameters.AddWithValue("@last_name", sname.Text);
                cmd.Parameters.AddWithValue("@mobile_no", mnum.Text);
                cmd.Parameters.AddWithValue("@product_code", pcode.Text);
                cmd.Parameters.AddWithValue("@address", addr.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                Response.Write(ex);
            }

            Session["First_Name"] = fname.Text;
            Session["P_Code"] = pcode.Text;
            HttpCookie cookie = new HttpCookie("UserInfo");
            cookie["M_No"] = mnum.Text;
            Response.Cookies.Add(cookie);


            Response.Redirect("confirmation.aspx");

        }

        

        
    }
}