using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teacher_proj_add : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)

    {
        String proj_id1 = proj_id.Text.Trim();
        String proj_name1 = proj_name.Text.Trim();
        String proj_type1 = proj_type.Text.Trim();
        String proj_grade1 = proj_grade.SelectedItem.Value;

        String tea_id1 = Context.Session["user"]+"";
        int proj_zhuang1 = 0;
        String sql = "insert into proj_info values('" + proj_id1 + "','" + proj_name1 + "','" + proj_type1 + "','" + proj_grade1 +"','"+ tea_id1 +"','"+ proj_zhuang1 + "')";
        Response.Write(sql);
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