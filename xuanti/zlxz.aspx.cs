using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }



    protected void bind()
    {





    }

   
            
   



protected void btnSouSuo_Click(object sender, EventArgs e)
{


    string strSql = "select * from tb_News where (NewsTitle　like '%" + "xx" + "%')";
 
     Session["search"] = strSql;       
    Response.Redirect("search.aspx");
}
protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
{
    if (DropDownList1.SelectedItem.Value =="1")
    {
        Response.Redirect("");
    }
}
protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
{
    if (DropDownList2.SelectedItem.Text == "浙江师范大学行知学院")
    {

        Response.Write("<script>window.open('http://xz.zjnu.edu.cn/','newwindow', 'height=768, width=1024, top=0, left=0, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes, location=yes, status=yes')</script>");
    }

    if (DropDownList2.SelectedItem.Text == "浙江师范大学教务处")
    {

        Response.Write("<script>window.open('http://jwc.zjnu.edu.cn/','newwindow', 'height=768, width=1024, top=0, left=0, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes, location=yes, status=yes')</script>");

    }
    if (DropDownList2.SelectedItem.Text == "浙江师范大学行知学院学工在线")
    {

        Response.Write("<script>window.open('http://xz.zjnu.edu.cn/student/','newwindow', 'height=768, width=1024, top=0, left=0, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes, location=yes, status=yes')</script>");
    }
}

protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
{

    if (DropDownList3.SelectedItem.Text == "浙江省教育厅")
    {
        // Response.Redirect("http://www.zjedu.gov.cn/");

        Response.Write("<script>window.open('http://www.zjedu.gov.cn/','newwindow', 'height=768, width=1024, top=0, left=0, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes, location=yes, status=yes')</script>");
    }

    if (DropDownList3.SelectedItem.Text == "网易")
    {
        //Response.Redirect("http://www.163.com/");
        Response.Write("<script>window.open('http://www.163.com/','newwindow', 'height=768, width=1024, top=0, left=0, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes, location=yes, status=yes')</script>");
    }

    if (DropDownList3.SelectedItem.Text == "凤凰网")
    {
        // Response.Redirect("http://www.ifeng.com/");
        Response.Write("<script>window.open('http://www.ifeng.com/','newwindow', 'height=768, width=1024, top=0, left=0, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes, location=yes, status=yes')</script>");
    }

}

}


