<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login2.aspx.cs" Inherits="login2" %>

<!DOCTYPE html>

<html>
<head>
<title>后台管理</title>
<link type="text/css" href="./css/index.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            width: 85px;
        }
        .auto-style3 {
            height: 22px;
            width: 85px;
        }
    </style>
</head>
<script type="text/javascript" src="js/jQuery1.9.1.js"></script>
<body>
	<div class="cen">
		<div class="cen1">毕业设计选题系统</div>
		<div class="cen2">
			<form id="form1" runat="server"   >
				<div class="login1">管理员登陆</div>
                <div >
                <table text-align: center;>
				<tr class="login1">
					 <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="账号："></asp:Label></td>
					<td> <asp:TextBox ID="txtAdminName" runat="server" Height="18px" Width="214px" ></asp:TextBox></td>
				</tr>
				<tr class="login1">
					<td class="auto-style3"><asp:Label ID="Label2" runat="server" Text="密码："></asp:Label></td>
					<td class="auto-style1"><asp:TextBox ID="txtAdminPwd" runat="server" TextMode="Password" Width="213px" 
                        Height="18px" style="margin-left: 0px"></asp:TextBox></td>
                </tr>
				    
				<tr class="login1">
                     <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="类型："></asp:Label></td>
					<td>
                        <asp:RadioButtonList ID="type" runat="server">
                            <asp:ListItem Value="student">学生</asp:ListItem>
                            <asp:ListItem Value="teacher">教师</asp:ListItem>
                            <asp:ListItem Value="admin">管理员</asp:ListItem>
                        </asp:RadioButtonList>
                     </td>
				</tr>
				</table>
			</div>

                <div class="login1">
					
					<asp:Button ID="btnLogin" runat="server" Text="登录" 
                        OnClick="btnLogin_Click" style="font-family: 微软雅黑; font-size: small"/>
				</div>
				
			</form>
		</div>
	</div>

</body>
</html>
