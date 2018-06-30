<%@ Page Language="C#" AutoEventWireup="true" CodeFile="proj_select.aspx.cs" Inherits="teacher_proj_select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100% ;height:20px;text-align:center;padding-top:10px;">
            所有课题管理
        </div>
         <div  style="padding-top:10px;text-align:center">输入课题号：
        <asp:TextBox id="proj_no" Width="250px" runat="server"></asp:TextBox>

            <asp:Button ID="proj_sel"  Width="200px" runat="server" Text="搜索" OnClick="btnSel_Click" />
        </div>
        <div style="padding-top:10px;">
           </div>
        <asp:GridView ID="g1" Width="100%" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnRowCancelingEdit="g1_RowCancelingEdit" OnRowEditing="g1_RowEditing" OnRowUpdating="g1_RowUpdating" OnRowDeleting="g1_RowDeleting"  >
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="proj_id" HeaderText="课题编号" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="proj_name" HeaderText="课题名称" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="proj_type" HeaderText="课题类型" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="proj_grade" HeaderText="难易程度" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="tea_id" HeaderText="老师工号" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="proj_zhuang" HeaderText="审核状态" ItemStyle-HorizontalAlign="Center"/>
                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" ItemStyle-HorizontalAlign="Center"/>
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
