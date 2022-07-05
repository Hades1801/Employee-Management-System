<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addEmp.aspx.cs" Inherits="EmployeeManagementSystem.addEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #File1 {
            z-index: 1;
            left: 122px;
            top: 273px;
            position: absolute;
            width: 309px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" BackColor="#0099FF" style="z-index: 1; left: 10px; top: 37px; position: absolute; height: 540px; width: 1195px" BorderWidth="4px">
            <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 0px; top: 97px; position: absolute; height: 368px; width: 1195px" BackColor="White" ForeColor="Black">
                <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 44px; top: 35px; position: absolute" Text="Employee Name:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 597px; top: 166px; position: absolute" Text="Employee Address:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 42px; top: 94px; position: absolute" Text="Employee Mobile No.:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 598px; top: 242px; position: absolute" Text="Employee DOB:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 42px; top: 151px; position: absolute; width: 178px" Text="Designation:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 599px; top: 304px; position: absolute; right: 394px" Text="Employee Gender:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 37px; top: 207px; position: absolute" Text="Employee Qualification:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black"></asp:Label>
                <asp:TextBox ID="txteadd" runat="server" style="z-index: 1; left: 806px; top: 158px; position: absolute; width: 252px" TextMode="MultiLine" MaxLength="50"></asp:TextBox>
                <asp:DropDownList ID="ddldes" runat="server" style="z-index: 1; left: 294px; top: 156px; position: absolute; height: 26px; width: 259px">
                    <asp:ListItem>HR</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Software Engineer</asp:ListItem>
                    <asp:ListItem>Sales</asp:ListItem>
                    <asp:ListItem>Accountant</asp:ListItem>
                    <asp:ListItem>Receptionist</asp:ListItem>
                    <asp:ListItem Value="Marketing Manager">Marketing Manager</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txteno" runat="server" style="z-index: 1; left: 298px; top: 95px; position: absolute; width: 250px"></asp:TextBox>
                <asp:TextBox ID="txteq" runat="server" style="z-index: 1; left: 294px; top: 209px; position: absolute; width: 261px"></asp:TextBox>
                <asp:TextBox ID="txtename" runat="server" style="z-index: 1; left: 300px; top: 36px; position: absolute; width: 250px"></asp:TextBox>
                <asp:TextBox ID="txtedob" runat="server" style="z-index: 1; left: 800px; top: 243px; position: absolute; width: 250px" TextMode="Date"></asp:TextBox>
                <asp:DropDownList ID="ddlege" runat="server" style="z-index: 1; left: 808px; top: 307px; position: absolute; height: 16px; width: 253px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" OnClick="Button1_Click" style="z-index: 1; left: 1018px; top: 388px; position: absolute; height: 36px; width: 105px;" Text="Back" CausesValidation="False" ValidateRequestMode="Disabled" />
                <asp:Button ID="Button2" runat="server" BackColor="White" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" OnClick="Button2_Click"  style="z-index: 1; left: 883px; top: 388px; position: absolute; height: 36px; width: 105px;" Text="Add" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtename" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 570px; top: 39px; position: absolute; width: 9px;"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txteno" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 569px; top: 97px; position: absolute; bottom: 249px"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddldes" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 567px; top: 154px; position: absolute"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txteq" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 569px; top: 209px; position: absolute; height: 22px"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txteadd" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 1075px; top: 169px; position: absolute; width: 13px;"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlege" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 1071px; top: 306px; position: absolute; width: 19px;"></asp:RequiredFieldValidator>
                <asp:Label ID="empid" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 599px; top: 38px; position: absolute" Text="Employee Id:"></asp:Label>
                <asp:TextBox ID="txtId" runat="server" style="z-index: 1; left: 808px; top: 38px; position: absolute; width: 238px"></asp:TextBox>
                <asp:TextBox ID="txtemailid" runat="server" style="z-index: 1; left: 805px; top: 99px; position: absolute; width: 238px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtId" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red" style="z-index: 1; left: 1068px; top: 39px; position: absolute; width: 21px"></asp:RequiredFieldValidator>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" style="z-index: 1; left: 33px; top: 271px; position: absolute" Text="Photo:"></asp:Label>
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 599px; top: 97px; position: absolute" Text="Employee EmailId:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtedob" ErrorMessage="*" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 1072px; top: 246px; position: absolute; width: 17px;"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtemailid" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red" style="z-index: 1; left: 1066px; top: 102px; position: absolute; width: 16px"></asp:RequiredFieldValidator>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" style="z-index: 1; left: 37px; top: 321px; position: absolute" Text="label" Visible="False"></asp:Label>
                <asp:FileUpload ID="fu" runat="server" style="z-index: 1; left: 135px; top: 274px; position: absolute; width: 302px" />
            </asp:Panel>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/emp.png" style="z-index: 1; left: 35px; top: 12px; position: absolute; width: 93px; height: 80px" />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 161px; top: 43px; position: absolute; height: 29px; width: 248px" Text="Add Employee"></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 859px; top: 50px; position: absolute; width: 349px" Text="DeathNote Enterprises"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
