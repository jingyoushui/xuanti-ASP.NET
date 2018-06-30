<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left3.aspx.cs" Inherits="left3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" href="./css/left3.css" rel="stylesheet" />
    <script src="Scripts/menu.js"></script>

</head>

<body>
    <table class="ta1">
        <tr>
            <td class="td1">
                <table class="ta2">
                    <tr>
                        <td height="33" background="images/main_21.gif">&nbsp;</td>
                    </tr>


                    <tr>
                        <td height="20" background="images/main_25.gif" id="td1"
                            onClick="show(1)">
                            <table width="100%" border="0"
                                   cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="72%" height="20">
                                        <div align="center">
                                            <table class="ta3">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">个人信息管理</div></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td width="15%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="show1">
                        <td align="center" valign="top">
                            <table width="145" border="0"
                                   align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table class="ta4">
                                            <tr>
                                                <td width="41" height="35">
                                                    <div align="center">
                                                        <img src="images/left_1.gif" width="31" height="31">
                                                    </div>
                                                </td>
                                                <td width="89" height="35">
                                                    <table width="100%"
                                                           border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="23" style="cursor: hand"
                                                                onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
                                                                onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                                <span class="STYLE2">
                                                                    &nbsp;<a href="../student/stu1.aspx" target="main">个人信息管理</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>

                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>


                    <tr>
                        <td height="20" background="images/main_25.gif" id="td2"
                            onClick="show(2)">
                            <table width="100%" border="0"
                                   cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="72%" height="20">
                                        <div align="center">
                                            <table class="ta3">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">选题管理</div></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td width="15%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="show2" style="display: none">
                        <td align="center" valign="top">
                            <table width="145" border="0"
                                   align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table class="ta4">
                                            <tr>
                                                <td width="41" height="35">
                                                    <div align="center">
                                                        <img src="images/left_1.gif" width="31" height="31">
                                                    </div>
                                                </td>
                                                <td width="89" height="35">
                                                    <table width="100%"
                                                           border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="23" style="cursor: hand"
                                                                onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
                                                                onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                                <span class="STYLE2">
                                                                    &nbsp;<a href="../student/stu_select_proj.aspx" target="main">选题登记</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="41" height="35">
                                                    <div align="center">
                                                        <img src="images/left_2.gif" width="31" height="31">
                                                    </div>
                                                </td>
                                                <td height="35">
                                                    <table width="100%" border="0"
                                                           cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="23" style="cursor: hand"
                                                                onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
                                                                onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                                <span class="STYLE2">
                                                                    &nbsp;<a href="../student/select_stu_proj.aspx" target="main">已选查询</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>

                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>


                    <tr>
                        <td height="20" background="images/main_25.gif" id="td3"
                            onClick="show(3)">
                            <table width="100%" border="0"
                                   cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="72%" height="20">
                                        <div align="center">
                                            <table class="ta3">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">论文管理</div></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td width="15%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="show3" style="display: none">
                        <td align="center" valign="top">
                            <table width="145" border="0"
                                   align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table class="ta4">
                                            <tr>
                                                <td width="41" height="35">
                                                    <div align="center">
                                                        <img src="images/left_1.gif" width="31" height="31">
                                                    </div>
                                                </td>
                                                <td width="89" height="35">
                                                    <table width="100%"
                                                           border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="23" style="cursor: hand"
                                                                onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
                                                                onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                                <span class="STYLE2">
                                                                    &nbsp;<a href="" target="main">论文提交</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="41" height="35">
                                                    <div align="center">
                                                        <img src="images/left_2.gif" width="31" height="31">
                                                    </div>
                                                </td>
                                                <td height="35">
                                                    <table width="100%" border="0"
                                                           cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="23" style="cursor: hand"
                                                                onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
                                                                onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                                <span class="STYLE2">
                                                                    &nbsp;<a href="" target="main">论文查看</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>


                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>



                    <tr>
                        <td height="20" background="images/main_25.gif" id="td3"
                            onClick="show(4)">
                            <table width="100%" border="0"
                                   cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="72%" height="20">
                                        <div align="center">
                                            <table class="ta3">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">成绩查看</div></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td width="15%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="show4" style="display: none">
                        <td align="center" valign="top">
                            <table width="145" border="0"
                                   align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table class="ta4">
                                            <tr>
                                                <td width="41" height="35">
                                                    <div align="center">
                                                        <img src="images/left_1.gif" width="31" height="31">
                                                    </div>
                                                </td>
                                                <td width="89" height="35">
                                                    <table width="100%"
                                                           border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="23" style="cursor: hand"
                                                                onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
                                                                onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                                <span class="STYLE2">
                                                                    &nbsp;<a href="" target="main">成绩查看</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>



                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td height="20" background="images/main_25.gif" id="td3">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="72%" height="20">
                                        <div align="center">
                                            <table class="ta3">
                                                <tr>
                                                    <td width="18%"><div align="center"></div></td>
                                                    <td width="82%" valign="middle">
                                                        <div align="center"
                                                             class="STYLE1"></div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td width="15%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="39" align="center">
                            <p class="STYLE3">
                                <br> 版权所有：李行行
                            </p>
                            <p class="STYLE3">指导老师：xxxxx</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>

