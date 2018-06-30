<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xkjs.aspx.cs" Inherits="newslist" %>

<%@ Register src="menul.ascx" tagname="menul" tagprefix="uc1" %>

<%@ Register src="foot.ascx" tagname="foot" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 98px;
        }
        .style4
        {
            width: 100%;
        }
       
        .style6
        {
            width: 108px;
        }
        
        .style9
        {
            width: 181px;
            
        }
        .style10
        {
            font-family: 微软雅黑;
        }
        .style11
        {
            font-size: medium;
        }
        .style12
        {
            font-family: 微软雅黑;
            font-size: small;
        }
        .style13
        {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <%-- 表头 --%> 



    <div style="text-align: center" align="center">
    
        <table width="1024" align="center">
         
      
            <tr>
                
               
                <td align="center" >

                    <table width="1024" align="center">
                        <tr>
                            <td >
                                <uc1:menul ID="menul1" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
               
            </tr> 
            </table >



<table width="1024" align="center">
         
      
            <tr>
                
               
                <td align="center" >

                    <table width="1024" align="center">
                        <tr>
                            <td >
                               <asp:DataList ID="DataList1" runat="server" style=" text-align: center; font-family: 微软雅黑; font-size: small;" 
            onitemcommand="DataList1_ItemCommand">
            <HeaderTemplate>
                <table class="style4"align="center">
                    <tr>
                        <td class="style6">
                            编号</td>
                        <td class="style6">
                            标题</td>
                        <td class="style6">
                            作者</td>
                        <td class="style6">
                              时间</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table align="center" width="1024">

             <tr>
                        <td class="style9">
                            
                        </td>
                        <td>
                          
                        </td>
                        <td class="style2">
                           
                        </td>
                        <td>
                          
                        </td>
                    </tr>


                    <tr>
                        <td class="style9" align="center">           
                          <asp:LinkButton ID="LinkButton1" runat="server" > 
                          <%# Eval("NewsId")%>
                        </asp:LinkButton> 
                        </td>
                        <td>
                        <a href='newsshow.aspx?id=<%# DataBinder.Eval(Container.DataItem,"NewsId") %>' target="_blank">
                            <asp:Label ID="Label2" runat="server" style="color: #339933" ><%# DataBinder.Eval(Container.DataItem, "NewsTitle").ToString().Length < 20 ? (DataBinder.Eval(Container.DataItem, "NewsTitle")) : (DataBinder.Eval(Container.DataItem, "NewsTitle")).ToString().PadRight(20).Substring(0, 20) + "..."%></asp:Label>
                        </a>
                        </td>
                        <td class="style2">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("NewsAuthor") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("NewsTime") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        
        </asp:DataList>
                            </td>
                        </tr>
                    </table>
                </td>
               
            </tr> 
            </table >

      
        <br />
        <br />
        <span class="style12">共 
        </span> 
        <asp:Label ID="labCount" runat="server" Text="Label" CssClass="style12"></asp:Label>
        <span class="style12">&nbsp;页，当前为第 
        </span> 
        <asp:Label ID="labNowPage" runat="server" Text="1" CssClass="style12"></asp:Label>
        <span class="style12">&nbsp;页,&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:LinkButton ID="lnkbtnFirst" runat="server" onclick="lnkbtnFirst_Click1" 
            CssClass="style12">首页</asp:LinkButton>
        <span class="style12">&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:LinkButton ID="lnkbtnFront" runat="server" onclick="lnkbtnFront_Click1" 
            CssClass="style12">上一页</asp:LinkButton>
        <span class="style12">&nbsp;&nbsp;&nbsp;
        </span>
        <asp:LinkButton ID="lnkbtnNext" runat="server" onclick="lnkbtnNext_Click1" 
            CssClass="style12">下一页 </asp:LinkButton>
        <span class="style12">&nbsp;&nbsp;
        </span>
        <asp:LinkButton ID="lnkbtnLast" runat="server" onclick="lnkbtnLast_Click1" 
            CssClass="style12">尾页</asp:LinkButton>
        <span class="style10"><span class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>





    <span class="style11">





    <table width=1024 align="center">
            <tr>
               
                <td >

                    <table width="1024" align="center">
                        <tr>
                            <td style="text-align: center" >
                                <uc2:foot ID="foot1" runat="server" />
                               
                            </td>
                        </tr>
                    </table>
                </td>
               
            </tr>        
        </table>

   

    </form>
</body>
</html>
