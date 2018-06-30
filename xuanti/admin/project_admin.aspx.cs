using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_project_admin : System.Web.UI.Page
{
    DBClass db = new DBClass();
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){
            bind();
        }
    }
    protected void bind()
    {
        String sql = "select * from proj_info;";
        g1.DataSource = db.GetDataSet(sql, "proj_info");
        g1.DataBind();
    }
    protected void btnSel_Click(object sender, EventArgs e)

    {
        if (proj_no.Text.Trim() != "")
        {
            String tea_no1 = proj_no.Text.Trim();
            String sql = "select * from proj_info where proj_id=" + tea_no1;
            g1.DataSource = db.GetDataSet(sql, "proj_info");
            g1.DataBind();
        }




    }

  

    /**  protected void g1_RowdataBound(object sender, GridViewRowEventArgs e)
      {
          if (e.Row.RowType == DataControlRowType.DataRow)
          {
              LinkButton _singleClickButton = (LinkButton)e.Row.Cells[0].Controls[0];
              string _jsSingle = ClientScript.GetPostBackClientHyperlink(_singleClickButton, "");
              for(int columnIndex = 0; columnIndex < e.Row.Cells.Count; columnIndex++)
              {
                  string js = _jsSingle.Insert(_jsSingle.Length - 2, columnIndex.ToString());
                  e.Row.Cells[columnIndex].Attributes["onclick"] = js;
                  e.Row.Cells[columnIndex].Attributes["style"] +="cursor:pointer;corsor:hand;" ;

              }
          }
      }
      **/


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
        proj proj1 = new proj();
        proj1.Proj_id = (g1.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text;
        proj1.Proj_name = (g1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
        proj1.Proj_type = (g1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        proj1.Proj_grade = (g1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
        proj1.Tea_id = (g1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
        int zhiyuan = int.Parse(((TextBox)g1.Rows[e.RowIndex].Cells[5].Controls[0]).Text);
       
        string sql = "update proj_info set proj_name='" + proj1.Proj_name + "',proj_type='" + proj1.Proj_type + "',proj_grade='" +
            proj1.Proj_grade + "',tea_id='" + proj1.Tea_id + "',proj_zhuang='" + zhiyuan + "' where proj_id='"+ proj1.Proj_id+"'";
        Boolean flag=CC.ExecSQL(sql);
        if (flag == true)
        {

            string str = "<script language=javascript>alert('添加成功')</script>";
            Response.Write(str);
            bind();

        }
        else
        {

            string str = "<script language=javascript>alert('添加成功')</script>";
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