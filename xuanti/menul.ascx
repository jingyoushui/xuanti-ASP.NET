<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menul.ascx.cs" Inherits="menul" %>
<style type="text/css">
    .style2
    {
        width: 119px;
    }
</style>


<table width="1024" height="180" background ="images/timg.jpg" align="center"  >
    <tr >
        <td align="center" >
            &nbsp;</td>
    </tr>
   </table>

<table width="1024" height="30" cellSpacing="0" cellPadding="0"  border="0" 
    align="center" >
    
    <tr  bgcolor="ffffff"  border="0">
        
        <td align="center" >
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx"  
                Font-Underline="False" font-size="Larger" ForeColor="#007c36" 
                style="font-weight: 700; font-size: large"><font face="微软雅黑" >首页</font></asp:HyperLink>
         </td>
        <td align="center" border="0" class="style2">
            <asp:HyperLink ID="HyperLink2" runat="server"　  Font-Underline="False" 
                font-size="Larger" ForeColor="#007c36" NavigateUrl="~/jwgz.aspx" 
                style="font-size: large; font-weight: 700"><font face="微软雅黑" >教务工作</font></asp:HyperLink>
         </td>
        <td align="center">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/glwj.aspx"  
                Font-Underline="False" font-size="Larger" ForeColor="#007C36" 
                style="font-size: large; font-weight: 700"><font face="微软雅黑" >管理文件</font></asp:HyperLink> 
            </td>
           
        <td align="center">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/jxyj.aspx"  
                Font-Underline="False" font-size="Larger" ForeColor="#007c36" 
                style="font-weight: 700; font-size: large"><font face="微软雅黑" >教学研究</font></asp:HyperLink>
       </td>
        <td align="center">
            <asp:HyperLink ID="HyperLink5" runat="server"  NavigateUrl="~/jwgl.aspx"  
                Font-Underline="False" font-size="Larger" ForeColor="#007c36" 
                style="font-weight: 700; font-size: large"><font face="微软雅黑" >教务管理</font></asp:HyperLink>
          </td>
       
        <td align="center">
            <asp:HyperLink ID="HyperLink6" runat="server"  NavigateUrl="~/sjjx.aspx"  
                Font-Underline="False" font-size="Larger" ForeColor="#007c36" 
                style="font-weight: 700; font-size: large"><font face="微软雅黑" >实践教学</font></asp:HyperLink>
            </td>
             <td align="center">
            <asp:HyperLink ID="HyperLink7" runat="server"  NavigateUrl="~/xkjs.aspx"  
                     Font-Underline="False" font-size="Larger" ForeColor="#007c36" 
                     style="font-size: large; font-weight: 700"><font face="微软雅黑" >学科竞赛</font></asp:HyperLink>
           </td> <td align="center">
            <asp:HyperLink ID="HyperLink8" runat="server"  NavigateUrl="~/sysgl.aspx"  
                Font-Underline="False" font-size="Larger" ForeColor="#007c36" 
                style="font-weight: 700; font-size: large"><font face="微软雅黑" >实验室管理</font></asp:HyperLink>
            </td>
             <td align="center">
            <asp:HyperLink ID="HyperLink9" runat="server"  NavigateUrl="~/cgzs.aspx"  
                     Font-Underline="False" font-size="Larger" ForeColor="#007c36" 
                     style="font-weight: 700; font-size: large"><font face="微软雅黑" >成果展示</font></asp:HyperLink>
            </td>
            <td align="center" >
             <asp:HyperLink ID="HyperLink10" runat="server"  NavigateUrl="~/zlxz.aspx"  
                    Font-Underline="False" font-size="Larger" ForeColor="#007c36" 
                    style="font-size: large; font-weight: 700"><font face="微软雅黑" >资料下载</font></asp:HyperLink>
         </td>
    </tr>
</table>

