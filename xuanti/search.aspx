<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<%@ Register src="menul.ascx" tagname="menul" tagprefix="uc1" %>

<%@ Register src="foot.ascx" tagname="foot" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            font-size: xx-large;
        }
        .style5
        {
            width: 1024px;
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

                    <table width="1024">
                        <tr>
                            <td >
                                <uc1:menul ID="menul1" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
               
            </tr> 
            </table >

 
  <%-- 表中间--%> 
   <table width="1008" align="center">
         
         <tr>
             
                
                <td >

                    <table width="1008" align="center">
                        <tr>
                            <td align="center" class="style4">
                               
                                <strong style="font-size: large; color: #339966">查 询 结 果
                               
                            </strong>
                               
                            </td>
                        </tr>
                    </table>
                </td>
                
            </tr> 




      
            <tr>
                
                <td >

                    <table width="1024">
                        <tr>
                            <td align="center">
                               
                               <asp:DataList ID="Search1" runat="server" onitemcommand="Search1_ItemCommand" 
                                    style="font-family: 微软雅黑">
         <ItemTemplate>
                            <table border="0" cellspacing="0"  style="width: 100%; height: 100%; margin-top: 0px; padding-top: 0px; font-size :9pt" align =center>
                                <tr>
                                    <td align="left" style="border-bottom: 1px dashed #000000;width: 150px; height: 30px;">
                                       ;
                                        [
                                        <%# DataBinder.Eval(Container.DataItem, "NewsId")%>
                                        ]</td>
                                    <td style="border-bottom: 1px dashed #000000;" align="left">
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select"><%# DataBinder.Eval(Container.DataItem, "NewsTitle")%></asp:LinkButton>
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

       
     <%-- 表底部--%> 
       
            <table width="1024" align="center">
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
    </div>
    </form>
</body>
</html>
