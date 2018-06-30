using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teacher_tea1 : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    DBClass db = new DBClass();
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
        
        String sql = "select * from teacher where tea_id='"+user+"'";
        g1.DataSource = db.GetDataSet(sql, "teacher");
        g1.DataBind();
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
        




    }
}