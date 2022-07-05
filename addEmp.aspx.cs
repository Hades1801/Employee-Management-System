using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem
{
    public partial class addEmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          
          



        }
        


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (fu.HasFile)
            {
                int days = 26;
                int length = fu.PostedFile.ContentLength;
                byte[] empimg = new byte[length];
                fu.PostedFile.InputStream.Read(empimg, 0, length);
                SqlConnection con = new SqlConnection("Server=199.79.62.22;uid=training;pwd=Training@786;database=cmp");
                SqlCommand cmd = new SqlCommand("insert into RMemployee values(@ename,@eId,@eNo,@Email,@eDes,@eAdd,@eQuali,@eDob,@eGen,@eimage)", con);
                //SqlConnection con1 = new SqlConnection("Server=199.79.62.22;uid=training;pwd=Training@786;database=cmp");
                SqlCommand cmmd = new SqlCommand("insert into RMattendance values(@eId,@days)", con);
                cmd.Parameters.AddWithValue("@ename", txtename.Text);
                cmd.Parameters.AddWithValue("@eId", txtId.Text);
                cmmd.Parameters.AddWithValue("@eId", txtId.Text);
                cmmd.Parameters.AddWithValue("@days", days);
                cmd.Parameters.AddWithValue("@eNo", txteno.Text);
                cmd.Parameters.AddWithValue("@Email", txtemailid.Text);
                cmd.Parameters.AddWithValue("@eDes", ddldes.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@eAdd", txteadd.Text);
                cmd.Parameters.AddWithValue("@eQuali", txteq.Text);
                cmd.Parameters.AddWithValue("@eDob", txtedob.Text);
                cmd.Parameters.AddWithValue("@eGen", ddlege.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@eimage", empimg);
                con.Open();
                
                cmd.ExecuteNonQuery();
                cmmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Employee Details have been Successfully Recorded');</script>");
                //string message = "Employee Details have been Successfully Recorded.";
                //System.Text.StringBuilder sb = new System.Text.StringBuilder();
                //sb.Append("<script type = 'text/javascript'>");
                //sb.Append("window.onload=function(){");
                //sb.Append("alert('");
                //sb.Append(message);
                //sb.Append("')};");
                //sb.Append("</script>");
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                txtename.Text = " ";
                txtId.Text = " ";
                txteno.Text = " ";
                txtemailid.Text = " ";
                txteadd.Text = " ";
                txteq.Text = " ";
                txtedob.Text = " ";





                
            }
            else
            {
                lblmsg.Text = "Please select a Photo to upload";
                lblmsg.Visible = true;
                
            }
            

        }
    }
}