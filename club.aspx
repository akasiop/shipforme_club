<%@ Page Language="C#" AutoEventWireup="true" CodeFile="club.aspx.cs" Inherits="club_club_mem_check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [name], [leader], [number] FROM [club_info]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="社团名称" SortExpression="name" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="leader" HeaderText="社长" SortExpression="leader" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="number" HeaderText="社团人数" SortExpression="number" >
                 <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                 <asp:ButtonField CommandName="check"  Text="查看社团"  >
                            <ItemStyle HorizontalAlign="Center" ForeColor="#EC005F"  />
                        </asp:ButtonField>
            </Columns>
        </asp:GridView>
   
    </form>
</body>
</html>
