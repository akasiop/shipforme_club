<%@ Page Language="C#" AutoEventWireup="true" CodeFile="leader.aspx.cs" Inherits="club_leader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/style.css" rel='stylesheet' type='text/css' />
    <style type="text/css">
		body,td,th {
	font-family: "Open Sans", sans-serif;
}
        </style>
</head>
<body>
    <div class="leader_info" >
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="社长："></asp:Label>
        <asp:TextBox ID="leader" runat="server"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label2" runat="server" Text="副社长："></asp:Label>
        <asp:TextBox ID="leader2" runat="server"></asp:TextBox>
    </div>
    </form>
        </div>
</body>
</html>
