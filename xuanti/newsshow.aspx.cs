using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web;

public partial class _Default : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();


    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        CC.ExecSQL("UPDATE tb_News SET hits=hits+1 WHERE (NewsId = '" + Request.QueryString["id"] + "')");

        if (!IsPostBack)
        {

            bind();

        }
    }



    protected void bind()
    {

        string id = Request.QueryString["id"];

        //  获取数据集
        DataSet ds = CC.GetDataSet("select  * from  tb_News where NewsId='" + id + "' order by  NewsTime Desc", "News");
        //绑定DataList控件
        
        this.DLcontent.DataSource = ds.Tables["News"].DefaultView;
        this.DLcontent.DataKeyField = "NewsId";
        this.DLcontent.DataBind();

    }
}