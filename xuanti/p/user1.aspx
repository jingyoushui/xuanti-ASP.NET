<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user1.aspx.cs" Inherits="page_user1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
.cen1{
	width:100%;
	height:170px;
	margin:auto;
	padding-top:30px;
	text-align:center;
	font-family:microsoft yahei;text-decoration:none; color:#fff; font-size:80px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
      

        </div>
        <div
		style="height: 450px; background: url(../image/2.jpg); width: 100%;">
		<div class="cen1">毕业设计选题系统</div>
		<div>
            <%
                String type = Context.Session["uid"]+"";
                Response.Write(type);
                Response.Write(":");
                string user = Context.Session["user"] + "";
                Response.Write(user);
            %>
		</div>
		
		
	</div>
    </form>
</body>
</html>
