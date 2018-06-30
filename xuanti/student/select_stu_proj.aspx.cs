using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_select_stu_proj : System.Web.UI.Page
{
    DBClass db = new DBClass();
  
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    protected void bind()
    {
        string user = Context.Session["user"] + "";
        String sql = "select * from view_sel_zhiyuan where 学号='"+user+"'";
        g1.DataSource = db.GetDataSet(sql, "view_sel_zhiyuan");
        g1.DataBind();
    }
    protected void btnSel_Click(object sender, EventArgs e)

    {
        if (proj_no.Text.Trim() != "")
        {
            string user = Context.Session["user"] + "";
            String tea_no1 = proj_no.Text.Trim();
            String sql = "select * from view_sel_zhiyuan where 学号='"+user+"' and 课题号=" + tea_no1;
            g1.DataSource = db.GetDataSet(sql, "view_sel_zhiyuan");
            g1.DataBind();
        }




    }
    protected void g1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {


        long id = Convert.ToInt64(g1.DataKeys[e.RowIndex].Values.ToString());
        Response.Write(e.RowIndex);
        bind();


    }
    protected void g1_RowCommand(object sender, GridViewCommandEventArgs e)

    {

        //"删除"按钮也会调用此函数

        if (e.CommandName == "del")

        {

            //注意此时的CommandArgument表示的是所在行的索引。

            int index = int.Parse(e.CommandArgument.ToString());

            string id = g1.Rows[index].Cells[2].Text;

            string user = Context.Session["user"] + "";
            string sql = "delete from proj_zhiyuan where stu_id='"+user+"' and proj_id='"+id+"'";
          
            Boolean flag = CC.ExecSQL(sql);
            if (flag == true)
            {

                string str = "<script language=javascript>alert('退题成功')</script>";
                Response.Write(str);
                bind();
            }
            else
            {

                string str = "<script language=javascript>alert('退题失败')</script>";
                Response.Write(str);

            }

        }
        

        
    }

   
}