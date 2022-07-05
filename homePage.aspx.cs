using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem
{
    public partial class homePage : System.Web.UI.Page
    {
        string username;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection("Server=SQL_SERVER_IP;uid=YOUR_UID;pwd=YOUR_PASSWORD;database=DB_NAME");
            SqlCommand cmmd = new SqlCommand("select adName from RMadmin where userId=@uid", con);
            cmmd.Parameters.AddWithValue("uid", Session["userId"]);
            con.Open();
            SqlDataReader dr = cmmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    username = dr["adName"].ToString();
                }
                

            }
            lblusername.Text = username;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("addEmp.aspx");
        }

       

        protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("empDetails.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("salary.aspx");
        }

        protected void ImageButton6_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("fullDetails.aspx");
        }
    }
}
