using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class club_club_new_more : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id=Request.QueryString["id"];
        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        string sql = "select * from [club_news] where id='" + id + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);

        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            title.Text = sdr["news_title"].ToString();
            author.Text = sdr["news_author"].ToString();
            ly.Text = sdr["news_ly"].ToString();
            content.Text = sdr["news_content"].ToString();

        }
    }
    }