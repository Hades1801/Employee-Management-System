<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpSalary.aspx.cs" Inherits="EmployeeManagementSystem.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 668px">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 469px; width: 1202px">
            <asp:Panel ID="Panel2" runat="server" BackColor="#0099FF" BorderWidth="4px" style="z-index: 1; left: 16px; top: 15px; position: absolute; height: 686px; width: 1238px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/sal.png" style="z-index: 1; left: 40px; top: 12px; position: absolute; width: 93px; height: 80px" />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 147px; top: 43px; position: absolute; height: 29px; width: 248px" Text="Employee Salary"></asp:Label>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 859px; top: 50px; position: absolute; width: 349px" Text="DeathNote Enterprises"></asp:Label>
                <asp:Panel ID="Panel5" runat="server" BackColor="White" style="z-index: 1; left: 5px; top: 129px; position: absolute; height: 468px; width: 1232px">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 463px; top: 29px; position: absolute" Text="Employee Id:"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 125px; top: 152px; position: absolute" Text="Employee Name:"></asp:Label>
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 120px; top: 225px; position: absolute" Text="Daily Basic:"></asp:Label>
                    <asp:DropDownList ID="ddlId" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="empId" DataValueField="empId" OnSelectedIndexChanged="ddlId_SelectedIndexChanged" style="z-index: 1; left: 418px; top: 80px; position: absolute; height: 19px; width: 215px">
                    </asp:DropDownList>
                    <asp:Label ID="lblename" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 330px; top: 155px; position: absolute" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lblebas" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 323px; top: 230px; position: absolute" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 655px; top: 155px; position: absolute" Text="Employee Designation:"></asp:Label>
                    <asp:Label ID="lbledes" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 917px; top: 158px; position: absolute" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 658px; top: 227px; position: absolute" Text="Days Worked:"></asp:Label>
                    <asp:Label ID="lbldays" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 919px; top: 225px; position: absolute" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="Button2_Click" style="z-index: 1; left: 307px; top: 377px; position: absolute; width: 105px; height: 39px" Text="View" />
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="Button3_Click" style="z-index: 1; left: 758px; top: 380px; position: absolute; height: 40px; width: 120px" Text="Back" />
                </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cmpConnectionString %>" SelectCommand="SELECT [empId] FROM [RMemployee]"></asp:SqlDataSource>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
