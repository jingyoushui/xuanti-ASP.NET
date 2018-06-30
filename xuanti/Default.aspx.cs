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

    string strStyle1 ="3";
    string strStyle2 ="4";
    string strStyle3 ="5";
    string strStyle4 ="6";
    string strStyle5 ="7";
    string strStyle6 = "10";
    protected void bind()
    {


        //获取数据集
         
        //绑定DataList控件
        jxxw.DataSource = CC.GetDataSet("select  top 8 * from  tb_News where NewsClassId='" + strStyle1 + "' order by  NewsTime Desc", "News");
        jxxw.DataKeyField = "NewsId";
        jxxw.DataBind();

       //绑定DataList控件
        jwtz.DataSource = CC.GetDataSet("select  top 9 * from  tb_News where NewsClassId='" + strStyle2 + "' order by  NewsTime Desc", "News");
       jwtz.DataKeyField = "NewsId";
        jwtz.DataBind();


     //绑定DataList控件
        bkjy.DataSource = CC.GetDataSet("select  top 9 * from  tb_News where NewsClassId='" + strStyle3 + "' order by  NewsTime Desc", "News");
       bkjy.DataKeyField = "NewsId";
         bkjy.DataBind();



         //绑定DataList控件
         xgzx.DataSource = CC.GetDataSet("select  top 9 * from  tb_News where NewsClassId='" + strStyle4 + "' order by  NewsTime Desc", "News");
         xgzx.DataKeyField = "NewsId";
         xgzx.DataBind();



         //绑定DataList控件
         kygl.DataSource = CC.GetDataSet("select  top 9 * from  tb_News where NewsClassId='" + strStyle5 + "' order by  NewsTime Desc", "News");
         kygl.DataKeyField = "NewsId";
         kygl.DataBind();


         //绑定DataList控件
        xyfj.DataSource = CC.GetDataSet("select  top 7 * from  tb_News where NewsClassId='" + strStyle6 + "' order by  NewsTime Desc", "News");
        xyfj.DataKeyField = "NewsId";
        xyfj.DataBind();

    

    }

   
            
   
protected void  jxxw_ItemCommand(object source, DataListCommandEventArgs e)
{
    
   
    Response.Redirect("newsshow.aspx?id=" + jxxw.DataKeys[e.Item.ItemIndex].ToString());
}
protected void jwtz_ItemCommand(object source, DataListCommandEventArgs e)
{
     Response.Redirect("newsshow.aspx?id=" + jwtz.DataKeys[e.Item.ItemIndex].ToString());
}

protected void bkjy_ItemCommand(object source, DataListCommandEventArgs e)
{
    Response.Redirect("newsshow.aspx?id=" + bkjy.DataKeys[e.Item.ItemIndex].ToString());
}

protected void xgzx_ItemCommand(object source, DataListCommandEventArgs e)
{
    Response.Redirect("newsshow.aspx?id=" + xgzx.DataKeys[e.Item.ItemIndex].ToString());
}

protected void kygl_ItemCommand(object source, DataListCommandEventArgs e)
{
    Response.Redirect("newsshow.aspx?id=" + kygl.DataKeys[e.Item.ItemIndex].ToString());
}



protected void xyfj_ItemCommand1(object source, DataListCommandEventArgs e)
{
    Response.Redirect("newsshow.aspx?id=" + xyfj.DataKeys[e.Item.ItemIndex].ToString());
}


protected void btnSouSuo_Click(object sender, EventArgs e)
{

    string strSql = "select * from tb_News where NewsTitle like '%" + this.txbSouSuo.Text + "%'";


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
    if (DropDownList2.SelectedItem.Text=="浙江师范大学行知学院")
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





    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void jxxw_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}


