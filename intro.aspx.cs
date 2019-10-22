using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class club_intro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["id"] = "4";
       // Session["name"] = "誓鸟动漫社";
        string id = Session["id"].ToString();
        string name = Session["clubname"].ToString();

        string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
        SqlConnection conn = new SqlConnection(url);
        conn.Open();
        string sql = "select * from [club_info] where id='" + id + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);

        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            if (name == sdr["name"].ToString())
            {
                lb_intro.Text = sdr["intro"].ToString();
            }
        }
    }

}