﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class club_activity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Session["clubname"].ToString();
        this.lb_name.Text = name;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        if (fileUpload.PostedFile.FileName == "")
        {
            this.lblMessage.Text = " 请上传新闻稿！";
        }
        else
        {
            Session["username"] = "201605006446";
            string username = Session["username"].ToString();
            //写入信息
            string name = Session["clubname"].ToString();
            string activity_name = tb_activity_name.Text;
            string date = tb_date.Text;
            string place = tb_place.Text;
            string kind = ddl_kind.Text;
            string num_people = tb_number.Text;
            // Convert.ToInt32(number);//将number转换为整型
          
            //上传文件
           
                string filepath = fileUpload.PostedFile.FileName; //文件路径
                string filename = Path.GetFileName(filepath); //文件名
                string fileExtension = Path.GetExtension(filepath); //文件的扩展名
                int filesize = fileUpload.PostedFile.ContentLength;//获取文件的大小


                //生成主键(用时间和文件名组合生成主键)
                string filekey = Path.GetFileNameWithoutExtension(filename);
                filekey = DateTime.Now.ToString("yyyymmddhhmmss") + filekey;

                //将文件本身转换成字节准备上传
                Stream filestream = fileUpload.PostedFile.InputStream;
                byte[] filebuffer = new byte[filesize]; //准备一个和文件大小一样的缓存(字节数组)
                filestream.Read(filebuffer, 0, filesize); //将文件流转换成字节数组，为了存入数据库

                //连接数据库

                String strConn = "Data Source=.;Initial Catalog=sfm;Integrated Security=true";
                SqlConnection conn = new SqlConnection(strConn);
                conn.Open();


                SqlCommand command = new SqlCommand("Uploadfile_activity", conn);

                
                

                command.CommandType = CommandType.StoredProcedure; //命令类型为存储过程

                command.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = name;//写入name:
                command.Parameters.Add("@activity_name", SqlDbType.NVarChar, 50).Value = activity_name;//写入activity_name:
                command.Parameters.Add("@date", SqlDbType.NVarChar, 50).Value = date;//写入date:
                command.Parameters.Add("@place", SqlDbType.NVarChar, 50).Value = place;//写入place:
                command.Parameters.Add("@kind", SqlDbType.NVarChar, 50).Value = kind;//写入kind:
                command.Parameters.Add("@num_people", SqlDbType.NVarChar, 50).Value = num_people;//写入num_people:

                command.Parameters.Add("@filekey", SqlDbType.NVarChar, 50).Value = filekey;//写入主键:

                command.Parameters.Add("@fileName", SqlDbType.NVarChar, 50).Value = filename; //写入文件名

                command.Parameters.Add("@fileSize", SqlDbType.Int).Value = filesize;//写入文件大小

                command.Parameters.Add("@fileType", SqlDbType.VarChar, 10).Value = fileExtension; //写入文件类型

                command.Parameters.Add("@fileTime", SqlDbType.DateTime).Value = DateTime.Now; //写入当前时间

                command.Parameters.Add("@fileContent", SqlDbType.VarBinary).Value = filebuffer; //!以而进行形式存入文件本身

                command.Parameters.Add("@filePath", SqlDbType.NVarChar).Value = filepath;//写入文件路径

                command.Parameters.Add("@fileUser", SqlDbType.NVarChar, 50).Value = username;//写入username:

                command.ExecuteNonQuery();
 
                //关闭连接
                conn.Close();

                Response.Write("<script>alert('活动上报成功!请等待审核！')</script>");
            }
    }
}