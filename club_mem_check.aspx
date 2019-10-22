<%@ Page Language="C#" AutoEventWireup="true" CodeFile="club_mem_check.aspx.cs" Inherits="club_club_mem_check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [name], [leader], [number] FROM [club_info]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="leader" HeaderText="leader" SortExpression="leader" />
                <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
                 <asp:ButtonField CommandName="check" Text="查看社团" >
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:ButtonField>
            </Columns>
        </asp:GridView>
   
    </form>
</body>
</html>
