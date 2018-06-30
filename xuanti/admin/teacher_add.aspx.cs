using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_teacher_add : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)

    {
        String tea_no1 = tea_no.Text.Trim();
        String tea_name1 = tea_name.Text.Trim();
        String tea_pwd1 = tea_pwd.Text.Trim();
        String major_no1 = major_no.Text.Trim();
        String sql = "insert into teacher values('"+tea_no1+"','"+tea_name1+"','"+tea_pwd1+"','"+major_no1+"')";
        Console.WriteLine(sql);
        Boolean flag = CC.ExecSQL(sql);
        if (flag == true)
        {

            string str = "<script language=javascript>alert('添加成功')</script>";
            Response.Write(str);
            

        }
        else
        {

            string str = "<script language=javascript>alert('添加失败')</script>";
            Response.Write(str);

        }

    }
 }