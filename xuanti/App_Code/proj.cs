using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// proj 的摘要说明
/// </summary>
public class proj
{
    private string _proj_id, _proj_name, _proj_type, _proj_grade, _tea_id;
    private int _proj_zhuang;
    public proj()
    {
       
    }

    public proj(string proj_id, string proj_name, string proj_type, string proj_grade, string tea_id, int proj_zhuang)
    {
        _proj_id = proj_id;
        _proj_name = proj_name;
        _proj_type = proj_type;
        _proj_grade = proj_grade;
        _tea_id = tea_id;
        _proj_zhuang = proj_zhuang;
    }

    public string Proj_id
    {
        get
        {
            return _proj_id;
        }

        set
        {
            _proj_id = value;
        }
    }

    public string Proj_name
    {
        get
        {
            return _proj_name;
        }

        set
        {
            _proj_name = value;
        }
    }

    public string Proj_type
    {
        get
        {
            return _proj_type;
        }

        set
        {
            _proj_type = value;
        }
    }

    public string Proj_grade
    {
        get
        {
            return _proj_grade;
        }

        set
        {
            _proj_grade = value;
        }
    }

    public string Tea_id
    {
        get
        {
            return _tea_id;
        }

        set
        {
            _tea_id = value;
        }
    }

    public int Proj_zhuang
    {
        get
        {
            return _proj_zhuang;
        }

        set
        {
            _proj_zhuang = value;
        }
    }
}