<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update_mem.aspx.cs" Inherits="club_manage_update_mem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Shipforme</title>
       
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../../js/jquery.min.js"></script>
        <link href="./css/style.css" rel='stylesheet' type='text/css' />
		<link href="../../css/style_2.css" rel='stylesheet' type='text/css' />
		
        <style type="text/css">
button:hover{
 text-decoration:underline;  /*鼠标放上去有下划线*/
}
</style>


   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            &nbsp;


            <asp:Label ID="Label1" runat="server" Text="学号："></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" Text="确认添加" OnClick="Button1_Click" />


        &nbsp;<asp:Label ID="lblMessage" runat="server" Font-Size="1em" ForeColor="#EC005F"></asp:Label>


            <br />


            <br />


        </div>
        <div>
        <asp:GridView ID="GridView1" CssClass="GridViewStyle" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowCommand="OnRowCommand">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="username" HeaderText="学号" SortExpression="username" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" >
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                 <asp:BoundField DataField="identity" HeaderText="身份" SortExpression="identity">
                <HeaderStyle ForeColor="#EC005F" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField CommandName="Delete_mem" Text="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('确定移除该社员？')&quot;&gt;移除&lt;/div&gt;">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" ForeColor="#EC005F" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=sfm;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [username], [name], [identity] FROM [user_info] WHERE ([club] = @club)" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [user_info] WHERE [id] = @original_id" InsertCommand="INSERT INTO [user_info] ([username], [name], [identity]) VALUES (@username, @name, @identity)" UpdateCommand="UPDATE [user_info] SET [username] = @username, [name] = @name, [identity] = @identity WHERE [id] = @original_id">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="identity" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="club" SessionField="clubname" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="identity" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
    </form>
</body>
</html>
