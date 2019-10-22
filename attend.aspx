<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attend.aspx.cs" Inherits="club_attend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="gridView1_RowDataBound" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="GridViewStyle" OnRowCommand="OnRowCommand">
            <Columns>
                <asp:BoundField DataField="FileKey" HeaderText="FileKey" SortExpression="FileKey" />
                <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName" />
                <asp:BoundField DataField="FileTime" HeaderText="FileTime" SortExpression="FileTime" />
                <asp:BoundField DataField="FileUser" HeaderText="FileUser" SortExpression="FileUser" />
                 <asp:ButtonField CommandName="Download" Text="查看考勤表" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [FileKey], [FileName], [FileTime], [FileUser] FROM [attend_file] WHERE ([FileUser] = @FileUser)">
            <SelectParameters>
                <asp:SessionParameter Name="FileUser" SessionField="clubname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
