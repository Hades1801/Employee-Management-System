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
            SqlConnection con = new SqlConnection("Server=SQL_SERVER_IP;uid=YOUR_UID;pwd=YOUR_PASSWORD;database=DB_NAME");
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
                msg.From = new MailAddress("YOUR_MAIL_ID"); //Sender address
                msg.To.Add(eid); //Receiver address
                msg.Subject = "Your Password of COMPANY_NAME";
                msg.Body = "The password of your Account is " + pwd;

                SmtpClient smtp = new SmtpClient(); //used to send the mail
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("YOUR_MAIL_ID", "YOUR_PASSWORD");
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
