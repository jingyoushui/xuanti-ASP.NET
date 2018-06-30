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
using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;


public partial class add : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           

        }
    }



    
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (this.FileUpload1.HasFile)
        {
            if (FileUpload1.FileName == "" || FileUpload1.FileName == null)
            {
                return;
            }
            string File_N = FileUpload1.FileName.ToString();//获取上传文件的物理路径
            string[] File_Path = File_N.Split('\\');//对路径进行分割
            File_N = File_Path[File_Path.Length - 1];//获取上传文件名
            string webDir = Server.MapPath(".") + "\\images\\";
            if (!Directory.Exists(webDir))//检查目录是否存在
            {
                Directory.CreateDirectory(webDir);//不存在，则创建
            }
            //   FileUpload1.SaveAs(webDir + File_N);
            this.Label1.Text = "<li>" + "原文件路径：" + Path.GetFullPath(this.FileUpload1.FileName);
            this.Label1.Text += "<br>";
            this.Label1.Text += "<li>" + "文件大小：" + this.FileUpload1.PostedFile.ContentLength + "字节";
            this.Label1.Text += "<br>";
            this.Label1.Text += "<li>" + "文件类型：" + this.FileUpload1.PostedFile.ContentType;
            string picpath = "~/images/" + File_N;
            

            Response.Write("文件上传成功");

            CC.ExecSQL("INSERT INTO tb_News( NewsTitle, NewsContent, NewsClassId, pic1,hits,NewsTime,NewsAuthor)VALUES ('" + this.txtNewsTitle.Text.Trim() + "', '" + this.txtNewsContent.Text.Trim() + "',  '" + this.ddlNewsType.SelectedValue.ToString() + "', '" + picpath + "',  '" + 1 + "',  '" + DateTime.Now.ToString("yyyy-MM-dd") + "',  '" + this.author.SelectedValue.ToString() + "')");
            //调用CommonClass类的MessageBox方法，弹出提示框，提示用户添加成功
            Response.Write(CC.MessageBox("添加成功！"));
        }
    }
    protected void btnAdd_Click(object sender, System.EventArgs e)
    {

    }
    protected void btnReset_Click(object sender, System.EventArgs e)
    {

    }
}