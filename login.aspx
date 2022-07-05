<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EmployeeManagementSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/cardboard-texture-background.jpg" BorderColor="Black" BorderWidth="4px" style="z-index: 1; left: 10px; top: 37px; position: absolute; height: 462px; width: 1131px">
            <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 90px; top: 176px; position: absolute; height: 126px;" BorderWidth="4px" ImageUrl="~/images/login.png" />
            <asp:Label ID="Id" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" ForeColor="Black" style="z-index: 1; left: 443px; top: 60px; position: absolute" Text="DeathNote Enterprises"></asp:Label>
            <asp:Label ID="pwd" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 309px; top: 249px; position: absolute" Text="Enter Password:"></asp:Label>
            <asp:TextBox ID="txtId" runat="server" Font-Names="Times New Roman" style="z-index: 1; left: 505px; top: 177px; position: absolute; width: 243px" OnTextChanged="txtId_TextChanged"></asp:TextBox>
            <asp:Button ID="btnlogin" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 547px; top: 380px; position: absolute; width: 93px" Text="Login" OnClick="Button1_Click" />
            <asp:TextBox ID="txtpwd" runat="server" style="z-index: 1; left: 504px; top: 252px; position: absolute; width: 245px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red" style="z-index: 1; left: 313px; top: 306px; position: absolute" Text="Invalid UserId or Password." Visible="False"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" NavigateUrl="~/ForgotPassword.aspx" style="z-index: 1; left: 811px; top: 252px; position: absolute">Forgot Password?</asp:HyperLink>
            <asp:Label ID="Id0" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 310px; top: 177px; position: absolute" Text="Enter UserID: "></asp:Label>
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" NavigateUrl="~/AdminRegistration.aspx" style="z-index: 1; left: 814px; top: 306px; position: absolute; right: 188px;">New Admin?</asp:HyperLink>
        </asp:Panel>
    </form>
</body>
</html>
