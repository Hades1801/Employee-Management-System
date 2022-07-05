<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="EmployeeManagementSystem.AdminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 22px; width: 1131px">
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/images/registration.jpg" BorderWidth="4px" style="z-index: 1; left: 10px; top: 37px; position: absolute; height: 910px; width: 1131px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 60px; top: 138px; position: absolute; height: 30px; width: 178px;" Text="Enter Full name:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 371px; top: 42px; position: absolute" Text="Admin Registration Page"></asp:Label>
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 46px; top: 609px; position: absolute" Text="Select Security Question:"></asp:Label>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 47px; top: 665px; position: absolute" Text="Enter Security Answer: "></asp:Label>
            <asp:TextBox ID="txtId" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" style="z-index: 1; left: 323px; top: 202px; position: absolute; width: 304px"></asp:TextBox>
            <asp:TextBox ID="txtmail" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" style="z-index: 1; left: 323px; top: 256px; position: absolute; width: 304px" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="txtno" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" style="z-index: 1; left: 324px; top: 309px; position: absolute; width: 299px" TextMode="Phone"></asp:TextBox>
            <asp:TextBox ID="txtpwd" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" style="z-index: 1; left: 324px; top: 488px; position: absolute; width: 300px" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtcpwd" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" style="z-index: 1; left: 324px; top: 555px; position: absolute; width: 297px" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtsans" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" style="z-index: 1; left: 322px; top: 668px; position: absolute; width: 294px"></asp:TextBox>
            <asp:DropDownList ID="ddlsqt" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="z-index: 1; left: 326px; top: 612px; position: absolute; height: 23px; width: 305px">
                <asp:ListItem>What is your Father&#39;s Name?</asp:ListItem>
                <asp:ListItem>What is your Mother&#39;s Name?</asp:ListItem>
                <asp:ListItem>What is your Favourite Food?</asp:ListItem>
                <asp:ListItem>Your First Vehicle?</asp:ListItem>
                <asp:ListItem>Your School Name?</asp:ListItem>
                <asp:ListItem>Your Birthplace?</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 662px; top: 139px; position: absolute; width: 23px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtId" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 662px; top: 204px; position: absolute; width: 29px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmail" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 662px; top: 258px; position: absolute; width: 17px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtno" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 662px; top: 311px; position: absolute; width: 28px;"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsans" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 665px; top: 671px; position: absolute; width: 18px; right: 448px"></asp:RequiredFieldValidator>
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 59px; top: 204px; position: absolute" Text="Enter UserId:"></asp:Label>
            <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 51px; top: 555px; position: absolute" Text="Confirm Password:"></asp:Label>
            <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 52px; top: 487px; position: absolute" Text="Enter Password:"></asp:Label>
            <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 58px; top: 308px; position: absolute" Text="Enter Mobile Number:"></asp:Label>
            <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 58px; top: 256px; position: absolute" Text="Enter EmailID:"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcpwd" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 660px; top: 555px; position: absolute; width: 16px"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtcpwd" ErrorMessage="Confirm Password &amp; Entered Password do not match" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 678px; top: 557px; position: absolute"></asp:CompareValidator>
            <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 57px; top: 372px; position: absolute" Text="Gender: "></asp:Label>
            <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 54px; top: 420px; position: absolute" Text="Date of Birth: "></asp:Label>
            <asp:TextBox ID="txtdob" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" style="z-index: 1; left: 325px; top: 420px; position: absolute; width: 298px" TextMode="Date" OnTextChanged="txtdob_TextChanged"></asp:TextBox>
            <asp:DropDownList ID="ddlgender" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" style="z-index: 1; left: 324px; top: 374px; position: absolute; height: 19px; width: 300px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtname" runat="server" style="z-index: 1; left: 322px; top: 138px; position: absolute; width: 302px; height: 25px;" BackColor="White" Font-Bold="False" ForeColor="Black" OnTextChanged="txtname_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpwd" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 659px; top: 494px; position: absolute; width: 22px; right: 450px;"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlgender" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 663px; top: 375px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtdob" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 658px; top: 423px; position: absolute"></asp:RequiredFieldValidator>
            <asp:Button ID="btnreg" runat="server" ForeColor="Black" OnClick="Button2_Click" style="z-index: 1; left: 399px; top: 736px; position: absolute; height: 46px; width: 116px" Text="Register" />
        </asp:Panel>
    </form>
</body>
</html>
