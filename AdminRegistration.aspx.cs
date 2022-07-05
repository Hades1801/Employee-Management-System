using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=199.79.62.22;uid=training;pwd=Training@786;database=cmp");
            SqlCommand cmd = new SqlCommand("insert into RMadmin values(@n,@u,@em,@no,@gn,@dob,@pwd,@sqt,@sans)", con);
            cmd.Parameters.AddWithValue("@n", txtname.Text);
            cmd.Parameters.AddWithValue("@u", txtId.Text);
            cmd.Parameters.AddWithValue("@em", txtmail.Text);
            cmd.Parameters.AddWithValue("@no", txtno.Text);
            cmd.Parameters.AddWithValue("@gn", ddlgender.SelectedItem.Text.ToString());
            cmd.Parameters.AddWithValue("@dob", txtdob.Text);
            cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);
            cmd.Parameters.AddWithValue("@sqt", ddlsqt.SelectedItem.Text.ToString());
            cmd.Parameters.AddWithValue("@sans", txtsans.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Registration is Successfull');</script>");
            Response.Redirect("login.aspx");

        }

        protected void txtname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtdob_TextChanged(object sender, EventArgs e)
        {

        }
    }
}