<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<meta http-equiv="Refresh" content="3;URL=index.jsp" />
<title>登录成功跳转页面</title>
</head>
<body>
<style type="text/css">
body{
	text-align:center;
	padding:0;
	margin:30px 0 0 0;
	background-image: url(img/bckground4.jpg);
	background-color: #FFFFCC;
	margin-top: 0px;
	}
</style>
<br><br><br><br>


  <div align = "center">
  
    	<span class="jive-thread-name"><font color="white">登录成功！3秒后自动转到首页，没有跳转请点击</font></span><a href = "index.jsp" class="jive-thread-name">这里</a> 
 </div>
    	    <% System.out.println("登录名 +"+session.getAttribute("user_name"));%>
</body>
</html>