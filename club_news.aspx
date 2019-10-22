<%@ Page Language="C#" AutoEventWireup="true" CodeFile="club_news.aspx.cs" Inherits="club_club_news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div >
         <table style="WIDTH: 100%">
                       <tr>
                                <td style="width: 50%;text-align:center;color:#4b4b4b">
                                  标题
                                </td>
                          
                                <td style="width: 25%;text-align:center;color:#4b4b4b">
                                   作者</td>
                                <td style="width: 25%;text-align:center;color:#4b4b4b">
                                   来源</td>
                            </tr>
             </table>
        
         <table style="WIDTH: 100%">

        <tr>
            <td align="left">
                <asp:DataList ID="dlNews" runat="server" Width="100%">
                    <ItemTemplate>
                         <table style="width: 100%; height: 28px; border-bottom: #ffffff 0.1mm solid;">
                           
                            <tr>
                                <td style="width: 50%;text-align:center;">
                                  <a href='<%#Eval("id")%>' target="_blank" title='<%#Eval("news_title") %>'></a>
                                    <a style="color:#EC005F;text-decoration:none" href='club_new_more.aspx?id=<%#Eval("id")%>'><%#Eval("news_title")%> </a>
                                </td>
                                <td  style="width: 25%;text-align:center">
                                    <%#Eval("news_author") %></td>
                                <td  style="width: 25%;text-align:center">
                                    <%#Eval("news_ly") %></td>
                            </tr>
                             
                         </table>
                        <div class="clearfix" style="border-bottom:0.5px solid #d2d2d2"> </div>
                    </ItemTemplate>

                </asp:DataList>
    </table>
</div>
    </form>
</body>

</html>
