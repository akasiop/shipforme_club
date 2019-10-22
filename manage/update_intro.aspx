<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update_intro.aspx.cs" Inherits="club_manage_update_intro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="../../css/style_2.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="../../kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="../../kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../../kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="../../kindeditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="../../kindeditor/plugins/code/prettify.js"></script>
	<script>
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#content1', {
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
        <label id="Label1"  runat="server" text="请输入简介："></label>
        <div>
        <textarea id="content1" cols="100" rows="8" style="width:100%;height:400px;visibility:hidden;" runat="server"></textarea>
        <br />
            <div style="text-align:center">
        <asp:Button ID="Button1" runat="server" CssClass="contact_anniu" Text="更新简介" OnClick="bt_onclick" /> 
                </div>
            </div>
    </form>

</body>
</html>
