<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 600px;
        }
        .style3
        {
            width: 362px;
        }
        .style4
        {
            color: #FF0066;
        }
    </style>
</head>
<body style="font-family: 微软雅黑">
    <form id="form1" runat="server">
    <div class="style1">
    
     <table class="txt" style="width: 545px; height: 303px; font-family: 微软雅黑;" 
            align="center">
            <tr>
                <td align="center" class="title" colspan="3">
                    文章添加『<asp:Label ID="labTitle" runat="server" Text="Label"></asp:Label>』</td>
            </tr>
            <tr>
                <td class="style3">
                    文章类别：</td>
                <td class="style2">
                    <asp:DropDownList ID="ddlNewsType" runat="server" Width="116px" 
                        AutoPostBack="True" CssClass="css" style="font-family: 微软雅黑">
                        <asp:ListItem Value="1">教务工作</asp:ListItem>
                        <asp:ListItem Value="2">管理文件</asp:ListItem>
                        <asp:ListItem Value="3">教学研究</asp:ListItem>
                        <asp:ListItem Value="4">教务管理</asp:ListItem>
                        <asp:ListItem Value="5">实践教学</asp:ListItem>
                        <asp:ListItem Value="6">学科竞赛</asp:ListItem>
                        <asp:ListItem Value="7">实验室管理</asp:ListItem>
                        <asp:ListItem Value="8">成果展示</asp:ListItem>
                        <asp:ListItem Value="9">资料下载</asp:ListItem>
                        <asp:ListItem Value="10">教务新风</asp:ListItem>
                       
                    </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp; 
                     <asp:DropDownList ID="author" runat="server" Width="116px" AutoPostBack="True" 
                        CssClass="css" style="font-family: 微软雅黑">
                        <asp:ListItem Value="教务部">教务部</asp:ListItem>
                        <asp:ListItem Value="行知学院">行知学院</asp:ListItem>
                        <asp:ListItem Value="jwb">jwb</asp:ListItem>
                        <asp:ListItem Value="张华平">张华平</asp:ListItem>
                        <asp:ListItem Value="xzxy">xzxy</asp:ListItem>
                    </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;
                     </td>
                <td style="width: 85px">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    文章标题：</td>
                <td class="style2">
                    <asp:TextBox ID="txtNewsTitle" runat="server" CssClass="txt" MaxLength="15" Width="200px"></asp:TextBox>(控制在15个字符以内)</td>
                <td style="width: 85px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewsTitle"
                        ErrorMessage="*" CssClass="style4"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="style3">
                    文章内容：</td>
                <td class="style2">
                    <asp:TextBox ID="txtNewsContent" runat="server" Height="211px" TextMode="MultiLine" Width="384px" CssClass="txt"></asp:TextBox></td>
                <td style="width: 85px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewsContent"
                        ErrorMessage="*" CssClass="style4"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td align="center" class="style2">
                    <asp:Button ID="btnAdd" runat="server"  Text="添　加" Width="66px" 
                        onclick="btnAdd_Click" />
                    <asp:Button ID="btnReset" runat="server" CausesValidation="False" 
                        Text="重　置" onclick="btnReset_Click" /></td>
                <td style="width: 85px">
                </td>
            </tr>
        </table>




        <div class="style1">




        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" Text="上传" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
        </div>
    
    </div>
    </form>
</body>
</html>
