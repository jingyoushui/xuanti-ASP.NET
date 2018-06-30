using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.Data;



public partial class newslist : System.Web.UI.Page
{
    string strStyle1 = "6";
   
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            DataList1_Bind();
        }

        bind();
       
    }

    protected void bind()
    {
        

        //获取数据集

        //绑定DataList控件
        DataList1.DataSource = CC.GetDataSet("select  top 9 * from  tb_News where NewsClassId='" + strStyle1 + "' order by  NewsTime Desc", "News");
        DataList1.DataKeyField = "NewsId";
        DataList1.DataBind();



    }
    
    private void DataList1_Bind()
    {
       // string connectionstring = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string myStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
        int CurrentPage = Convert.ToInt32(labNowPage.Text);
        PagedDataSource ps = new PagedDataSource();
        DataSet ds = new DataSet();
        using (SqlConnection conn = new SqlConnection(myStr))
        {
            SqlCommand cmm = new SqlCommand();
            cmm.Connection = conn;
            cmm.CommandType = CommandType.Text;
            cmm.CommandText = "SELECT NewsId,NewsTitle,NewsAuthor,NewsTime FROM tb_News where NewsClassId='" + strStyle1 + "'";
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmm);
            da.Fill(ds, "NewsId");
            da.Dispose();
            conn.Close();
        }
        ps.DataSource = ds.Tables["NewsId"].DefaultView;
        ps.AllowPaging = true;//是否可以分页
        ps.PageSize = 5;//显示的数量
        ps.CurrentPageIndex = CurrentPage - 1; //取得当前页的页码
        lnkbtnFirst.Enabled = true;
        lnkbtnFront.Enabled = true;
        lnkbtnNext.Enabled = true;
        lnkbtnLast.Enabled = true;
        if (CurrentPage == 1)
        {
            lnkbtnFront.Enabled = false;//不显示上一页按钮
            lnkbtnFirst.Enabled = false;//不显示第一页按钮
        }
        if (CurrentPage == ps.PageCount)
        {
            lnkbtnLast.Enabled = false;//不显示最后一页按钮
            lnkbtnNext.Enabled = false;//不显示下一页按钮
        }
        labCount.Text = ps.PageCount.ToString();// Convert.ToString(ps.PageCount);
        DataList1.DataSource = ps;
        DataList1.DataKeyField = "NewsId";
        DataList1.DataBind();
        ds.Dispose();
    }
   
    
    
  
    protected void lnkbtnFirst_Click1(object sender, EventArgs e)
    {
        labNowPage.Text = "1";
        DataList1_Bind();
    }
    protected void lnkbtnFront_Click1(object sender, EventArgs e)
    {
        labNowPage.Text = (Convert.ToInt32(labNowPage.Text.Trim()) - 1).ToString();
        DataList1_Bind();
    }
    protected void lnkbtnNext_Click1(object sender, EventArgs e)
    {
        labNowPage.Text = (Convert.ToInt32(labNowPage.Text.Trim()) + 1).ToString();
        DataList1_Bind();
    }
    protected void lnkbtnLast_Click1(object sender, EventArgs e)
    {
        labNowPage.Text = labCount.Text;
        DataList1_Bind();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("newsshow.aspx?id=" + DataList1.DataKeys[e.Item.ItemIndex].ToString());
    }
}