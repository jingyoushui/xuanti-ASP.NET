using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_student_add : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)

    {
        String stu_id1 = stu_id.Text.Trim();
        String stu_name1 = stu_name.Text.Trim();
        String stu_pwd1 = stu_pwd.Text.Trim();
        String class_id1 = class_id.Text.Trim();
        String sql = "insert into student values('" + stu_id1 + "','" + stu_name1 + "','" + stu_pwd1 + "','" + class_id1 + "')";
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