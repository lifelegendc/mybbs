<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%@ page import="db.DBConn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>添加公告</title>
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
</head>
<body>

<% 
    DBConn dv=new DBConn();
	String adminname="";
	String content="";
	String title="";
	String date;
	
	
	Connection connection;//数据库连接
	String	tableName="notice";
	Statement stmt;//语句对象
	String sql="";//sql语句
	ResultSet rs;//结果集合

	
%>
<%
    request.setCharacterEncoding("GB18030");
    adminname=request.getParameter("adminname");
	//insert_name=new String(insert_name.getBytes("utf-8"),"GB18030");
	content=request.getParameter("content");
	title=request.getParameter("title");
	date=request.getParameter("date3");
System.out.println("传递过来的参数："+date);
	
%>

<%

connection=dv.connectDB();
//连接数据库之后，创建语句对象
stmt = connection.createStatement();
%>


<%
	sql="insert into "+tableName+"(adminname,title,content,date) values('"+adminname+"','"+title+"','"+content+"','"+date+"')";
	System.out.println(sql);
	stmt.executeUpdate(sql);
out.println("<div align=\"center\">");
out.print("恭喜您，新公告添加成功！"); 
out.println("<a href=\"adminIndex.jsp\">回到首页</a><br>");
out.println("</div>");




stmt.close(); 
connection.close(); 
%>

</body>
</html>