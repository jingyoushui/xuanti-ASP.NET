<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="_Default" %>

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
            height: 35px;
        }
        .style24
        {
            width: 928px;
            height: 35px;
        }
       
        
        .style28
        {
            width: 248px;
            color: #00FF99;
            font-size: x-large;
        }
       
        
        .style34
        {
            width: 151px;
        }
               
        
        .style39
        {
            width: 221px;
        }
               
        
        .style43
        {
            font-size: x-large;
            text-align: center;
            color: #009999;
        }
       
        
        .style44
        {
            font-family: 微软雅黑;
        }
       
        
        .style47
        {
            width: 218px;
        }
       
        
        .style48
        {
            color: #00CC66;
        }
        .style49
        {
            width: 224px;
            height: 28px;
            color: #339933;
        }
        .style50
        {
            width: 184px;
            height: 28px;
        }
        .style51
        {
            color: #339933;
        }
        .style52
        {
            color: #006600;
        }
       
        
        .style53
        {
            text-align: center;
            height: 35px;
        }
       
        
        </style>
</head>
<body>
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
         <table style="width: 1024px; font-family: 微软雅黑;" align="center">
            <tr>
                
                <td width="220px" class="style11" rowspan="2"  valign="top" background="images/zhaopinxx.gif">
                     <div class="style47">
                     <strong style="text-align: center">　<br />
                         <br />
                         <br />
&nbsp;　<span class="style44">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style48">日　期　公　告</span></span><span class="style46">
                     
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
                     <asp:Image ID="Image1" runat="server" ImageUrl="~/images/szdw.jpg" />
                  </td>


                <td  align="right" class="style24">
                    
                </td>


                
            </tr>     
              <tr>
                
                <td colspan="2"   >
                &nbsp;&nbsp;&nbsp;
 <table style="width: 804px; height: 68px">
            <tr>
                <td colspan="2"　align="center" class="style53">
                    <strong><span class="style43">用　户　注　册</span></strong></td>
            </tr>
            <tr>
                <td style="width: 224px"  align="right" class="style51">
                    姓&nbsp;&nbsp;&nbsp; 名：</td>
                <td style="width: 184px; text-align: left;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                    <span class="style51">*</span><asp:Button ID="btn_test" runat="server" 
                        onclick="btn_test_Click" 
                        style="text-align: center; font-family: 微软雅黑; color: #006600; font-size: small" 
                        Text="检测用户" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style49">
                    密&nbsp;&nbsp;&nbsp; 码：</td>
                <td class="style50">
                    <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password" Width="150px" 
                        MaxLength="6" CssClass="style51"></asp:TextBox><span class="style51">*</span></td>
            </tr>
            <tr>
                <td style="width: 224px" align="right" class="style51">
                    确认密码：</td>
                <td style="width: 184px">
                    <asp:TextBox ID="TextBox3" runat="server"  TextMode="Password" Width="150px" MaxLength="6"></asp:TextBox>
                    <span class="style51">*</span></td>
            </tr>
            <tr>
                <td style="width: 224px" align="right" class="style51">
                    E-mail：</td>
                <td style="width: 184px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 224px" align="right" class="style51">
                   电&nbsp;&nbsp;&nbsp; 话：</td>
                <td style="width: 184px">
                    <asp:TextBox ID="TextBox7" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 224px"  align="right" class="style51">
                    详细地址：</td>
                <td style="width: 184px">
                    <asp:TextBox ID="TextBox5" runat="server" Rows="3" TextMode="MultiLine" 
                        Width="259px" Height="69px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="注册" Height="37px" 
                        style="margin-left: 0px; font-family: 微软雅黑; color: #009999;" 
                        Width="91px" onclick="Button1_Click" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="color: #009999; text-align: left">
                    <strong>管理员提示：</strong></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Height="91px" 
                        Width="728px" BackColor="#99FFCC" CssClass="style52">用户须知：
　　我们将保护您的隐私权并保证您所提供的个人资料的保密性。我们所收集的个人资料仅用于为您提供服务。除此之外，我们只在您允许的情况下才使用您的个人资料，否则本网站决不会与第三方共享您的个人资料。
                    </asp:TextBox></td>
            </tr>
        </table>
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>


               
                

               
            </tr>      
        </table>
    



       
          
       
          <table style="width: 1024px" align="center">
            <tr  >
            
               
                                <td class="style28">
                 
                    <img src="images/list.gif" width="224" height="35" />
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
               
                <td style="width: 224px" class="style48" bgcolor="#CCFFCC">
                 
                    方式：<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        AutoPostBack="True" RepeatDirection="Horizontal" Width="117px">
                        <asp:ListItem Selected="True">标题</asp:ListItem>
                        <asp:ListItem>内容</asp:ListItem>
                    </asp:RadioButtonList>

                    <br />
                    关键字<asp:TextBox ID="txbSouSuo" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>
                    <asp:Button ID="btnSouSuo" runat="server" Text=" 搜  索" 
                        onclick="btnSouSuo_Click" CssClass="style48" Font-Overline="False" Font-Size="Small" />

                    </strong>

                  </td>
                <td colspan="2"   >
                    &nbsp;</td>


                <td colspan="2"  align=left   >

                     &nbsp;</td>
                

                
            </tr>      
        </table>
    

   
       
          <table style="width: 1024px" align="center">
            <tr>
                
                <td  class="style34" >
                    <img src="images/youqinglj.gif" width="224" height="35" /></td>
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
               
                <td  align="center" class="style34" bgcolor="#CCFFCC" width="124px"  >
                 
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="100px">
                        <asp:ListItem Value="0">功能链接</asp:ListItem>
                        <asp:ListItem Value="1">教务管理</asp:ListItem>
                        <asp:ListItem Value="2">实践教学</asp:ListItem>
                        <asp:ListItem Value="3">学科竞赛</asp:ListItem>
                        <asp:ListItem Value="4">实验室管理</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="100px">
                        <asp:ListItem>合作单位</asp:ListItem>
                        <asp:ListItem>浙江师范大学行知学院</asp:ListItem>
                        <asp:ListItem>浙江师范大学教务处</asp:ListItem>
                        <asp:ListItem>浙江师范大学行知学院学工在线</asp:ListItem>
                        <asp:ListItem>浙江师范大学</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged" Width="100px">
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
                

                <td  >
                    
                   <font face="楷体" color="#ffffff">  efdsfdfdfdfsd </font >    
                  </td>
            </tr>      
        </table>
    


           
      
       
          <table width=1024 align="center">
            <tr>
               
                <td >

                    <table width="1024" align="center">
                        <tr>
                            <td class="style5" style="text-align: center" >
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
