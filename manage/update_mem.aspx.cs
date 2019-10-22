using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class club_manage_update_mem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   protected void Button1_Click(object sender, EventArgs e)
    {

         string username = TextBox1.Text;
         string identity = "普通学生";
         string club = Session["clubname"].ToString();
   
         string sql = "select * from [user_info] where username='" + username + "'";
         string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
         SqlConnection conn = new SqlConnection(url);
         conn.Open();
         SqlCommand read = new SqlCommand(sql, conn);

         if (username == "")
         {
             this.lblMessage.Text = "请输入学号！";
         }
         else
         {
             DataSet ds = new DataSet();
             SqlDataReader sdr = read.ExecuteReader();

             if (sdr.Read())
             {

                 if (username == sdr["username"].ToString())
                 {
                     if (identity == sdr["identity"].ToString())
                     {
                         string sql1 = "update user_info set [identity] ='社员',club='" + club + "' where username='" + username + "'";
                         SqlConnection conn1 = new SqlConnection(url);
                         conn1.Open();
                         //写入基本信息
                         SqlCommand cmd1 = new SqlCommand(sql1, conn1);
                         cmd1.ExecuteNonQuery();
                         //关闭连接
                         conn1.Close();
                         Response.Write("<script>alert('社员添加成功！')</script>");
                     }
                     else
                     {
                         this.lblMessage.Text = "该用户已是社团成员！";
                     }
                 }
             }
             else
             {
                 this.lblMessage.Text = "请输入正确的学号！";
             }
         }
    }

   protected void OnRowCommand(object sender, GridViewCommandEventArgs e)
   {
       if (e.CommandName == "Delete_mem")
       {

           //判断用户点击的是哪行

           int rowIndex = Convert.ToInt32(e.CommandArgument);

           //得到被点击行的数据

           GridViewRow row = GridView1.Rows[rowIndex];


           //得到id和用户名
           string id = row.Cells[0].Text;
           string username = row.Cells[1].Text;
           string identity = row.Cells[3].Text;
           Convert.ToInt32(id);//将id转换为整型
           Session["id"] = id;
           Session["username"] = username;
           Session["identity"] = identity;


           //将社员身份删除
           string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
           string sql = "select * from [user_info] where id='" + id + "' ";
           SqlConnection conn = new SqlConnection(url);
           conn.Open();
           SqlCommand cmd = new SqlCommand(sql, conn);
           SqlDataReader sdr = cmd.ExecuteReader();
           if (sdr.Read())
           {
               if (username == sdr["username"].ToString())
               {

                   string sql1 = "update user_info set [identity] ='普通学生',club='无' where id='" + id + "'and username='" + username + "'";
                   SqlConnection conn1 = new SqlConnection(url);
                   conn1.Open();
                   //写入基本信息
                   SqlCommand cmd1 = new SqlCommand(sql1, conn1);
                   cmd1.ExecuteNonQuery();
                   //关闭连接
                   conn1.Close();
                   Response.Write("<script>alert('已删除!')</script>");

               }
               else
               {
                   Response.Write("<script>alert('error')</script>");
               }
           }
       }
   }
}