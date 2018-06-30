<%@ Page Language="C#" AutoEventWireup="true" CodeFile="proj_add.aspx.cs" Inherits="teacher_proj_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100% ;height:20px;text-align:center;padding-top:10px;padding-bottom:10px;">
           课题信息添加
        </div>
       <asp:Table BorderStyle="Solid" Width="100%" GridLines="horizontal"  HorizontalAlign="Center" runat="server">
            <asp:TableRow BorderStyle="Solid" Height="50px" runat="server">
                  <asp:TableCell Width="30%" HorizontalAlign="Center" runat="server">课题编号</asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" runat="server"><asp:TextBox id="proj_id" Width="250px" runat="server"></asp:TextBox></asp:TableCell>
              
            </asp:TableRow>
              <asp:TableRow BorderStyle="Solid" Height="50px" runat="server">
                  <asp:TableCell  Width="30%" HorizontalAlign="Center" runat="server">课题名称</asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" runat="server"><asp:TextBox id="proj_name" Width="250px" runat="server"></asp:TextBox></asp:TableCell>
              
            </asp:TableRow>
            <asp:TableRow BorderStyle="Solid"  Height="50px" runat="server">
                  <asp:TableCell  Width="30%" HorizontalAlign="Center" runat="server">课题类型</asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" runat="server"><asp:TextBox id="proj_type" Width="250px" runat="server"></asp:TextBox></asp:TableCell>
              
            </asp:TableRow>
             <asp:TableRow BorderStyle="Solid" Height="50px" runat="server">
                  <asp:TableCell  Width="30%" HorizontalAlign="Center" runat="server">难易程度</asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" runat="server">
                     <asp:DropDownList ID="proj_grade"   Width="250px" runat="server">
                            <asp:ListItem Value="简单">简单</asp:ListItem>
                            <asp:ListItem Value="中等">中等</asp:ListItem>
                            <asp:ListItem Value="困难">困难</asp:ListItem>
                        </asp:DropDownList>
               

                </asp:TableCell>
              
            </asp:TableRow>
           
            <asp:TableRow BorderStyle="Solid" Height="50px"  runat="server">
               
                  <asp:TableCell  Width="30%" HorizontalAlign="Center" runat="server"> <asp:Button ID="tea_add"  Width="200px" runat="server" Text="提交" 
                        OnClick="btnLogin_Click" style="font-family: 微软雅黑; font-size: small"/></asp:TableCell>
              
            </asp:TableRow>

        </asp:Table>
    </form>
</body>
</html>
