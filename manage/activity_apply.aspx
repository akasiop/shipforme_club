<%@ Page Language="C#" AutoEventWireup="true" CodeFile="activity_apply.aspx.cs" Inherits="club_activity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../css/style_2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">
      <div style="text-align:center">
        <p class="font_color_1" style="font-size:1.3em;color:#EC005F">
            ——活动上报——
        </p>
      </div>
    <div style="padding-left:2em;padding-top:1em">
        <div>
        <asp:Label ID="Label2" runat="server" Text="社团名称："></asp:Label>
            <asp:TextBox ID="lb_name" runat="server" Width="80%"></asp:TextBox>
            </div>
        <br />
              <div>
        <asp:Label ID="Label1" runat="server" Text="活动名称："></asp:Label>
            <asp:TextBox ID="tb_activity_name" runat="server" Width="80%"></asp:TextBox>
            </div>
            <br />
              <div>
        <asp:Label ID="Label9" runat="server" Text="活动日期："></asp:Label>
            <asp:TextBox ID="tb_date" runat="server" Width="80%"></asp:TextBox> 
            </div>
            <br />
                      <div>
        <asp:Label ID="Label3" runat="server" Text="活动地点："></asp:Label>
            <asp:TextBox ID="tb_place" runat="server" Width="80%"></asp:TextBox> 
            </div>
            <br />
        <div><asp:Label ID="Label4" runat="server" Text="活动类别："> </asp:Label>
            <asp:DropDownList ID="ddl_kind" runat="server" Height="25px" Width="50%">
            <asp:ListItem>--请选择--</asp:ListItem>
            <asp:ListItem>日常活动</asp:ListItem>
            <asp:ListItem>院级活动</asp:ListItem>
            <asp:ListItem>校级活动</asp:ListItem>
            <asp:ListItem>校外活动</asp:ListItem>
            <asp:ListItem>公益活动</asp:ListItem>
            <asp:ListItem>超大型活动</asp:ListItem>
            </asp:DropDownList>
            </div>
          <br />
          <div>
        <asp:Label ID="Label5" runat="server" Text="活动人数："></asp:Label>
            <asp:TextBox ID="tb_number" runat="server" Width="80%"></asp:TextBox> 
            </div>
            <br />
          <div>
        <asp:Label ID="Label6" runat="server" Text="活动地点："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="80%"></asp:TextBox> 
            </div>
            <br />
        <div style="text-align:left">   
            <asp:Label ID="Label7" runat="server" Text="活动文件："></asp:Label>
            <asp:FileUpload ID="fileUpload" runat="server" />
        </div>
              <div>
        <br />
        <div style="text-align:center">
        <asp:Button ID="Button1" runat="server" CssClass="contact_anniu" Text="提交" OnClick="Button1_Click" />
            <br />    
            <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="print_info" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
