<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_select.aspx.cs" Inherits="admin_teacher_select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div style="width:100% ;height:20px;text-align:center;padding-top:10px;">
            教师信息查询
        </div>
        <div  style="padding-top:10px;text-align:center">输入老师工号：
        <asp:TextBox id="tea_no" Width="250px" runat="server"></asp:TextBox>

            <asp:Button ID="tea_sel"  Width="200px" runat="server" Text="搜索" OnClick="btnSel_Click" />
        </div>
        <div style="padding-top:10px;"></div>
        <asp:GridView ID="g1" Width="100%" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"  OnRowCancelingEdit="g1_RowCancelingEdit" OnRowEditing="g1_RowEditing" OnRowUpdating="g1_RowUpdating" OnRowDeleting="g1_RowDeleting" >
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="tea_id" HeaderText="老师工号" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="tea_name" HeaderText="老师姓名" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="tea_pwd" HeaderText="老师密码"  ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="major_id" HeaderText="老师专业"  ItemStyle-HorizontalAlign="Center"/>
                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True"  ItemStyle-HorizontalAlign="Center"/>
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
    </form>
</body>
</html>
