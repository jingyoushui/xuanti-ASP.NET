using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teacher_stu_proj_list : System.Web.UI.Page
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
        String sql = "select * from view_sel_zhiyuan;";
        g1.DataSource = db.GetDataSet(sql, "view_sel_zhiyuan");
        g1.DataBind();
    }
    protected void btnSel_Click(object sender, EventArgs e)

    {
        if (proj_no.Text.Trim() != "")
        {
            String proj_no1 = proj_no.Text.Trim();
            String sql = "select * from view_sel_zhiyuan where proj_id=" + proj_no1;
            g1.DataSource = db.GetDataSet(sql, "view_sel_zhiyuan");
            g1.DataBind();
        }




    }

    protected void g1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void g1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        g1.EditIndex = e.NewEditIndex;

        bind();
        (g1.Rows[e.NewEditIndex].Cells[0].Controls[0] as TextBox).Enabled = false;
        (g1.Rows[e.NewEditIndex].Cells[1].Controls[0] as TextBox).Enabled = false;
        (g1.Rows[e.NewEditIndex].Cells[2].Controls[0] as TextBox).Enabled = false;
        (g1.Rows[e.NewEditIndex].Cells[3].Controls[0] as TextBox).Enabled = false;
        (g1.Rows[e.NewEditIndex].Cells[4].Controls[0] as TextBox).Enabled = false;
        (g1.Rows[e.NewEditIndex].Cells[5].Controls[0] as TextBox).Enabled = false;
        (g1.Rows[e.NewEditIndex].Cells[6].Controls[0] as TextBox).Enabled = false;
        (g1.Rows[e.NewEditIndex].Cells[7].Controls[0] as TextBox).Enabled = false;
        (g1.Rows[e.NewEditIndex].Cells[8].Controls[0] as TextBox).Enabled = false;
        (g1.Rows[e.NewEditIndex].Cells[9].Controls[0] as TextBox).Enabled = false;
       


    }

    protected void g1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        g1.EditIndex = -1;          //设置GridView的编辑索引为-1,则每行将取消编辑模式
        bind();
    }


    protected void g1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
       
        string tea_id1 = (g1.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text;
        string stu_id1 = (g1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
       string proj_id1 = (g1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        string stu_name1 = (g1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
       string class_id1 = (g1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
        string major_id1 = (g1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
        string proj_name1 = (g1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
        string proj_type1 = (g1.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox).Text;

        string proj_grade1 = (g1.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox).Text;
        int zhiyuan1 = int.Parse((g1.Rows[e.RowIndex].Cells[9].Controls[0] as TextBox).Text);
       

        int is_pass1 = int.Parse(((TextBox)g1.Rows[e.RowIndex].Cells[10].Controls[0]).Text);

        string sql = "update view_sel_zhiyuan set 是否通过=" + is_pass1+ "  where 学号='" + stu_id1 + "' and 课题号='"+ proj_id1+"' and 志愿="+zhiyuan1;
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