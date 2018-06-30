using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Session["search"]);
       // 获取符合条件的新闻信息
            this.Search1.DataSource = CC.GetDataSet(Convert.ToString(Session["search"]), "News");
            this.Search1.DataKeyField = "NewsId";
            this.Search1.DataBind();
        
    }
    protected void Search1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("newsshow.aspx?id=" + Search1.DataKeys[e.Item.ItemIndex].ToString());
    }
}