using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// DBClass 的摘要说明
/// </summary>
public class DBClass
{
    SqlConnection myConn;    //用于连接数据库
    SqlCommand myCmd;        //用于执行Sql语句
    DataSet ds;              //数据集
    SqlDataAdapter adapt;    //填充数据集
	public DBClass()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 连接数据库
    /// </summary>
    /// <returns>返回SqlConnection对象</returns>
    public SqlConnection GetConnection()
    {
        string myStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
        myConn = new SqlConnection(myStr);
        return myConn;
    }
    /// <summary>
    /// 更新数据库
    /// </summary>
    /// <param name="strSql">sqlStr执行的SQL语句</param>
    public void ExecNonQuery(string strSql)
    {
        
        try
        {
            myConn = GetConnection();//与数据库连接
            myCmd = new SqlCommand();//初始化SqlCommand类对象
            myCmd.Connection = myConn;
            myCmd.CommandText = strSql;
            if (myCmd.Connection.State != ConnectionState.Open)
            {
                myCmd.Connection.Open();//打开与数据库的连接
            }
            myCmd.ExecuteNonQuery();//执行Sql操作，并返回受影响的行数

        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message, ex);

        }
        finally
        {
            if (myCmd.Connection.State == ConnectionState.Open)
            {//断开连接，释放资源
                myCmd.Connection.Close();
                myConn.Dispose();
                myCmd.Dispose();

            }
        }
    }
    /// <summary>
    /// 返回一个值
    /// </summary>
    /// <param name="strSql">sqlStr执行的SQL语句</param>
    /// <returns>返回获取的值</returns>
    public string ExecScalar(string strSql)
    {
     
        try
        {
            myConn = GetConnection();//与数据库连接
            myCmd = new SqlCommand();//初始化SqlCommand类对象
            myCmd.Connection = myConn;
            myCmd.CommandText = strSql;
            if (myCmd.Connection.State != ConnectionState.Open)
            {
                myCmd.Connection.Open();//打开与数据库的连接
            }
            //使用SqlCommand对象的ExecuteScalar方法返回第一行第一列的值
            strSql=Convert.ToString(myCmd.ExecuteScalar());
            return strSql ;

        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message, ex);

        }
        finally
        {
            if (myCmd.Connection.State == ConnectionState.Open)
            {//断开连接，释放资源
                myConn.Dispose();
                myCmd.Connection.Close();
                myCmd.Dispose();

            }
        }
    
    }
    /// <summary>
    /// 说  明：  GetDataSet数据集，返回数据源的数据表
    ///	返回值：  数据源的数据表
    ///	参  数：  sqlStr执行的SQL语句，TableName 数据表名称
    /// </summary>
    public DataTable GetDataSet(string strSql, string TableName)
    {
        ds= new DataSet();
        try
        {
            myConn = GetConnection();//与数据库连接
            adapt = new SqlDataAdapter(strSql, myConn); //实例化SqlDataAdapter类对象
            adapt.Fill(ds,TableName);//填充数据集
            return ds.Tables[TableName];//返回数据集DataSet的表的集合

        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message, ex);

        }
        finally
        {//断开连接，释放资源
            myConn.Close();
            adapt.Dispose();
            ds.Dispose();
            myConn.Dispose();
            
        }

    }

}
