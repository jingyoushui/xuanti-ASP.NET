using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;


public partial class admin_admin : System.Web.UI.Page
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
        String sql = "select * from admin;";
        g1.DataSource = db.GetDataSet(sql, "admin");
        g1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
}