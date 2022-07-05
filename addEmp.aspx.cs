﻿using System;
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
                SqlConnection con = new SqlConnection("Server=SQL_SERVER_IP;uid=YOUR_UID;pwd=YOUR_PASSWORD;database=DB_NAME");
                SqlCommand cmd = new SqlCommand("insert into RMemployee values(@ename,@eId,@eNo,@Email,@eDes,@eAdd,@eQuali,@eDob,@eGen,@eimage)", con);
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
