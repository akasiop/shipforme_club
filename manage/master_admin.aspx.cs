using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class club_manage_master_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string clubname = Session["clubname"].ToString();
        string identity = Session["identity"].ToString();
        string name = Session["name"].ToString();
        this.lblMessage1.Text = clubname;
        this.lblMessage2.Text = identity;
        this.lblMessage3.Text = name;

    }
}