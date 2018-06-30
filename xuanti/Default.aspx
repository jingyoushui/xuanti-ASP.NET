<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
        .style11
        {
        }
       
        
        .style14
        {
            width: 544px;
            height: 52px;
        }
               
        
        .style23
        {
            width: 342px;
            height: 21px;
        }
        .style24
        {
            width: 928px;
            height: 21px;
        }
       
        
        .style26
        {
            width: 53px;
            height: 21px;
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
        .style42
        {
            width: 361px;
            height: 21px;
        }
       
        
        #form1
        {
            text-align: center;
        }
       
        
        .style46
        {
            font-family: 微软雅黑;
            color: #FFFFFF;
        }
       
        
        .style47
        {
            text-align: center;
        }
       
        
        .style48
        {
            font-family: 微软雅黑;
            color: #00CC66;
        }
       
        
        .auto-style1 {
            width: 144px;
            height: 52px;
            text-align: center;
        }
        .auto-style2 {
            height: 52px;
            text-align: center;
        }
        .auto-style3 {
            width: 71px;
            height: 52px;
            text-align: center;
        }
       
        
        .auto-style5 {
            width: 1102px;
            text-align: center;
        }
       
        
        .style49
        {
            font-family: 微软雅黑;
        }
        .style50
        {
            font-family: 微软雅黑;
            font-size: small;
            color: #00CC99;
            background-color: #99FFCC;
        }
       
        
 
        </style>
        <div>
<!--<script type="text/javascript">
    function hidead()
    { document.getElementById("ad").style.display = "none"; }
</script>
<div id="ad" style="position:absolute"> <a href="xwhjs.aspx">
    <img src="images/wechat.jpg" width="150px" height="150px" border="0"></a>
<DIV onClick="hidead();" style="FONT-SIZE: 9pt; CURSOR: hand" align=right 
        class="style49">关闭×</DIV></div>-->
<script>
    var x = 50, y = 60
    var xin = true, yin = true
    var step = 1
    var delay = 20
    var obj = document.getElementById("ad")
    function floatAD() {
        var L = T = 0
        var R = document.body.clientWidth - obj.offsetWidth
        var B = document.body.clientHeight - obj.offsetHeight
        obj.style.left = x + document.body.scrollLeft
        obj.style.top = y + document.body.scrollTop
        x = x + step * (xin ? 1 : -1)
        if (x < L) { xin = true; x = L }
        if (x > R) { xin = false; x = R }
        y = y + step * (yin ? 1 : -1)
        if (y < T) { yin = true; y = T }
        if (y > B) { yin = false; y = B }
    }
    var itl = setInterval("floatAD()", delay)
    obj.onmouseover = function () { clearInterval(itl) }
    obj.onmouseout = function () { itl = setInterval("floatAD()", delay) }
</script> 
</div>
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
         <table style="width: 1024px" align="center">
            <tr>
               
                <td width="200px" class="style11" rowspan="2"  valign="top" background="images/zhaopinxx.gif">
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
                        Width="220px" BorderWidth="1px" OnSelectionChanged="Calendar1_SelectionChanged">
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
                 <td style="width: 248px; text-align: center;" class="style23" 
                    bgcolor="#6d904b"  >
                     <font color="white">
                     <strong style="font-family: 微软雅黑; color: #FFFFFF; text-align: center;">教学研究</strong></font></td>


                <td  align="right" class="style24">
 
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                                    ImageUrl="~/images/icon_more.png" style="text-align: right" 
                        Width="20px" PostBackUrl="~/jxyj.aspx" />
                    
                </td>


                <td " class="style16" class="style26"   >
                     &nbsp;
                  </td>
                
               
                <td    align="right" class="style42">
 
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="style50" PostBackUrl="~/register.aspx">注册</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CssClass="style50" PostBackUrl="login2.aspx">登录</asp:LinkButton>
 
                </td>


               
            </tr>     
              <tr>
               
                <td style="width: 624px" colspan="2"   >
                <asp:DataList ID="jxxw" runat="server"    DataKeyField="NewsId" onitemcommand="jxxw_ItemCommand" OnSelectedIndexChanged="jxxw_SelectedIndexChanged" 
                                    >
                                    <ItemTemplate>
                                        <table cellspacing="0" >
                                            <tr> 
                                                  <td style="height: 19px" align="left">
                                                    <img src="images/ico.gif"></img>
                                                   </td>
                                                    <td align="left" bgcolor="#F0F0F0" class="style17" >
                                                    <asp:LinkButton ID="LinkButton1" runat="server" 　>
                                                      <span style="font-size: 12px; color: #000000; line-height: 160%; text-decoration: none;"> <%# DataBinder.Eval(Container.DataItem, "NewsTitle").ToString().Length < 40 ? (DataBinder.Eval(Container.DataItem, "NewsTitle")) : (DataBinder.Eval(Container.DataItem, "NewsTitle")).ToString().PadRight(20).Substring(0, 40) + "..."%></span> </asp:LinkButton> 
                                                  </td>
                                                <td align="right" class="style18" bgcolor="#F0F0F0">
                                                     <span  style="font-size:12px; color:#666">【<%#  (DataBinder.Eval(Container.DataItem, "NewsTime")).ToString().PadRight(10).Substring(0, 10)%>】</span> 
                                                   </td>
                                                   <td style="height: 19px" align="right">
                                                    <img src="images/new.gif" style="margin-bottom: 0px"></img>
                                                   </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>


                <td colspan="2"  align=left   >

                        <SCRIPT>
                            var widths = 300; 666
                            var heights = 240; 275
                            var counts = 6;
                            img1 = new Image(); img1.src = './images/fj1.jpg';
                            img2 = new Image(); img2.src = './images/fj2.jpg';
                            img3 = new Image(); img3.src = './images/fj3.jpg';
                            img4 = new Image(); img4.src = './images/fj4.jpg';
                            img5 = new Image(); img5.src = './images/fj5.jpg';
                            img6 = new Image(); img6.src = './images/fj6.jpg';
                            url1 = new Image(); url1.src = 'http://xz.zjnu.edu.cn/';
                            url2 = new Image(); url2.src = 'http://xz.zjnu.edu.cn/';
                            url3 = new Image(); url3.src = 'http://xz.zjnu.edu.cn/';
                            url4 = new Image(); url4.src = 'http://xz.zjnu.edu.cn/';
                            url5 = new Image(); url5.src = 'http://xz.zjnu.edu.cn/';
                            url6 = new Image(); url6.src = 'http://xz.zjnu.edu.cn/';
                            //天极伊永恒原创
                            var nn = 1;
                            var key = 0;
                            function change_img() {
                                if (key == 0) { key = 1; }
                                else if (document.all)
                                { document.getElementById("pic").filters[0].Apply(); document.getElementById("pic").filters[0].Play(duration = 2); }
                                eval('document.getElementById("pic").src=img' + nn + '.src');
                                eval('document.getElementById("url").href=url' + nn + '.src');
                                for (var i = 1; i <= counts; i++) { document.getElementById("xxjdjj" + i).className = 'axx'; }
                                document.getElementById("xxjdjj" + nn).className = 'bxx';
                                nn++; if (nn > counts) { nn = 1; }
                              
                                tt = setTimeout('change_img()',3000);
                            }
                            //设置切换时间
                            function changeimg(n) { nn = n; window.clearInterval(tt); change_img(); }
                            document.write('<style>');
                            document.write('.axx{padding:1px 7px;border-left:#cccccc 1px solid;}');
                            document.write('a.axx:link,a.axx:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#666;}');
                            document.write('a.axx:active,a.axx:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#999;}');
                            document.write('.bxx{padding:1px 7px;border-left:#cccccc 1px solid;}');
                            document.write('a.bxx:link,a.bxx:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');
                            document.write('a.bxx:active,a.bxx:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');
                            document.write('</style>');
                            document.write('<div style="width:' + widths + 'px;height:' + heights + 'px;overflow:hidden;text-overflow:clip;">');
                            document.write('<div><a id="url"><img id="pic" style="border:0px;filter:progid:dximagetransform.microsoft.wipe(gradientsize=1.0,wipestyle=4, motion=forward)" width=' + widths + ' height=' + heights + ' /></a></div>');
                            document.write('<div style="filter:alpha(style=1,opacity=10,finishOpacity=80);background: #888888;width:100%-2px;text-align:right;top:-12px;position:relative;margin:1px;height:12px;padding:0px;margin:0px;border:0px;">');
                            for (var i = 1; i < counts + 1; i++) { document.write('<a href="javascript:changeimg(' + i + ');" id="xxjdjj' + i + '" class="axx" target="_self">' + i + '</a>'); }
                            document.write('</div></div>');
                            change_img();
                                      </SCRIPT>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                

            </tr>      
        </table>
    



       
          
       
          <table style="width: 1024px" align="center">
            <tr  >
            
              
                <td class="style28">
                 
                    <img src="images/list.gif" width="224" height="35" />
                 </td>
                 <td bgcolor="#6d904b" 　　 class="auto-style1"  >
                     <font color="black"><span class="style46"> <strong style="color: #FFFFFF">教务管理</strong></span></font>

                  </td>


                <td  align="right" class="style14">

                
                <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                                    ImageUrl="~/images/icon_more.png" style="text-align: right" 
                        Width="20px" PostBackUrl="~/jwgl.aspx" />
                     <hr size="2" color="#0a778b" width="100%">
                </td>


                <td style="width: 248px" bgcolor="#6d904b"  class="auto-style1"   >
                    <font >&nbsp;<strong style="color: #FFFFFF">实践教学</strong></font>&nbsp;
                  </td>
                
               
                <td  style="width: 248px"  align="right" class="style8">
               
                <asp:ImageButton ID="ImageButton3" runat="server" Height="20px" 
                                    ImageUrl="~/images/icon_more.png" style="text-align: right" 
                        Width="20px"  PostBackUrl="~/sjjx.aspx" OnClick="ImageButton3_Click"/>
                    <hr size="2" color="#0a778b" width="100%"> 
                </td>


                
            </tr>     
              <tr>
               
                <td style="width: 224px" class="style48" bgcolor="#CCFFCC">
                 
                    方式：<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        AutoPostBack="True" RepeatDirection="Horizontal" Width="117px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
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
                 <asp:DataList ID="jwtz" runat="server"    DataKeyField="NewsId" 
                       Width="400px" style="margin-right: 0px" 
                        onitemcommand="jwtz_ItemCommand"           >
                                    <ItemTemplate>
                                        <table cellspacing="0" >
                                            <tr> 
                                                  <td style="height: 19px" align="left">
                                                    <img src="images/ico.gif"></img>
                                                   </td>
                                                    <td align="left"  bgcolor="#F0F0F0">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" >
                                                     <font color="#000000" face="微软雅黑" size="2"> <b> <%# DataBinder.Eval(Container.DataItem, "NewsTitle").ToString().Length < 20 ? (DataBinder.Eval(Container.DataItem, "NewsTitle")) : (DataBinder.Eval(Container.DataItem, "NewsTitle")).ToString().PadRight(20).Substring(0, 20) + "..."%></asp:LinkButton> </b></font>
                                                  </td>
                                                <td align="right" class="style4" bgcolor="#F0F0F0">
                                                    <font color="#000000" face="微软雅黑" size="2"> <b> <span  style="font-size:12px; color:#666">【<%#  (DataBinder.Eval(Container.DataItem, "NewsTime")).ToString().PadRight(10).Substring(0, 10)%>】</span></b> </font "> 
                                                   </td>
                                                   <td style="height: 19px" align="right">
                                                    <img src="images/new.gif"></img>
                                                   </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                    
                </td>


                <td colspan="2" class="style47"   >

                     <asp:DataList ID="bkjy" runat="server"    DataKeyField="NewsId" 
                                    Width="400px" style="margin-left: 0px" onitemcommand="bkjy_ItemCommand" 
                                    >
                                    <ItemTemplate>
                                        <table cellspacing="0" >
                                            <tr> 
                                                  <td style="height: 19px" align="left">
                                                    <img src="images/ico.gif"></img>
                                                   </td>
                                                    <td align="left"   bgcolor="#F0F0F0">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" >
                                                     <font color="#000000" face="微软雅黑" size="2"> <b> <%# DataBinder.Eval(Container.DataItem, "NewsTitle").ToString().Length < 20 ? (DataBinder.Eval(Container.DataItem, "NewsTitle")) : (DataBinder.Eval(Container.DataItem, "NewsTitle")).ToString().PadRight(20).Substring(0, 20) + "..."%></asp:LinkButton> </b></font>
                                                  </td>
                                                <td align="right" class="style4" bgcolor="#F0F0F0">
                                                    <font color="#000000" face="微软雅黑" size="2"> <b> <span  style="font-size:12px; color:#666">【<%#  (DataBinder.Eval(Container.DataItem, "NewsTime")).ToString().PadRight(10).Substring(0, 10)%>】</span></b> </font "> 
                                                   </td>
                                                   <td style="height: 19px" align="right">
                                                    <img src="images/new.gif"></img>
                                                   </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                </td>
                

                
            </tr>      
        </table>
    

   
       
          <table style="width: 1024px" align="center">
            <tr>
                
                <td  class="style34" >
                 
                   
                    <img src="images/youqinglj.gif" width="224" height="35" /></td>
                 <td bgcolor="#6d904b" 　　 class="auto-style3"   >
                     <span class="style46"><font><strong style="color: #FFFFFF">学科竞赛</strong></font></span>
                  </td>


                <td  align="right" class="style39" >
                &nbsp;
                
                <asp:ImageButton ID="ImageButton4" runat="server" Height="20px" 
                                    ImageUrl="~/images/icon_more.png" style="text-align: right" 
                        Width="20px"  PostBackUrl="~/xkjs.aspx"/>
                     <hr size="2" color="#0a778b" style="width: 144%; margin-left: 0px;">
                </td>


                <td bgcolor="#6d904b"  class="auto-style2"  >
                    <font  ><strong> <span style="color: #FFFFFF">实验室管理</span></strong></font></td>
                
               
                <td    align="right" >
               
                <asp:ImageButton ID="ImageButton5" runat="server" Height="20px" 
                                    ImageUrl="~/images/icon_more.png" style="text-align: right" 
                        Width="20px"  PostBackUrl="~/sysgl.aspx"/>
                   <hr size="2" color="#0a778b" width="100%">  
                </td>


               
            </tr>     
              <tr>
               
                <td  align="center" class="style34" bgcolor="#CCFFCC" width="124px"  >
                 
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="100px">
                        <asp:ListItem Value="0">功能链接</asp:ListItem>
                     
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="100px">
                        <asp:ListItem>合作单位</asp:ListItem>
                        
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged" Width="100px">
                        <asp:ListItem>其他网站</asp:ListItem>
                       
                    </asp:DropDownList>
                  </td>
                <td colspan="2" >
                 <asp:DataList ID="xgzx" runat="server"    DataKeyField="NewsId" 
                       Width="400px" style="margin-right: 0px" onitemcommand="xgzx_ItemCommand"  
                                    >
                                    <ItemTemplate>
                                        <table cellspacing="0" >
                                            <tr> 
                                                  <td style="height: 19px" align="left">
                                                    <img src="images/ico.gif"></img>
                                                   </td>
                                                    <td align="left"  bgcolor="#F0F0F0">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" >
                                                     <font color="#000000" face="微软雅黑" size="2"> <b> <%# DataBinder.Eval(Container.DataItem, "NewsTitle").ToString().Length < 20 ? (DataBinder.Eval(Container.DataItem, "NewsTitle")) : (DataBinder.Eval(Container.DataItem, "NewsTitle")).ToString().PadRight(20).Substring(0, 20) + "..."%></asp:LinkButton> </b></font>
                                                  </td>
                                                <td align="right" class="style4" bgcolor="#F0F0F0">
                                                    <font color="#000000" face="微软雅黑" size="2"> <b> <span  style="font-size:12px; color:#666">【<%#  (DataBinder.Eval(Container.DataItem, "NewsTime")).ToString().PadRight(10).Substring(0, 10)%>】</span></b> </font "> 
                                                   </td>
                                                   <td style="height: 19px" align="right">
                                                    <img src="images/new.gif"></img>
                                                   </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                    
                </td>


                <td colspan="2" class="style47"   >

                     <asp:DataList ID="kygl" runat="server"    DataKeyField="NewsId" 
                                    Width="400px" style="margin-left: 0px; margin-right: 0px;" 
                         onitemcommand="kygl_ItemCommand" Height="60px" >
                                    <ItemTemplate>
                                        <table cellspacing="0" >
                                            <tr> 
                                                  <td style="height: 19px" align="left">
                                                    <img src="images/ico.gif"></img>
                                                   </td>
                                                    <td align="left"bgcolor="#F0F0F0">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" >
                                                     <font color="#000000" face="微软雅黑" size="2"> <b> <%# DataBinder.Eval(Container.DataItem, "NewsTitle").ToString().Length < 20 ? (DataBinder.Eval(Container.DataItem, "NewsTitle")) : (DataBinder.Eval(Container.DataItem, "NewsTitle")).ToString().PadRight(20).Substring(0, 20) + "..."%></asp:LinkButton> </b></font>
                                                  </td>
                                                <td align="right" class="style4" bgcolor="#F0F0F0">
                                                    <font color="#000000" face="微软雅黑" size="2"> <b> <span  style="font-size:12px; color:#666">【<%#  (DataBinder.Eval(Container.DataItem, "NewsTime")).ToString().PadRight(10).Substring(0, 10)%>】</span></b> </font "> 
                                                   </td>
                                                   <td style="height: 19px" align="right">
                                                    <img src="images/new.gif"></img>
                                                   </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                </td>
                

                
            </tr>      
        </table>
    

    <%--表下部流动图片　--%>
    <table style="width: 1024px" align="center">
            <tr>
               
                <td class="auto-style5" >

                    <table width="1024" align="center">
                          <tr>
                <td align="left" style="width: 130px; height: 200px" valign="top">
                    <img src="images/jwxf.jpg" width="130" style="height: 200px" /></td>
                <td style="width: 700px; height: 140px" valign="middle">
                
                
                     <table align="center" border="0" cellpadding="0" cellspacing="0" height="100" style="border-right: #ccc 1px solid;
                                                border-top: #ccc 1px solid; border-left: #ccc 1px solid; width:  894px; border-bottom: #ccc 1px solid">
                                                <tbody>
                                                    <tr>
                                                        <td valign="top" >
                                                            <div id="demo00" style="overflow: hidden; width: 894px; color: #ffffff">
                                                                <table align="left" border="0" cellpadding="0" cellspace="0" cellspacing="0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td id="demo11" style="width:  894px; height: 200px" valign="top">
                                                                                <asp:DataList ID="xyfj" runat="server" DataKeyField="NewsId" 
                                                                                    RepeatDirection="Horizontal" onitemcommand="xyfj_ItemCommand1" OnSelectedIndexChanged="Page_Load" >
                                                                                    <ItemTemplate>
                                                                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 120px; height: 130px">
                                                                                            <tr>
                                                                                                <td align="center">

                                                                                                 <%--<a href='newsshow.aspx?id=<%# DataBinder.Eval(Container.DataItem,"NewsId") %>' target="_blank">
                                                                                                        <img src='<%# DataBinder.Eval(Container.DataItem,"pic1") %>' style="height: 100px; border: 0px;" width="115" /></a>--%>

                                                                                                      <a href='newsshow.aspx?id=<%# DataBinder.Eval(Container.DataItem,"NewsId") %>' target="_blank">
                                                                                                          <asp:Image ID="Image6" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "pic1")%> ' /></a>
                                                                                                      

                                                                                                <asp:LinkButton ID="LinkButton1" runat="server" >
                                                                                                  <%# DataBinder.Eval(Container.DataItem, "NewsTitle").ToString()%>
                                                                                                   
                                                                                                      </asp:LinkButton>
                                                                                                  </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center">
                                                                                                    <
                                                                                                        <%# DataBinder.Eval(Container.DataItem, "NewsTitle")%>
                                                                                                        
                                                                                                    </a>
                                                                                                    
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </ItemTemplate>
                                                                                </asp:DataList>
                                                                            </td>
                                                                            <td id="demo22" style="height: 200px" valign="top">
                                                                                &nbsp;</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
 <script language="javascript">
     var speed3 = 25//速度数值越大速度越慢
     demo22.innerHTML = demo11.innerHTML
     function Marquee1() {
         if (demo22.offsetWidth - demo00.scrollLeft <= 0)
             demo00.scrollLeft -= demo11.offsetWidth
         else {
             demo00.scrollLeft++
         }
     }
     var MyMar = setInterval(Marquee1, speed3)
     demo00.onmouseover = function () { clearInterval(MyMar) }
     demo00.onmouseout = function () { MyMar = setInterval(Marquee1, speed3) }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
    
                    
                    
                    
                </td>
            </tr>
                        </tr>
                    </table>
            





           
      <%--表尾　--%>
       
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
