using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_student_select : System.Web.UI.Page
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
        String sql = "select * from student;";
        g1.DataSource = db.GetDataSet(sql, "student");
        g1.DataBind();
    }
    protected void btnSel_Click(object sender, EventArgs e)

    {
        if (stu_id.Text.Trim() != "")
        {
            String stu_id1 = stu_id.Text.Trim();
            String sql = "select * from student where stu_id=" + stu_id1;
            g1.DataSource = db.GetDataSet(sql, "student");
            g1.DataBind();
        }
        else
        {
            bind();
        }




    }

    protected void g1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        g1.EditIndex = e.NewEditIndex;

        bind();
        (g1.Rows[e.NewEditIndex].Cells[0].Controls[0] as TextBox).Enabled = false;


    }

    protected void g1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        g1.EditIndex = -1;          //设置GridView的编辑索引为-1,则每行将取消编辑模式
        bind();
    }


    protected void g1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        string stu_id1 = (g1.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text;
        string stu_name1 = (g1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
        string stu_pwd1 = (g1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        string class_id1 = (g1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;

        string sql = "update student set stu_name='" + stu_id1 + "',stu_pwd='" + stu_pwd1 + "',class_id='" +
            class_id1 + "' where stu_id='" + stu_id1 + "'";
        Console.WriteLine(sql);
        Boolean flag = CC.ExecSQL(sql);
        if (flag == true)
        {


            string str = "<script language=javascript>alert('更新成功')</script>";
            Response.Write(str);
            bind();

        }
        else
        {


            string str = "<script language=javascript>alert('更新失败')</script>";
            Response.Write(str);

        }
        g1.EditIndex = -1;//取消编辑  
        bind();






    }

    protected void g1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {



        long id = Convert.ToInt64(g1.DataKeys[e.RowIndex].Values.ToString());
        Console.Write(e.RowIndex);


    }
}