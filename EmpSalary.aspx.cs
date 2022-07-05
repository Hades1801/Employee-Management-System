using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem
{
    public partial class test : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=SQL_SERVER_IP;uid=YOUR_UID;pwd=YOUR_PASSWORD;database=DB_NAME");
        SqlConnection con1 = new SqlConnection("Server=SQL_SERVER_IP;uid=YOUR_UID;pwd=YOUR_PASSWORD;database=DB_NAME");
        static string workeddays, ename, edes;
        static int DailyBasic, total;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Session["ctrl"] = Panel4;
            ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=1000px,width=1000px,scrollbars=1');</script>");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Session["ctrl"] = Panel4;
            ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=1000px,width=1000px,scrollbars=1');</script>");


        }

        protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select empName,empDes from RMemployee where empId=@eid", con);
            cmd.Parameters.AddWithValue("eid", ddlId.SelectedItem.Text);
            SqlCommand cmmd = new SqlCommand("select empPresent from RMattendance where empId=@eid", con1);
            cmmd.Parameters.AddWithValue("eid", ddlId.SelectedItem.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    ename = dr["empName"].ToString();
                    edes = dr["empDes"].ToString();

                }
            }
            con1.Open();
            SqlDataReader dr1 = cmmd.ExecuteReader();
            if (dr1.HasRows)
            {
                if (dr1.Read())
                {
                    workeddays = dr1["empPresent"].ToString();


                }
            }
            if (edes == "HR")
            {
                DailyBasic = 900;
            }
            else if (edes == "Manager")
            {
                DailyBasic = 500;
            }
            else if (edes == "Software Engineer")
            {
                DailyBasic = 1000;
            }
            else if (edes == "Sales" || edes == "Marketing Manager")
            {
                DailyBasic = 600;
            }
            else if (edes == "Accountant")
            {
                DailyBasic = 900;
            }
            else if (edes == "Receptionist")
            {
                DailyBasic = 400;
            }
            lblename.Text = ename;
            lbledes.Text = edes;
            lbldays.Text = workeddays;
            lblebas.Text = DailyBasic.ToString();
            lblename.Visible = true;
            lbledes.Visible = true;
            lblebas.Visible = true;
            lbldays.Visible = true;
        }
    }
}
