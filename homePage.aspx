<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="EmployeeManagementSystem.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 968px; top: 380px; position: absolute" Text="Employee Salary" Font-Bold="True" Font-Size="Large"></asp:Label>
            <asp:Panel ID="Panel1" runat="server" BorderWidth="4px" style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 539px; width: 1195px">
                <asp:ImageButton ID="ImageButton1" runat="server" style="z-index: 1; left: 119px; top: 209px; position: absolute; height: 106px; width: 105px;" BorderWidth="4px" ImageUrl="~/images/employee.png" OnClick="ImageButton1_Click" />
                <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 107px; top: 356px; position: absolute" Text="Add Employee" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:Panel ID="Panel2" runat="server" BackColor="#0099FF" style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 127px; width: 1195px">
                    <asp:Label ID="Label5" runat="server" BackColor="#FF9933" BorderWidth="4px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 389px; top: 44px; position: absolute" Text="DeathNote Enterprises HomePage"></asp:Label>
                    <asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Font-Underline="True" ForeColor="Black" style="z-index: 1; left: 994px; top: 60px; position: absolute; width: 229px; height: 35px" Text="Label"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 914px; top: 60px; position: absolute" Text="Admin:"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server" BackColor="#0099FF" style="z-index: 1; left: 1px; top: 483px; position: absolute; height: 55px; width: 1194px">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" OnClick="LinkButton1_Click" style="z-index: 1; left: 1115px; top: 18px; position: absolute">Logout</asp:LinkButton>
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/cpwd1.png" OnClick="ImageButton5_Click" style="z-index: 1; left: 47px; top: 6px; position: absolute; height: 47px" />
                </asp:Panel>
                <asp:ImageButton ID="ImageButton2" runat="server" BorderWidth="4px" ImageUrl="~/images/empdetails1.png" style="z-index: 1; left: 396px; top: 213px; position: absolute; height: 106px; width: 105px" OnClick="ImageButton2_Click" />
                <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 368px; top: 356px; position: absolute" Text="Manage employees" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:ImageButton ID="ImageButton3" runat="server" BorderWidth="4px" ImageUrl="~/images/salary.png" style="z-index: 1; left: 972px; top: 214px; position: absolute; height: 106px; width: 105px" OnClick="ImageButton3_Click" />
                <asp:ImageButton ID="ImageButton4" runat="server" AlternateText="Logout" ImageUrl="~/images/logout1.png" OnClick="ImageButton4_Click1" style="z-index: 1; left: 1051px; top: 490px; position: absolute; height: 43px; width: 63px" />
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" OnClick="LinkButton2_Click" style="z-index: 1; left: 92px; top: 501px; position: absolute">Change Password</asp:LinkButton>
                <asp:ImageButton ID="ImageButton6" runat="server" BorderWidth="4px" ImageUrl="~/images/empdetails.png" OnClick="ImageButton6_Click1" style="z-index: 1; left: 692px; top: 216px; position: absolute; height: 106px; width: 105px; bottom: 209px" />
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 671px; top: 359px; position: absolute" Text="Employee Details"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
