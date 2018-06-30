<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_add.aspx.cs" Inherits="admin_student_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div style="width:100% ;height:20px;text-align:center;padding-top:10px;padding-bottom:10px;">
           学生信息添加
        </div>
       <asp:Table BorderStyle="Solid" Width="100%" GridLines="horizontal"  HorizontalAlign="Center" runat="server">
            <asp:TableRow BorderStyle="Solid" Height="50px" runat="server">
                  <asp:TableCell Width="30%" HorizontalAlign="Center" runat="server">学号</asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" runat="server"><asp:TextBox id="stu_id" Width="250px" runat="server"></asp:TextBox></asp:TableCell>
              
            </asp:TableRow>
              <asp:TableRow BorderStyle="Solid" Height="50px" runat="server">
                  <asp:TableCell  Width="30%" HorizontalAlign="Center" runat="server">姓名</asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" runat="server"><asp:TextBox id="stu_name" Width="250px" runat="server"></asp:TextBox></asp:TableCell>
              
            </asp:TableRow>
            <asp:TableRow BorderStyle="Solid"  Height="50px" runat="server">
                  <asp:TableCell  Width="30%" HorizontalAlign="Center" runat="server">密码</asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" runat="server"><asp:TextBox TextMode="password"  Width="250px" id="stu_pwd" runat="server"></asp:TextBox></asp:TableCell>
              
            </asp:TableRow>
             <asp:TableRow BorderStyle="Solid" Height="50px" runat="server">
                  <asp:TableCell  Width="30%" HorizontalAlign="Center" runat="server">班级</asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" runat="server"><asp:TextBox   Width="250px" id="class_id" runat="server"></asp:TextBox></asp:TableCell>
              
            </asp:TableRow>
            <asp:TableRow BorderStyle="Solid" Height="50px"  runat="server">
               
                  <asp:TableCell  Width="30%" HorizontalAlign="Center" runat="server"> <asp:Button ID="tea_add"  Width="200px" runat="server" Text="提交" 
                        OnClick="btnLogin_Click" style="font-family: 微软雅黑; font-size: small"/></asp:TableCell>
              
            </asp:TableRow>

        </asp:Table>
    </form>
</body>
</html>
