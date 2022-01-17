using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication3
{
    public partial class admin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect1"].ConnectionString);
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void adminloginbtn_Click(object sender, EventArgs e)
        {
            cmd.CommandText= "select* from admin where username='"+adminuser.Text+"'and password='"+adminpass.Text+"'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "admin");
            if(ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("last.aspx");
            }
            else{
                testlabel.Text="Wrong Username or Password";
            }
            
        }



        protected void homepagebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        
    
    }
}