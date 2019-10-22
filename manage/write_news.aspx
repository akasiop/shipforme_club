<%@ Page Language="C#" AutoEventWireup="true" CodeFile="write_news.aspx.cs" Inherits="club_manage_update_news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../css/style_2.css" rel='stylesheet' type='text/css' />
     <link rel="stylesheet" href="../../kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="../../kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../../kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="../../kindeditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="../../kindeditor/plugins/code/prettify.js"></script>
	<script>
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#content', {
	            cssPath: '/kindeditor/plugins/code/prettify.css',
	            uploadJson: '/kindeditor/asp.net/upload_json.ashx',
	            fileManagerJson: '/kindeditor/asp.net/file_manager_json.ashx',
	            allowFileManager: true,
	            afterCreate: function () {
	                var self = this;
	                K.ctrl(document, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	                K.ctrl(self.edit.doc, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	            }
	        });
	        prettyPrint();
	    });

	    // ASP.NET 上传文件
	    KindEditor.ready(function (K) {
	        K.create('#textarea_id', {
	            uploadJson: '/kindeditor/asp.net/upload_json.ashx',
	            fileManagerJson: '/kindeditor/asp.net/file_manager_json.ashx',
	            allowFileManager: true
	        });
	    });


	</script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding-left:2em;padding-top:1em">
        <div>
        <asp:Label ID="Label2" runat="server" Text="标题："></asp:Label>
            <asp:TextBox ID="title" runat="server" Width="80%"></asp:TextBox>
            </div>
        <br />
              <div>
        <asp:Label ID="Label1" runat="server" Text="作者："></asp:Label>
            <asp:TextBox ID="author" runat="server" Width="80%"></asp:TextBox>
            </div>
            <br />
              <div>
        <asp:Label ID="Label9" runat="server" Text="来源："></asp:Label>
            <asp:TextBox ID="ly" runat="server" Width="80%"></asp:TextBox> 
            </div>
            <br />
              <div>
        <asp:Label ID="Label11" runat="server" Text="内容："></asp:Label>
           <textarea id="content" cols="100" rows="8" style="width:100%;height:300px;visibility:hidden;" runat="server"></textarea>
            </div>
        <br />
        <div style="text-align:center">
        <asp:Button ID="Button1" runat="server" CssClass="contact_anniu" Text="上传新闻" OnClick="Button1_Click" />
            <br />    
            <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="print_info" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
