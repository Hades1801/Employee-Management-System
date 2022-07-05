using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "Server=199.79.62.22;uid=training;pwd=Training@786;database=cmp";
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select pwd from RMadmin where userId=@uid", con);
            cmd.Parameters.AddWithValue("@uid", txtId.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string dbpwd = null;
            while (dr.Read())
            {
                dbpwd = dr["pwd"].ToString();
            }
            con.Close();
            if (dbpwd == txtpwd.Text)
            {
                Session["userId"] = txtId.Text;
                Session["pwd"] = txtpwd.Text;
                Response.Redirect("homePage.aspx");
            }
            else
            {
             
                txtId.Text = "";
                txtpwd.Text = "";
                txtId.Focus();
                lblmsg.Visible = true;
            }

        }

        protected void txtId_TextChanged(object sender, EventArgs e)
        {

        }
    }
}