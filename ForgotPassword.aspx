<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="EmployeeManagementSystem.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BorderWidth="4px" style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 220px; width: 1131px" BackImageUrl="~/images/seamless-pattern-background-vector-vintage-foral-design-text.jpg">
                <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 36px; top: 75px; position: absolute" Text="Enter UserID:" Font-Names="Times New Roman" Font-Bold="True"></asp:Label>
                <asp:Button ID="btnsubmit" runat="server" Font-Names="Times New Roman" style="z-index: 1; left: 62px; top: 151px; position: absolute; height: 43px; width: 109px" Text="Submit" Font-Bold="True" OnClick="btmsubmit_Click" />
                <asp:TextBox ID="txtId" runat="server" style="z-index: 1; left: 200px; top: 75px; position: absolute; width: 293px"></asp:TextBox>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" style="z-index: 1; left: 540px; top: 75px; position: absolute" Text="Invalid UserId" Visible="False"></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 446px; top: 21px; position: absolute" Text="Forgot Password"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" BorderWidth="4px" style="z-index: 1; left: 10px; top: 247px; position: absolute; height: 209px; width: 1131px" Visible="False" BackImageUrl="~/images/seamless-pattern-background-vector-vintage-foral-design-text.jpg">
                <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 33px; top: 28px; position: absolute" Text="Your Security Question: " Font-Names="Times New Roman" Font-Bold="True"></asp:Label>
                <asp:Label ID="lblsq" runat="server" Font-Names="Times New Roman" style="z-index: 1; left: 254px; top: 32px; position: absolute" Text="Label" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label5" runat="server" Font-Names="Times New Roman" style="z-index: 1; left: 34px; top: 69px; position: absolute" Text="Enter Security Answer:" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtsa" runat="server" style="z-index: 1; left: 245px; top: 70px; position: absolute; width: 218px"></asp:TextBox>
                <asp:Button ID="btngpwd" runat="server" Font-Names="Times New Roman" style="z-index: 1; left: 34px; top: 121px; position: absolute; width: 166px; height: 29px;" Text="Get Password" Font-Bold="True" OnClick="btngpwd_Click" />
                <asp:Label ID="lbl" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red" style="z-index: 1; left: 38px; top: 169px; position: absolute" Text="Label" Visible="False"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
