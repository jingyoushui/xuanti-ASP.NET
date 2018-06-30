<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>毕业设计选题管理系统</title>
    <script src="Scripts/menu.js"></script>

    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .STYLE1 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: 12px;
        }

        .STYLE2 {
            font-size: 12px;
            color: #03515d;
        }

        a:link {
            font-size: 12px;
            text-decoration: none;
            color: #03515d;
        }

        a:visited {
            font-size: 12px;
            text-decoration: none;
            color: #03515d;
        }

        .STYLE3 {
            font-size: 12px
        }
        -->
    </style>


</head>

<body>
    <table width="156" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" valign="top">
                <table width="100%"
                       height="100%" border="0" cellpadding="0" cellspacing="0">
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
                                            <table width="100%" height="21" border="0" cellpadding="0"
                                                   cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">系统用户管理</div></td>
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
                                        <table width="130" border="0" align="center"
                                               cellpadding="0" cellspacing="0">
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
                                                                    &nbsp;<a href="admin/admin.aspx"
                                                                             target="main">管理员管理</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
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
                                                                    &nbsp;<a href="admin/teacher_add.aspx"
                                                                             target="main">教师信息添加</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
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
                                                                    &nbsp;<a href="admin/teacher_select.aspx"
                                                                             target="main">教师信息查询</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
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
                                                                    &nbsp;<a href="admin/student_add.aspx"
                                                                             target="main">学生信息添加</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
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
                                                                    &nbsp;<a href="admin/student_select.aspx"
                                                                             target="main">学生信息查询</a>
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
                                            <table width="100%" height="21" border="0" cellpadding="0"
                                                   cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">所有课题管理</div></td>
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
                                        <table width="130" border="0" align="center"
                                               cellpadding="0" cellspacing="0">

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
                                                                    &nbsp;<a href="admin/project_admin.aspx"
                                                                             target="main">所有课题管理</a>
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
                                                                    &nbsp;<a href="admin/proj_all_select.aspx"
                                                                             target="main">所有选题管理</a>
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
                                            <table width="100%" height="21" border="0" cellpadding="0"
                                                   cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">站内新闻管理</div></td>
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
                                        <table width="130" border="0" align="center"
                                               cellpadding="0" cellspacing="0">
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
                                                                    &nbsp;<a href="admin/news_add.aspx" target="main">站内新闻添加</a>
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
                                                                    &nbsp;<a href="#?lb=站内新闻" target="main">站内新闻查询</a>
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
                                            <table width="100%" height="21" border="0" cellpadding="0"
                                                   cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">所有论文查看</div></td>
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
                                        <table width="130" border="0" align="center"
                                               cellpadding="0" cellspacing="0">
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
                                                                    &nbsp;<a href="#"
                                                                             target="main">论文信息查看</a>
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
                            onClick="show(5)">
                            <table width="100%" border="0"
                                   cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="72%" height="20">
                                        <div align="center">
                                            <table width="100%" height="21" border="0" cellpadding="0"
                                                   cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">友情连接管理</div></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td width="15%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="show5" style="display: none">
                        <td align="center" valign="top">
                            <table width="145" border="0"
                                   align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table width="130" border="0" align="center"
                                               cellpadding="0" cellspacing="0">
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
                                                                    &nbsp;<a href="#"
                                                                             target="main">友情连接添加</a>
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
                                                                    &nbsp;<a href="#"
                                                                             target="main">友情连接查询</a>
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
                            onClick="show(6)">
                            <table width="100%" border="0"
                                   cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="72%" height="20">
                                        <div align="center">
                                            <table width="100%" height="21" border="0" cellpadding="0"
                                                   cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">留言管理</div></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td width="15%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="show6" style="display: none">
                        <td align="center" valign="top">
                            <table width="145" border="0"
                                   align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table width="130" border="0" align="center"
                                               cellpadding="0" cellspacing="0">
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
                                                                    &nbsp;<a href="#"
                                                                             target="main">留言管理</a>
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
                            onClick="show(7)">
                            <table width="100%" border="0"
                                   cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="72%" height="20">
                                        <div align="center">
                                            <table width="100%" height="21" border="0" cellpadding="0"
                                                   cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">所有成绩查看</div></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td width="15%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="show7" style="display: none">
                        <td align="center" valign="top">
                            <table width="145" border="0"
                                   align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table width="130" border="0" align="center"
                                               cellpadding="0" cellspacing="0">
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
                                                                    &nbsp;<a href="#"
                                                                             target="main">所有成绩查看</a>
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
                            onClick="show(8)">
                            <table width="100%" border="0"
                                   cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="72%" height="20">
                                        <div align="center">
                                            <table width="100%" height="21" border="0" cellpadding="0"
                                                   cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <img src="images/top_8.gif" width="16" height="16">
                                                        </div>
                                                    </td>
                                                    <td valign="middle"><div align="center" class="STYLE1">系统管理</div></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td width="15%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="show8" style="display: none">
                        <td align="center" valign="top">
                            <table width="145" border="0"
                                   align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table width="130" border="0" align="center"
                                               cellpadding="0" cellspacing="0">

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
                                                                    &nbsp;<a href="#?lb=系统公告"
                                                                             target="main">系统公告</a>
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
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
                                                                    &nbsp;<a href="#"
                                                                             target="main">数据备份</a>
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
                                            <table width="100%" height="21" border="0" cellpadding="0"
                                                   cellspacing="0">
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
                            <p class="STYLE3">指导老师：xx555</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>

>
