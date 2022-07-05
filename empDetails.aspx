<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empDetails.aspx.cs" Inherits="EmployeeManagementSystem.empDetails" EnableEventValidation =" false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 10px; top: 15px; position: absolute" Text="Button" />
            <asp:Panel ID="Panel1" runat="server" BackColor="#0099FF" style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 693px; width: 1238px" BorderWidth="4px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 147px; top: 43px; position: absolute; height: 29px; width: 248px" Text="Employee Details"></asp:Label>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/empdetails.png" style="z-index: 1; left: 40px; top: 12px; position: absolute; width: 93px; height: 80px" />
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Font-Underline="True" style="z-index: 1; left: 859px; top: 50px; position: absolute; width: 349px" Text="DeathNote Enterprises"></asp:Label>
            </asp:Panel>
            <asp:HyperLink ID="HyperLink1" runat="server" style="z-index: 1; left: 990px; top: 538px; position: absolute">View full details</asp:HyperLink>
            <asp:Panel ID="Panel2" runat="server" BackColor="White" style="z-index: 1; left: 17px; top: 117px; position: absolute; height: 527px; width: 1235px">
                <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 39px; top: 39px; position: absolute" Text="Employee Id:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 336px; top: 40px; position: absolute" Text="Employee Name:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="txtename" runat="server" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 341px; top: 81px; position: absolute; width: 205px"></asp:TextBox>
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 39px; top: 114px; position: absolute" Text="Employee Phone No.:"></asp:Label>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 336px; top: 114px; position: absolute" Text="Employee Email Id:"></asp:Label>
                <asp:TextBox ID="txteno" runat="server" style="z-index: 1; left: 40px; top: 155px; position: absolute; width: 214px" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" TextMode="Phone"></asp:TextBox>
                <asp:TextBox ID="txteMailId" runat="server" style="z-index: 1; left: 338px; top: 155px; position: absolute; width: 248px" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" TextMode="Email"></asp:TextBox>
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 38px; top: 208px; position: absolute" Text="Employee Designation:"></asp:Label>
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 336px; top: 211px; position: absolute" Text="Employee Qualification:"></asp:Label>
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 47px; top: 310px; position: absolute" Text="Employee Address:"></asp:Label>
                <asp:TextBox ID="txtdes" runat="server" style="z-index: 1; left: 41px; top: 257px; position: absolute; width: 214px" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
                <asp:TextBox ID="txteAdd" runat="server" MaxLength="50" style="z-index: 1; left: 261px; top: 313px; position: absolute; width: 260px;" TextMode="MultiLine" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
                <asp:TextBox ID="txtequali" runat="server" style="z-index: 1; left: 337px; top: 258px; position: absolute; width: 214px" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" style="z-index: 1; left: 38px; top: 402px; position: absolute; height: 36px; width: 105px" Text="Update" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="Button2_Click1" style="z-index: 1; left: 195px; top: 401px; position: absolute; height: 36px; width: 105px" Text="Delete" />
                <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="Button4_Click" style="z-index: 1; left: 352px; top: 402px; position: absolute; height: 36px; width: 105px" Text="Back" />
                <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 236px; top: 462px; position: absolute; height: 45px; width: 180px;" Text="Full Details" OnClick="Button5_Click" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cmpConnectionString %>" SelectCommand="SELECT [empId], [empName], [empDes], [mobNo] FROM [RMemployee]"></asp:SqlDataSource>
                <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" style="z-index: 1; left: 505px; top: 398px; position: absolute; height: 36px; width: 105px;" Text="Refresh" OnClick="Button6_Click" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" style="z-index: 1; left: 724px; top: 75px; position: absolute; height: 241px; width: 433px" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged4">
                    <Columns>
                        <asp:BoundField DataField="empId" HeaderText="empId" SortExpression="empId" />
                        <asp:BoundField DataField="empName" HeaderText="empName" SortExpression="empName" />
                        <asp:BoundField DataField="empDes" HeaderText="empDes" SortExpression="empDes" />
                        <asp:BoundField DataField="mobNo" HeaderText="mobNo" SortExpression="mobNo" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" style="z-index: 1; left: 857px; top: 25px; position: absolute" Text="Employees:"></asp:Label>
                <asp:Label ID="lblId" runat="server" style="z-index: 1; left: 43px; top: 76px; position: absolute" Text="Label" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Visible="False" ForeColor="Blue"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
