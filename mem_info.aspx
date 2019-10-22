<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mem_info.aspx.cs" Inherits="club_mem_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [name], [username] FROM [user_info] WHERE ([club] = @club)">
            <SelectParameters>
                <asp:SessionParameter Name="club" SessionField="clubname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
        <asp:GridView ID="GridView1" CssClass="GridViewStyle" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" >
                </asp:BoundField>
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
