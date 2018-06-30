<%@ Control Language="C#"  AutoEventWireup="true" CodeFile="top.ascx.cs" Inherits="top" %>
<style type="text/css">
    .style2
    {
        width: 119px;
    }
    .left{
	width:26px;
	height:510px;
	background:url(../image/main/left.gif) repeat-y;
	float:left;
}
.cen{
	width:98.8%;
	height:510px;
	float:left;
	margin-left:-18px;
}
.right{
	width:8px;
	height:510px;
	background:url(../image/main/right.gif) repeat-y;
	float:right;
}

.footer{
	height:30px;
	width:100%;
}
.footer1{
	height:30px;
	width:23px;
	background:url(../image/main/footer1.gif);
	float:left;
}

.footer2{
	height:30px;
	width:96.1%;
	background:url(../image/main/footer2.gif) repeat-x;
	float:left;
}
.footer3{
	height:30px;
	width:29px;
	background:url(../image/main/footer3.gif);
	float:right;
}


</style>

<div style="width:1348px;height:92px;background-image:url(images/top.png)">
    <div style="width:100px;margin-right:100px;height:30px;float:right;margin-top:25px;">
        <a href="Default.aspx">首页</a>
    </div>
    <div style="width:300px;height:30px;margin-right:600px; float:right;margin-top:29px;">
        用户：<% Response.Write(Context.Session["user"]); %>
        &nbsp;&nbsp;
        类型：<% Response.Write(Context.Session["uid"]); %>
    </div>
    
</div>

<div class="left"></div>
<div class="cen">
    <%
        String type = Context.Session["uid"]+"";
        if (type.Equals("admin"))
        {
            Response.Write(" <iframe src='/test/test.aspx' width='100%' height='500'></iframe>");
        }else if (type.Equals("teacher"))
        {
            Response.Write(" <iframe src='/test/test2.aspx' width='100%' height='500'></iframe>");
        }else if (type.Equals("student"))
        {
            Response.Write(" <iframe src='/test/test3.aspx' width='100%' height='500'></iframe>");
        }
    %>
    
</div>
<div class="right"></div>

	<div class="footer">
		<div class="footer1"></div>
		<div class="footer2"></div>
		<div class="footer3"></div>
	</div>