<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<style type="text/css">
<!--
body {
	background-color: #B1C3D9;
}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=GB18030">

<title>检查登录</title>
</head>
<body>
<jsp:useBean id="myBean" scope="session" class="db.DBConn"/>
<%
     String rand = (String)session.getAttribute("rand");
     String input = request.getParameter("rand");
%>
   
    <br>  


<%request.setCharacterEncoding("gb2312");%>
<%



	String Login_name="";
	String Login_password="";
	String insert_password_again="";
	String tableName="admins";
	
	Statement stmt;//语句对象
	String sql="";//sql语句
	ResultSet rs;//结果集合
	ResultSetMetaData rmeta;////结果集合元数据
	int numColumns=0;//确定数据集的列数，亦字段数	
%>
<%
	Login_name=request.getParameter("user_name");
	Login_password=request.getParameter("user_password");
	Login_name=Login_name.trim();
	Login_password=Login_password.trim();
	if(Login_name.equals("") ||  Login_password.equals("")){
		
		%>
		<style type="text/css">
	body{
		text-align:center;
		padding:0;
		margin:30px 0 0 0;
		background-image: url(img/error.jpg);
		background-color: #FFFFCC;
		margin-top: 0px;
		}
	</style>
		
		
		
		<% 
		out.println("<div align=\"center\">");
		out.println("输入的用户名或者密码为空字符串，请再次登录输入");
		out.println("<a href='adminLogin.jsp'>点击这里重新登录吧</a><br>");
		out.println("</div>");
		return;	
	}
%>
<%
Connection connection=myBean.connectDB();
//连接数据库之后，创建语句对象
stmt = connection.createStatement();
//sql语句
sql = "select * from "+tableName+" where adminname='"+Login_name+"' and password='"+Login_password+"'";
//创建语句对象之后，通过语句对象进行查询操作，返回结果集合
rs=stmt.executeQuery(sql);
if(!rs.first())//数据库中没有这条记录
{   
	
	%>
	<style type="text/css">
body{
	text-align:center;
	padding:0;
	margin:30px 0 0 0;
	background-image: url(img/error.jpg);
	background-color: #FFFFCC;
	margin-top: 0px;
	}
</style>
	
	
	
	<% out.println("<div align=\"center\">");
	out.println("数据库中没有这条记录，登录失败！<br>");
	out.println("<a href='adminLogin.jsp'>点击这里重新登录吧</a><br>");

	out.println("</div>");
	return;
}
//数据库中有这条记录
else  if (!rand.equals(input)) {
	  %>
	  
<div align="center">
验证码输入错误！<br>
<a href='adminLogin.jsp'>点击这里重新登录吧</a><br>
</div>
<%
return;

      } 
else {

	request.getSession(true).setAttribute("admin_name",Login_name);
    	  %>
<jsp:forward page="adminloginOK.jsp"/>
    	  
    	    <%  

      }
    %>
<% 
rs.close(); 
stmt.close(); 
connection.close(); 
%>
<a href="adminLogin.jsp">如果要回到登录界面，请点击这里</a><br>
</body>
</html>