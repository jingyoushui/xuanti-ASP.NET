<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu1.aspx.cs" Inherits="student_stu1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 100%; height: 20px; text-align: center; padding-top: 10px; padding-bottom: 10px;">
            学生个人信息管理
        </div>
        <div>

            <asp:GridView ID="g1" Width="100%" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnRowCancelingEdit="g1_RowCancelingEdit" OnRowEditing="g1_RowEditing" OnRowUpdating="g1_RowUpdating">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="stu_id" HeaderText="学号" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="stu_name" HeaderText="学生姓名" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="stu_pwd" HeaderText="密码" ItemStyle-HorizontalAlign="Center" />
                     <asp:BoundField DataField="class_id" HeaderText="班级" ItemStyle-HorizontalAlign="Center" />
                    <asp:CommandField HeaderText="操作" ShowEditButton="True" ItemStyle-HorizontalAlign="Center" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_xzjwbConnectionString %>" SelectCommand="SELECT * FROM [admin]" UpdateCommand="UPDATE admin SET Password = '111111' WHERE (Name = 'admin')"></asp:SqlDataSource>

        </div>
    </form>
    
</body>
</html>
