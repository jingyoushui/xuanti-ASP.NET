<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_proj_list.aspx.cs" Inherits="teacher_stu_proj_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100% ;height:20px;text-align:center;padding-top:10px;">
            所有选题管理
        </div>
         <div  style="padding-top:10px;text-align:center">输入课题号：
        <asp:TextBox id="proj_no" Width="250px" runat="server"></asp:TextBox>

            <asp:Button ID="proj_sel"  Width="200px" runat="server" Text="搜索" OnClick="btnSel_Click" />
        </div>
         <div style="padding-top:10px;"></div>
        <asp:GridView ID="g1" Width="100%"   HorizontalAlign="Center" runat="server" CellPadding="3" GridLines="Horizontal" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" OnRowCancelingEdit="g1_RowCancelingEdit" OnRowEditing="g1_RowEditing" OnRowUpdating="g1_RowUpdating" OnRowDeleting="g1_RowDeleting"  >
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="老师工号" HeaderText="老师工号" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="学号" HeaderText="学号" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="课题号" HeaderText="课题号" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="学生姓名" HeaderText="学生姓名" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="班级" HeaderText="班级" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="专业" HeaderText="专业" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="课题名" HeaderText="课题名" ItemStyle-HorizontalAlign="Center">
                
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                
                <asp:BoundField DataField="课题类型" HeaderText="课题类型" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="难易程度" HeaderText="难易程度" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="志愿" HeaderText="志愿" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="是否通过" HeaderText="是否通过" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
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
