<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="EmployeeManagementSystem.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BorderWidth="4px" style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 387px; width: 1131px" BackImageUrl="~/images/image.jpg">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpwd" ControlToValidate="txtcnpwd" ErrorMessage="*Confirm Password and New Password do not match." Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red" style="z-index: 1; left: 538px; top: 220px; position: absolute"></asp:CompareValidator>
                <asp:Button ID="btncngpwd" runat="server" Font-Bold="True" Font-Names="Times New Roman" style="z-index: 1; left: 40px; top: 276px; position: absolute; right: 910px" Text="Change Password" OnClick="btncngpwd_Click" />
                <asp:TextBox ID="txtopwd" runat="server" style="z-index: 1; left: 274px; top: 117px; position: absolute; width: 213px" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="txtnpwd" runat="server" style="z-index: 1; left: 275px; top: 166px; position: absolute; width: 214px; right: 642px" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="txtcnpwd" runat="server" style="z-index: 1; left: 274px; top: 220px; position: absolute; width: 212px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtopwd" ControlToValidate="txtnpwd" ErrorMessage="*New Password should not be same as Old Password" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red" Operator="NotEqual" style="z-index: 1; left: 540px; top: 165px; position: absolute"></asp:CompareValidator>
            </asp:Panel>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 42px; top: 135px; position: absolute" Text="Enter Old Password:"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 37px; top: 186px; position: absolute" Text="Enter New Password:"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 40px; top: 237px; position: absolute" Text="Confirm Password:"></asp:Label>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 423px; top: 53px; position: absolute" Text="Change Password"></asp:Label>
            <asp:Label ID="lbl" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 556px; top: 137px; position: absolute; right: 611px;" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
