using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_stu_select_proj : System.Web.UI.Page
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
        String sql = "select * from proj_info where proj_zhuang=1;";
        g1.DataSource = db.GetDataSet(sql, "proj_info");
        g1.DataBind();
    }
    protected void btnSel_Click(object sender, EventArgs e)

    {
        if (proj_no.Text.Trim() != "")
        {
            String proj_no1 = proj_no.Text.Trim();
            String sql = "select * from proj_info where proj_zhuang=1 and proj_id=" + proj_no1;
            g1.DataSource = db.GetDataSet(sql, "proj_info");
            g1.DataBind();
        }




    }
    protected void g1_RowCommand(object sender, GridViewCommandEventArgs e)

    {

        //"删除"按钮也会调用此函数

        if (e.CommandName == "xuan1")

        {
           
            //注意此时的CommandArgument表示的是所在行的索引。

            int index = int.Parse(e.CommandArgument.ToString());

            string id = g1.Rows[index].Cells[0].Text;
           
            string user = Context.Session["user"]+"";
            string sql = "insert into proj_zhiyuan values('" + user + "','" + id + "'," + 1 + ","+0+")";
           
            Boolean flag = CC.ExecSQL(sql);
            if (flag == true)
            {
              
                string str = "<script language=javascript>alert('选题成功')</script>";
                Response.Write(str);
            }
            else
            {
               
                string str = "<script language=javascript>alert('选题失败')</script>";
                Response.Write(str);

            }

        }
        else if (e.CommandName == "xuan2")

        {

            //注意此时的CommandArgument表示的是所在行的索引。

            int index = int.Parse(e.CommandArgument.ToString());

            string id = g1.Rows[index].Cells[0].Text;
          
            string user = Context.Session["user"] + "";
            string sql = "insert into proj_zhiyuan values('" + user + "','" + id + "'," + 2 + "," + 0 + ")";
          
            Boolean flag = CC.ExecSQL(sql);
            if (flag == true)
            {
               
                string str = "<script language=javascript>alert('选题成功')</script>";
                Response.Write(str);
            }
            else
            {
              
                string str = "<script language=javascript>alert('选题失败')</script>";
                Response.Write(str);

            }

        }
        else if (e.CommandName == "xuan3")

        {

            //注意此时的CommandArgument表示的是所在行的索引。

            int index = int.Parse(e.CommandArgument.ToString());

            string id = g1.Rows[index].Cells[0].Text;
           
            string user = Context.Session["user"] + "";
            string sql = "insert into proj_zhiyuan values('" + user + "','" + id + "'," + 3 + "," + 0 + ")";
          
            Boolean flag = CC.ExecSQL(sql);
            if (flag == true)
            {
               
                string  str = "<script language=javascript>alert('选题成功')</script>";
                Response.Write(str);
                bind();

            }
            else
            {
               
                string str = "<script language=javascript>alert('选题失败')</script>";
                Response.Write(str);


            }

        }

    }

}