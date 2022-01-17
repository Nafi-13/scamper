using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication3
{
    public partial class last : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);

        protected void Linkbtndelete_Click(object sender, EventArgs e)
        {
            
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int studentid = Convert.ToInt32(GridView1.Rows[rowindex].Cells[1].Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete userinfo where Id='" + studentid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted!! Reload the Page for Changes');", true);
            Response.Redirect("last.aspx");

        }

        protected void adminlogoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

    }
}