using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem
{
    public partial class empDetails : System.Web.UI.Page
    {
        String eid, ename, des, no, emailId, eAdd, equali;
        SqlConnection con = new SqlConnection("Server=SQL_SERVER_IP;uid=YOUR_UID;pwd=YOUR_PASSWORD;database=DB_NAME");
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("empDetails.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("update RMemployee set empName=@ename,mobNo=@eno,emailId=@mailId,empDes=@edes,empAdd=@eAdd,empquali=@equali where empId=@eid", con);
            cmd.Parameters.AddWithValue("@eid", lblId.Text);
            cmd.Parameters.AddWithValue("@ename", txtename.Text);
            cmd.Parameters.AddWithValue("@eno", txteno.Text);
            cmd.Parameters.AddWithValue("@mailId", txteMailId.Text);
            cmd.Parameters.AddWithValue("@edes", txtdes.Text);
            cmd.Parameters.AddWithValue("@eAdd", txteAdd.Text);
            cmd.Parameters.AddWithValue("@equali", txtequali.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Details have been updated successfully');</script>");
            
            Response.Redirect("empDetails.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("fullDetails.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            

           



        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from RMemployee where empId = @eid", con);
            SqlCommand cmmd = new SqlCommand("delete from RMattendance where empId = @eid", con);
            cmd.Parameters.AddWithValue("eid", lblId.Text);
            cmmd.Parameters.AddWithValue("eid", lblId.Text);
            con.Open();
            cmmd.ExecuteNonQuery();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("empDetails.aspx");
        }




        protected void GridView1_SelectedIndexChanged4(object sender, EventArgs e)
        {

            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                    
                    eid = row.Cells[0].Text;
                    ename = row.Cells[1].Text;
                    des = row.Cells[2].Text;
                    no = row.Cells[3].Text;
                    SqlCommand cmd = new SqlCommand("select emailId,empAdd,empquali from RMemployee where empId=@eid", con);
                    cmd.Parameters.AddWithValue("eid", eid);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        if (dr.Read())
                        {
                            emailId = dr["emailId"].ToString();
                            eAdd = dr["empAdd"].ToString();
                            equali = dr["empquali"].ToString();
                            
                        }
                    }
                    lblId.Text = eid;
                    txtename.Text = ename;
                    txteno.Text = no;
                    txtdes.Text = des;
                    txteMailId.Text = emailId;
                    txteAdd.Text = eAdd;
                    txtequali.Text = equali;
                    lblId.Visible = true;              
                    
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                    e.Row.ToolTip = "Click to Select this row.";
                }

            
            
        }
    }
}
