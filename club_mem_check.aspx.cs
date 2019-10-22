using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class club_club_mem_check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "check")
        {

            //判断用户点击的是哪行

            int rowIndex = Convert.ToInt32(e.CommandArgument);

            //得到被点击行的数据

            GridViewRow row = GridView1.Rows[rowIndex];


            //得到id和社团名
            string id = row.Cells[0].Text;
            string name = row.Cells[1].Text;
            Convert.ToInt32(id);//将id转换为整型
            Session["id"] = id;
            Session["name"] = name;

            Response.Write("<script>window.open('../club/club_info.aspx')</script>");
        }
    }
}