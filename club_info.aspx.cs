using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class club_club_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Session["id"].ToString();
        string clubname = Session["clubname"].ToString();
        this.lblMessage1.Text = clubname;
    }
}