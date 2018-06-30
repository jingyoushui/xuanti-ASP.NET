<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zlxz.aspx.cs" Inherits="_Default" %>

<%@ Register src="menul.ascx" tagname="menul" tagprefix="uc1" %>

<%@ Register src="foot.ascx" tagname="foot" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
               
        
        .style8
        {
            width: 361px;
            height: 52px;
        }
        .style9
        {
            width: 144px;
            height: 52px;
        }
        .style11
        {
        }
       
        
        .style14
        {
            width: 544px;
            height: 52px;
        }
               
        
        .style16
        {
            width: 108px;
            height: 52px;
        }
       
        
        .style23
        {
            width: 447px;
            text-align: left;
        }
        .style24
        {
            width: 928px;
            }
       
        
        .style26
        {
            width: 53px;
            }
       
        
        .style28
        {
            width: 224px;
            color: #00FF99;
            font-size: x-large;
            height: 52px;
        }
       
        
     
               
        
        .style39
        {
            width: 221px;
        }
        .style42
        {
            width: 361px;
            }
       
        
        .style43
        {
            font-size: x-large;
            color: #009999;
            text-align: left;
        }
       
        
        .style44
        {
            height: 20px;
        }
       
        
        #form1
        {
            text-align: center;
            font-family: 微软雅黑;
        }
       
        
        .style45
        {
            height: 26px;
        }
       
        
        .style46
        {
            color: #00FF99;
        }
        .style47
        {
            color: #006666;
        }
        .style48
        {
            width: 216px;
        }
        .style50
        {
            width: 224px;
        }
        .style51
        {
            font-family: 微软雅黑;
        }
        .style52
        {
            color: #339966;
        }
       
        
        </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    

  <%-- 表头 --%> 
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


<%--表格上部 --%>   
         <table style="width: 1024px" align="center">
            <tr>
             
                <td width="200px" class="style11" rowspan="2"  valign="top" 
                    background="images/zhaopinxx.gif" bgcolor="#CCFFCC">
                     <div class="style47">
                     <strong style="text-align: center">　　<br />
                     　　<br />
                     　<span class="style48">日　期　公　告</span><span class="style46">
                     
                     </span>
                     
                     <br />
                     </strong>
                     </div>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#3366CC" CellPadding="1" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" 
                        Width="220px" BorderWidth="1px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" Font-Bold="True" 
                            BorderWidth="1px" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
                 <td  　 class="style23"  >
                     <asp:Image ID="Image1" runat="server" ImageUrl="~/images/szdw.jpg" 
                         style="text-align: left" />
                  </td>


                <td  align="right" class="style24">
                    
                </td>


                <td " class="style16" class="style26"   >
                     &nbsp;
                  </td>
                
               
                <td    align="right" class="style42">
 
                </td>


            </tr>     
              <tr>
               
                <td colspan="2"   >
                &nbsp;&nbsp;&nbsp;
 <table style="width: 737px; height: 68px">
            <tr>
                <td 　align="center">
                    &nbsp;&nbsp;<strong><span class="style43">资  料  下  载</span></strong></td>
            </tr>
            <tr>
                <td  align="left" class="style45">
                   [下载专区]&nbsp;&nbsp; 
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/down/临时教室借用单 (新).doc" 
                        Font-Bold="True" ForeColor="#339966" CssClass="style52">临时教室借用单 (新).doc</asp:HyperLink></td>
            </tr>
            <tr>
                <td style="height: 28px;" align="left">
                    [下载专区]&nbsp;&nbsp; 
       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/down/行知学院教学进度表(20152模板).doc" 
                        Font-Bold="True" ForeColor="#339966" CssClass="style52">行知学院教学进度表(20152模板).doc</asp:HyperLink></td>
            </tr>
            <tr>
                <td align="center">
                     </td>
            </tr>
            <tr>
                <td>
                     </td>
            </tr>
        </table>
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>


                <td colspan="2"  align=left   >

                        
                </td>
                

            </tr>      
        </table>
    



       
          
       
          <table style="width: 1024px" align="center">
            <tr  >
            
                
                <td class="style28">
                 
                   <img src="images/list.gif" width="224px" height="35" />
                   </td>
                 <td 　　 class="style9"  >
                
                  </td>


                <td  align="right" class="style14">

               
                                     </td>


                <td  class="style16"   >
                    &nbsp;
                  </td>
                
               
                <td    align="right" class="style8">
                &nbsp;</td>


            </tr>     
              <tr>
               
                <td class="style50" bgcolor="#CCFFCC">
                 
                    <span class="style47">方式：</span><asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        AutoPostBack="True" RepeatDirection="Horizontal" Width="150px" 
                        style="color: #009999">
                        <asp:ListItem Selected="True">标题</asp:ListItem>
                        <asp:ListItem>内容</asp:ListItem>
                    </asp:RadioButtonList>

                    <br class="style47" />
                    <span class="style47">关键字</span><asp:TextBox ID="txbSouSuo" runat="server" 
                        CssClass="style47" Height="16px" Width="120px"></asp:TextBox>
                    <br />
                    <br class="style47" />
                    <asp:Button ID="btnSouSuo" runat="server" Text=" 搜  索" 
                        onclick="btnSouSuo_Click" Height="21px" 
                        style="font-family: 微软雅黑; font-size: small; color: #0066FF" />

                    <br class="style47" />

                  </td>
                <td colspan="2"   >
                    &nbsp;</td>


                <td colspan="2"  align=left   >

                     &nbsp;</td>
                

            </tr>      
        </table>
    

   
       
          <table style="width: 1024px" align="center">
            <tr>
              
                <td  class="style50" >
                 
                    <img src="images/youqinglj.gif" width="224px" height="35" />
                 
                   </td>
                 <td 　　 class="style9"   >
               
                  </td>


                <td  align="right" class="style39" >
                
                    
                </td>


                <td  " class="style16"    >
                  
                  </td>
                
               
                <td    align="right" >
                 
                </td>


              
            </tr>     
              <tr>
             
                <td  align="center" bgcolor="#CCFFCC" class="style50"  >
                 
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="100px" 
                        CssClass="style51">
                        <asp:ListItem Value="0">功能链接</asp:ListItem>
                        <asp:ListItem Value="1">教务管理</asp:ListItem>
                        <asp:ListItem Value="2">实践教学</asp:ListItem>
                        <asp:ListItem Value="3">学科竞赛</asp:ListItem>
                        <asp:ListItem Value="4">实验室管理</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="100px" 
                        CssClass="style51">
                        <asp:ListItem>合作单位</asp:ListItem>
                        <asp:ListItem>浙江师范大学行知学院</asp:ListItem>
                        <asp:ListItem>浙江师范大学教务处</asp:ListItem>
                        <asp:ListItem>浙江师范大学行知学院学工在线</asp:ListItem>
                        <asp:ListItem>浙江师范大学</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged" Width="100px" 
                        CssClass="style51">
                        <asp:ListItem>其他网站</asp:ListItem>
                        <asp:ListItem>浙江省教育厅</asp:ListItem>
                        <asp:ListItem>网易</asp:ListItem>
                        <asp:ListItem>凤凰网</asp:ListItem>
                    </asp:DropDownList>
                  </td>
                <td colspan="2" >
                    &nbsp;</td>


                <td colspan="2"  align="left"   >

                     &nbsp;</td>
                

              
            </tr>      
        </table>
    


           
      
       
          <table width=1024 align="center">
            <tr>
           
                <td style="text-align: center" >

                    <table width="1008">
                        <tr>
                            <td >
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
