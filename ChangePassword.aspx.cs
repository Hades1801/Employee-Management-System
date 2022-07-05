using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        static string eid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncngpwd_Click(object sender, EventArgs e)
        {
            string pwd = Session["pwd"].ToString();
            if (txtopwd.Text != pwd)
            {
                txtopwd.Text = "";
                txtopwd.Focus();
                lbl.Text = "Incorrect Old Password";
                lbl.Visible = true;
            }
            else
            {
                SqlConnection con = new SqlConnection("Server=199.79.62.22;uid=training;pwd=Training@786;database=cmp");
                SqlCommand cmd = new SqlCommand("update RMadmin set pwd=@pwd where userId=@uid", con);
                cmd.Parameters.AddWithValue("@pwd", txtnpwd.Text);
                cmd.Parameters.AddWithValue("@uid", Session["userId"]);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                txtopwd.Text = "";
                txtnpwd.Text = "";
                txtcnpwd.Text = "";
                Response.Write("<script>alert('Password has been changed Successfully');</script>");
                SqlCommand cmmd = new SqlCommand("select pwd, emailId from RMadmin where userId=@uid", con);
                cmmd.Parameters.AddWithValue("uid", Session["userId"]);
                con.Open();
                SqlDataReader dr = cmmd.ExecuteReader();
                if (dr.HasRows)
                {
                    if (dr.Read())
                    {
                       eid = dr["emailId"].ToString();
                       pwd = dr["pwd"].ToString();
                        MailMessage msg = new MailMessage();
                        msg.From = new MailAddress("201902010.rolanddrt@student.xavier.ac.in"); //Sender address
                        msg.To.Add(eid); //Receiver address
                        msg.Subject = "Your Password of DeathNote Enterprises";
                        msg.Body = "The password of your Account has been changed and the new password is " + pwd + ".\n\n Please change your Password if it was not done by you. \n\n\n\n Regards DeathNote Enterprises.";
                       
                        SmtpClient smtp = new SmtpClient(); //used to send the mail
                        smtp.Host = "smtp.gmail.com";
                        smtp.Port = 587;
                        smtp.Credentials = new System.Net.NetworkCredential("201902010.rolanddrt@student.xavier.ac.in", "roland180102");
                        smtp.EnableSsl = true;
                        smtp.Send(msg);
                        Response.Redirect("login.aspx");
                    }

                }
            }
            
        }



            
        }
    }
