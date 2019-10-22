using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class club_manage_update_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string news_title = this.title.Text.ToString();
        string news_author = this.author.Text.ToString();
        string news_ly = this.ly.Text.ToString();
        string club = Session["clubname"].ToString();
        string news_adddate = DateTime.Now.ToString();

        if (news_title == "")
        {
            this.lblMessage.Text = "标题不可以为空！";
        }
        else if (news_author == "")
        {
            this.lblMessage.Text = "作者不可以为空！";
        }
        else if (news_ly == "")
        {
            this.lblMessage.Text = "来源不可以为空！";
        }
        else if (content.Value == "")
        {
            this.lblMessage.Text = "内容不可以为空！";
        }
        else
        {
            string update = "insert into club_news (news_title,news_author,news_ly,news_content,club,news_adddate) values('" + news_title + "','" + news_author + "','" + news_ly + "','" + content.Value + "','" + club + "','" + news_adddate + "')";
            //string sql = "UPDATE news SET news_title= CASE  news_title WHEN  ''" + news_title + "'' THEN  'myc'END,news_author=CASE  news_id WHEN  '1' THEN  'hcm'end,news_ly=CASE  news_id WHEN  '1' THEN  'hcm'end,news_content=CASE  news_id WHEN  '1' THEN  'hcm'end,news_adddate=CASE  news_id WHEN  '1' THEN  'hcm'end where news_id='1'";
            string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
            SqlConnection conn = new SqlConnection(url);
            conn.Open();

            //写入基本信息
            SqlCommand cmd = new SqlCommand(update, conn);
            cmd.ExecuteNonQuery();
            //关闭连接
            conn.Close();
            Response.Write("<script Language=Javascript>alert('上传成功！')</script>");
        }
    }
    
}