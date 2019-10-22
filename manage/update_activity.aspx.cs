using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class club_manage_update_activity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["name"] = "誓鸟动漫社";
    }
    protected void gridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)//数据行
        {

            string print = e.Row.Cells[6].Text; //Cells[0]为第一列 
            //查找关键字 
            if (print.Contains("正在进行"))
            {
                string wei = "<font color='#EC005F'>" + print;

                e.Row.Cells[6].Text = print.Replace("正在进行", wei);
            }
            if (print.Contains("已结束"))
            {
                string yi = "<font color='#464646'>" + print;

                e.Row.Cells[6].Text = print.Replace("已结束", yi);
            }

        }
    }
}