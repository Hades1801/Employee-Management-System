using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagementSystem
{
    public partial class fullDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=199.79.62.22;uid=training;pwd=Training@786;database=cmp");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("empDetails.aspx");
        }

        protected void ddleId_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from RMemployee where empId=@eid", con);
            cmd.Parameters.AddWithValue("eid", ddleId.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    byte[] imageData = (byte[])dr["empImage"];
                    String img = Convert.ToBase64String(imageData, 0, imageData.Length);
                    empImg.ImageUrl = "data:image/png;base64," + img;
                    empImg.Visible = true;
                    lblename.Text = dr[0].ToString();
                    lblemail.Text = dr[3].ToString();
                    lbleno.Text = dr[2].ToString();
                    lbledes.Text = dr[4].ToString();
                    lblequal.Text = dr[6].ToString();
                    lblgen.Text = dr[8].ToString();
                    //string sdate = dr[7].ToString();

                    //DateTime ndate = new DateTime();
                    //ndate = DateTime.ParseExact(sdate, "yyyy/MM/dd", null);
                    //String date = ndate.ToString("dd/MM/yyyy");
                    DateTime sdate = (DateTime)dr[7];
                    string date = sdate.ToString("dd-MM-yyyy");
                    lbledob.Text = date;
                    lbleadd.Text = dr[5].ToString();
                    lblename.Visible = true;
                    lblemail.Visible = true;
                    lbledes.Visible = true;
                    lbleno.Visible = true;
                    lbledob.Visible = true;
                    lblgen.Visible = true;
                    lblequal.Visible = true;
                    lbleadd.Visible = true;

                }
                

            }
                      con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["ctrl"] = Panel2;
            ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=1000px,width=1000px,scrollbars=1');</script>");

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");
        }
    }
}