using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_proj_all_select : System.Web.UI.Page
{
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
        String sql = "select * from view_sel_detail;";
        g1.DataSource = db.GetDataSet(sql, "view_sel_detail");
        g1.DataBind();
    }
    protected void btnSel_Click(object sender, EventArgs e)

    {
        if (proj_no.Text.Trim() != "")
        {
            String tea_no1 = proj_no.Text.Trim();
            String sql = "select * from view_sel_detail where proj_id=" + tea_no1;
            g1.DataSource = db.GetDataSet(sql, "view_sel_detail");
            g1.DataBind();
        }




    }

    protected void g1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}