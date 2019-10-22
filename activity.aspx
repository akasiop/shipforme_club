<%@ Page Language="C#" AutoEventWireup="true" CodeFile="activity.aspx.cs" Inherits="club_activity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="GridView1" runat="server"  OnRowDataBound="gridView1_RowDataBound" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"   CssClass="GridViewStyle" OnRowCommand="OnRowCommand">
         <Columns>
                <asp:BoundField DataField="FileKey" HeaderText="FileKey" SortExpression="FileKey" />
             <asp:BoundField DataField="activity_name" HeaderText="activity_name" SortExpression="activity_name" />
             <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
             <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
             <asp:BoundField DataField="kind" HeaderText="kind" SortExpression="kind" />
             <asp:BoundField DataField="num_people" HeaderText="num_people" SortExpression="num_people" />
              <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
             <asp:ButtonField CommandName="Download" Text="查看详情" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>

         </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [FileKey], [activity_name], [date], [place], [kind], [num_people], [state] FROM [activity_file] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:SessionParameter Name="name" SessionField="clubname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
