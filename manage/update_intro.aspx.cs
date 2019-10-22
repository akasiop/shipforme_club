using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class club_manage_update_intro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string club = Session["clubname"].ToString();
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        string sql = "select * from [club_info] where name='" + club + "'";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            content1.Value = sdr["intro"].ToString();
            conn.Close();
        }
    }
    protected void bt_onclick(object sender, EventArgs e)
    {
        string club = Session["clubname"].ToString();

        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        string sql = "update club_info set intro ='" + content1.Value + "' where name='" + club + "' ";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);

        cmd.ExecuteNonQuery();
        //关闭连接
        conn.Close();
        Response.Write("<script>alert('简介更新成功！')</script>");
               
            }
        }

