using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login2 : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void btnLogin_Click(object sender, EventArgs e)

    {
        String type1 = type.SelectedItem.Value;
        if (txtAdminName.Text.Trim() == "" || txtAdminPwd.Text.Trim() == ""||type1=="")
        {
            Response.Write(CC.MessageBox("登录名和密码不能为空！", "Login.aspx"));
            //Response.Write("<script>alert('登录名和密码不能为空！');location='javascript:history.go(-1)';</script>");
        }
        else
        {
            //判断用户输入的验证码是否正确
                 Session["uid"] = type1;
            
                //调用CommonClass类中的checkLogin方法，判断用户是否为合法用户
                int IntUserIn = CC.checkLogin(txtAdminName.Text.Trim(), txtAdminPwd.Text.Trim(),type1);
                if (IntUserIn > 0)
                {
                    Session["user"] = txtAdminName.Text.Trim();
                //该用户为合法用户，跳转到后台首页（AdminIndex.aspx）中
                     Response.Write("<script language=javascript>window.open('main.aspx');window.close();</script>");
                }
                else
                {
                    //该用户不是合法用户，调用CommonClass类中的MassageBox方法，弹出提示框
                    Response.Write(CC.MessageBox("您输入的用户名或密码错误，请重新输入！", "Login2.aspx"));

                }
 
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.close();location='javascript:history.go(-1)';</script>");
    }



   
}