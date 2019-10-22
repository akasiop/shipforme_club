<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update_activity.aspx.cs" Inherits="club_manage_update_activity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" CssClass="GridViewStyle" OnRowDataBound="gridView1_RowDataBound" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="activity_name" HeaderText="名称" SortExpression="activity_name" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="date" HeaderText="活动日期" SortExpression="date" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="place" HeaderText="地点" SortExpression="place" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="kind" HeaderText="类型" SortExpression="kind" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="num_people" HeaderText="活动人数" SortExpression="num_people" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定删除该活动吗？')&quot;&gt;删除活动&lt;/div&gt;">
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" DeleteCommand="DELETE FROM [activity_file] WHERE [id] = @original_id" InsertCommand="INSERT INTO [activity_file] ([activity_name], [date], [place], [kind], [num_people], [state]) VALUES (@activity_name, @date, @place, @kind, @num_people, @state)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [activity_name], [date], [place], [kind], [num_people], [state] FROM [activity_file]" UpdateCommand="UPDATE [activity_file] SET [activity_name] = @activity_name, [date] = @date, [place] = @place, [kind] = @kind, [num_people] = @num_people, [state] = @state WHERE [id] = @original_id">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="activity_name" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="kind" Type="String" />
                <asp:Parameter Name="num_people" Type="String" />
                <asp:Parameter Name="state" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="activity_name" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="kind" Type="String" />
                <asp:Parameter Name="num_people" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
