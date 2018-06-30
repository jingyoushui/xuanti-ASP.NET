<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsshow.aspx.cs" Inherits="_Default" %>

<%@ Register src="menul.ascx" tagname="menul" tagprefix="uc1" %>

<%@ Register src="foot.ascx" tagname="foot" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style6
        {
            height: 27px;
        }
        .style7
        {
            width: 100%;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
  


         
        <%-- 表头--%> 
            <table width="1024" align="center">
         
      
            <tr>
                
               
                <td >

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
           
       <%--表格中间部分 --%>   
       
        <TABLE border=0 align=center cellPadding=0 
cellSpacing=0  style="width: 1024px" 
>
  <TBODY>
    <tr>
        <td>
    <asp:DataList ID="DLcontent" runat="server" RepeatColumns="1" style="font-family: 微软雅黑">
      <ItemTemplate>
                
<TABLE height="280" border=0  cellPadding=0 cellSpacing=0 style="width: 1024px">
  <!--DWLayoutTable-->
  <TBODY>
    <TR>
      <TD align="left" valign="top" bgcolor="#ffffff" style="height: 280px"><table width="1024" border="0" align="center" cellpadding="5" cellspacing="0">
          <tr>
            <td width="1024">
              <div align="center"><b><font color=#008374 size="4"><%# DataBinder.Eval(Container.DataItem, "NewsTitle")%></font></b>
                  <hr size="1" color="#0a778b" width="100%">
               <span style=" font-size:13px;">发布时间：<%# DataBinder.Eval(Container.DataItem, "NewsTime")%>&nbsp;&nbsp;&nbsp; 被阅览数：<%# DataBinder.Eval(Container.DataItem, "hits")%>次 &nbsp;&nbsp;来源：<%# DataBinder.Eval(Container.DataItem, "from1")%></span></div></td>
          </tr>
          
          <tr>
            <td class="style6" ><div  style="font-size:12px;">
              <%# DataBinder.Eval(Container.DataItem, "NewsContent")%>
                
            </div></td>
          </tr>
          <table align="center" class="style7">
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image2" runat="server" Height="16px" 
                                ImageUrl='<%# Eval("pic2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("pic3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("pic4") %>' />
                        </td>
                    </tr>
                </table>
          <tr>
            <td class="sty1" style="height: 8px" align="right"><p>
           <img src="images/printer.gif" width="16" height="14" align="absMiddle"> <a href="javascript:window.print()">打印本页</a> | <img src="images/close.gif" width="14" height="14" align="absMiddle"> <a href="javascript:window.close()">关闭窗口</a><p 
                    style="text-align: center">&nbsp;</p></td>
          </tr>
      </table></TD>
    </TR>
    <tr>
    <td valign="bottom"></td>
    </tr>
  </TBODY>
</TABLE>
 </ItemTemplate>
                  </asp:DataList>
                  </td>
                  </tr>
  </TBODY>
</TABLE> 

                                
                
                  
       


            
            
          <%--表尾 --%>   
            <table width="1024" align="center">
            <tr>
               
                <td >

                    <table width="1024" align="center">
                        <tr>
                            <td  style="text-align: center" >
                                <uc2:foot ID="foot1" runat="server" />
                               
                            </td>
                        </tr>
                    </table>
                </td>
               
            </tr>        
        </table>      
        
    



        

    
    </div>
    </form>
</body>
</html>
