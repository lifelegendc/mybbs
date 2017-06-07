<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<script src = "script.js" language="javascript">
</script>
<title>管理员首页</title>

<style type="text/css">
body{
	text-align:center;
	padding:0;
	margin:20px 0 0 0;
	background-image: url(img/img_bg_1.jpg);
	background-color: #FFFFCC;
	margin-top: 0px;
	}
</style>
</head>
<body>
<div class="display-tc animate-box fadeIn animated-fast" >
							<h1 ><font color="white" style="font-family:幼圆" size="10"><b>bbs-管理员维护界面</b></font></h1>
							<br>
						
							<h2>团队建设意见 <a href="aboutUs.jsp" >了解更多</a> - 技术支持 <a href="http://www.csdn.com/"  target="_blank">CSDN</a></h2>
							
								<br>
							<p><a class="btn btn-primary btn-lg btn-learn" href="addNotice.jsp">添加公告</a>
							 <a href="deletePost.jsp" class="btn btn-primary btn-lg popup-vimeo btn-video">
							 <i class="icon-play"></i>管理帖子</a></p>
							 <a class="btn btn-primary btn-lg btn-learn" href="viewNotice.jsp">查看公告</a>
							  <a class="btn btn-primary btn-lg btn-learn" href="loginOut.jsp">登出</a>
						</div>
</body>
</html>