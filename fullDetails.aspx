<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fullDetails.aspx.cs" Inherits="EmployeeManagementSystem.fullDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 1px">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 736px; width: 1202px" BackColor="#0099FF" BorderWidth="4px">
            <asp:Panel ID="Panel2" runat="server" BackColor="White" style="z-index: 1; left: 2px; top: 105px; position: absolute; height: 567px; width: 1194px">
                <asp:DropDownList ID="ddleId" runat="server" style="z-index: 1; left: 209px; top: 40px; position: absolute; width: 200px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="empId" DataValueField="empId" OnSelectedIndexChanged="ddleId_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Image ID="empImg" runat="server" style="z-index: 1; left: 871px; top: 96px; position: absolute; height: 186px; width: 190px" Visible="False" BorderWidth="2px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cmpConnectionString %>" SelectCommand="SELECT [empId] FROM [RMemployee]"></asp:SqlDataSource>
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 456px; top: 248px; position: absolute" Text="Date Of Birth:"></asp:Label>
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 871px; top: 62px; position: absolute" Text="Photo:"></asp:Label>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 38px; top: 35px; position: absolute; height: 34px; width: 142px" Text="Employee Id:"></asp:Label>
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 38px; top: 104px; position: absolute" Text="Name:"></asp:Label>
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 36px; top: 169px; position: absolute" Text="Email Id:"></asp:Label>
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 460px; top: 172px; position: absolute" Text="Contact No.:"></asp:Label>
                <asp:Label ID="lblename" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 178px; top: 110px; position: absolute; width: 318px" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lbleno" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 628px; top: 174px; position: absolute" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lbledob" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 629px; top: 252px; position: absolute" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lblequal" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 629px; top: 322px; position: absolute" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lblgen" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 178px; top: 248px; position: absolute" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 37px; top: 384px; position: absolute" Text="Address:"></asp:Label>
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 35px; top: 245px; position: absolute" Text="Gender:"></asp:Label>
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 457px; top: 318px; position: absolute" Text="Qualification:"></asp:Label>
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 33px; top: 315px; position: absolute" Text="Designation:"></asp:Label>
                <asp:Label ID="lblemail" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 177px; top: 172px; position: absolute" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lbledes" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 179px; top: 317px; position: absolute" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lbleadd" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Blue" style="z-index: 1; left: 158px; top: 388px; position: absolute; right: 134px; height: 46px;" Text="Label" Visible="False"></asp:Label>
            </asp:Panel>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/empdetails.png" style="z-index: 1; left: 40px; top: 12px; position: absolute; width: 93px; height: 80px" />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 147px; top: 43px; position: absolute; height: 29px; width: 325px" Text="Employee Full Details"></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 859px; top: 50px; position: absolute; width: 349px" Text="DeathNote Enterprises"></asp:Label>
            <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left: 5px; top: 572px; position: absolute; height: 87px; width: 1188px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="Button1_Click" style="z-index: 1; left: 124px; top: 33px; position: absolute; width: 120px; height: 40px;" Text="Back" />
                <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="Button4_Click" style="z-index: 1; left: 503px; top: 35px; position: absolute; width: 120px; height: 40px" Text="Print" />
                <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 314px; top: 33px; position: absolute; width: 120px; height: 40px" Text="HomePage" OnClick="Button5_Click" />
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
