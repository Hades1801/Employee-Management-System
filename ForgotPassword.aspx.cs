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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        static string pwd, eid, seca;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btmsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=199.79.62.22;uid=training;pwd=Training@786;database=cmp");
            SqlCommand cmd = new SqlCommand("select pwd,seqt,seqans,emailId from RMadmin where userId=@uid", con);
            cmd.Parameters.AddWithValue("uid", txtId.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    lblsq.Text = dr["seqt"].ToString();
                    eid = dr["emailId"].ToString();
                    seca = dr["seqans"].ToString();
                    pwd = dr["pwd"].ToString();

                }
                lblmsg.Visible = false;
                Panel2.Visible = true;

            }
            else
            {
                txtId.Text = "";
                lblmsg.Visible = true;
                Panel2.Visible = false;
                txtId.Focus();
            }
        }

        protected void btngpwd_Click(object sender, EventArgs e)
        {
            if (txtsa.Text == seca)
            {
                lbl.ForeColor = System.Drawing.Color.Black;
                lbl.Text = "Your Password is " + pwd;


                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("201902010.rolanddrt@student.xavier.ac.in"); //Sender address
                msg.To.Add(eid); //Receiver address
                msg.Subject = "Your Password of DeathNote Enterprises";
                msg.Body = "The password of your Account is " + pwd;

                SmtpClient smtp = new SmtpClient(); //used to send the mail
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("201902010.rolanddrt@student.xavier.ac.in", "roland180102");
                smtp.EnableSsl = true;
                smtp.Send(msg);

                lbl.Text = "Your password has been sent your registered email id";
                lbl.Visible = true;
                Response.Redirect("login.aspx");

            }


            else
            {
                lbl.Text = "Incorrect Security Answer";
                txtsa.Text = "";
                txtsa.Focus();
                lbl.Visible = true;
            }
        }
    }
}