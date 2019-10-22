<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attend_upload.aspx.cs" Inherits="club_attend_upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div style="text-align:center">   
            <asp:Label ID="Label7" runat="server" Text="考勤表上传:"></asp:Label>
            <asp:FileUpload ID="fileUpload" runat="server" />
        </div> 
            <br />
         <div style="text-align:center">
        <asp:Button ID="Button1" runat="server" CssClass="contact_anniu" Text="提交" OnClick="Button1_Click" />
            <br />    
            <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="print_info" Text=""></asp:Label>
            </div>
    </form>
</body>
</html>
