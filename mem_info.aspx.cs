using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class club_mem_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string name = Session["clubname"].ToString();
        string id = Session["id"].ToString();
    }
}