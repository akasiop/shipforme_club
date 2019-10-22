using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class club_club_news : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)
    {
       
       string name = Session["clubname"].ToString();
       string id = Session["id"].ToString();
        if (!IsPostBack)
        {
            GetListPage();
        }
    }
   private void GetListPage()
   {
       try
       {
           string club = Session["clubname"].ToString();
           string url = "Data Source=.;Initial Catalog=sfm;Integrated Security=True;MultipleActiveResultSets=true";
           SqlConnection con = new SqlConnection(url);

           con.Open();

           SqlDataAdapter sda = new SqlDataAdapter("select  * from  club_news where club='" + club + "' order by id desc  ", con);


           DataSet ds = new DataSet();
           sda.Fill(ds);
           PagedDataSource objPds = new PagedDataSource();
           objPds.DataSource = ds.Tables[0].DefaultView;

           objPds.AllowPaging = true;
           objPds.PageSize = 15;

          
           dlNews.DataSource = objPds;
           dlNews.DataBind();


       }
       catch
       {

       }

   }
}
 