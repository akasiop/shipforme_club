<%@ Page Language="C#" AutoEventWireup="true" CodeFile="club_info.aspx.cs" Inherits="club_club_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>Shipforme</title>
		<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
    <style type="text/css">
        .header{
	background: url(../images/bg2.jpg) no-repeat 0px 0px; 

}

    </style>


	</head>
	<body>
	<!---- container ---->
		<!---- header ----->
		<div class="header about-head">
			<div class="container">
				<!--- logo ----->
				<div class="logo">
					<img src="../images/logoname.png" width="206" height="32" alt=""/>
				</div>
				<!--- logo ----->
				<!--- top-nav ----->
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li><a href="../second/register.aspx">注册</a></li>
					  <li><a href="../second/about.aspx">关于我们</a></li>
					  <li><a href="../second/contact.aspx">联系我们</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<!--- top-nav ----->
					<!----- script-for-nav ---->
				<script>
				    $("span.menu").click(function () {
				        $(".top-nav ul").slideToggle("slow", function () {
				            // Animation complete.
				        });
				    });
				</script>
				<!----- script-for-nav ---->
			
			</div>
			</div>
		<!---- header ----->
		<!------ about ---->
		<div class="services">
			<!--- bradcrumbs ---->
			<div class="breadcrumbs">
				<div class="container">
					<div class="breadcrumbs-left">
						<h1>社团主页</h1>
					</div>
					<div class="breadcrumbs-right">
						<ul>
							<li><a href="../index.aspx">Home</a> <label>:</label></li>
							<li>社团主页</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!--- bradcrumbs ---->
		</div>
		<div class="blog">
				<div class="container">
					<div class="blog-left">
						<div class="blog-left-head">
							<span> </span>
							<h3>您正在查看： <asp:Label ID="lblMessage1" runat="server" ForeColor="#EC005F" Text=""></asp:Label></h3>
						</div>
						<div class="blog-artical-grids">
							<div class="blog-artical-grid">
								<!----start-artical-tags---->
								<!----//End-artical-tags---->
								<!-----start-artical-destilas---->
									<div class="artical-details">
                                        <iframe id="Right" name="Right" style="width:100%;height:32em;
background: #fff;display: block;border-radius: 2px 2px 2px 2px; -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;-moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;" frameborder=0;></iframe>
									</div>
								<!-----//End-artical-destilas---->
							</div><!----//End-blog-artical-grid--->
							<!----//End-blog-artical-grid--->
							<!----//End-blog-artical-grid--->
							<!----//End-blog-artical-grid--->
						</div>
					</div>
					<div class="blog-right">
						<div class="blog-right-head">
							<span> </span>
							<h3>Menu selection</h3>
						</div>
						<!----start-accordinatio-files--->
						<script src="../js/vallenato.js" type="text/javascript" charset="utf-8"></script>
						<link rel="stylesheet" href="../css/vallenato.css" type="text/css" media="screen" charset="utf-8">
						<!----start-accordinatio-files--->
						
							<h2 class="accordion-header inactive-header">社团信息</h2>
							<div class="accordion-content" style="width: 242px;">
								<ul>
									<li><a href="../club/intro.aspx" target="Right">基本简介</a></li>
									<li><a href="../club/leader.aspx" target="Right">组织结构</a></li>
                                    <li><a href="../club/mem_info.aspx" target="Right">社员信息</a></li>
                                    <li><a href="../club/activity.aspx" target="Right">社团活动</a></li>
                                    <li><a href="../club/club_news.aspx" target="Right">社团动态</a></li>
                                    <li><a href="../club/attend.aspx" target="Right">基本考勤</a></li>
								</ul>
							</div>
							<h2 class="accordion-header inactive-header">更多</h2>
							<div class="accordion-content" style="width: 242px;">
								<ul>
									<li><a href="#">新功能正在研发中...</a></li>
								</ul>
							</div>
						</div>
						<!----start-tags---->
						<div class="blog-right-head">
							<span> </span>
						</div>
						<!----//End-tags---->
						<!----start-comments---->
						<!----start-Comments---->
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
	<!---- container ---->
	<div class="footer">
				<div class="top-footer">
					<div class="container">
						<div class="top-footer-grids">
							<div class="top-footer-grid">
								<h3>联系我们</h3>
								<ul class="address">
									<li><span class="map-pin"> </span>云南财经大学（呈贡校区）</li>
									<li><span class="mob"> </span>(0871) 159-1157-3832</li>
									<li><span class="msg"> </span><a>myc520hcm@qq.com</a></li>
								</ul>
							</div>
							<div class="top-footer-grid">
								<h3>最新动态</h3>
								<ul class="latest-post">
									<li><a href="#"><span class="icon1"> </span> Shipforme 平台即将上线！</a> </li>
                                    
								</ul>
							</div>
							<div class="top-footer-grid">
								<h3>版权申明</h3>
								<div class="tweet-box">
								  <div class="tweet-box-info">
									 <p>&copy; Copyright 2018 Template by 无言的叶 | Web项目开发组</p>
									  <p>滇ICP备18002319号 <img src="../images/batb1.png" width="20" height="20" alt=""/></p>
									
									</div>
									<div class="clear"> </div>
							  </div>
								<div class="tweet-box">
								  <div class="clear"> </div>
							  </div>
							</div>
							<div class="clear"> </div>
						</div>
					</div>
				</div>
				<!----start-bottom-footer---->
				<div class="bottom-footer">
					<div class="container">
					  <div class="clear"> </div>
					</div>
				</div>
				<!----//End-bottom-footer---->
			</div>
	</body>
</html>



