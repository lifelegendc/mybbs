<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%@ page import="db.DBConn" %>
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
<link href="styles.css" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>删除公告</title>
</head>
<body>
 <table width="90%"  border="0" cellspacing="0" cellpadding="0">
<%! 
    DBConn dv=new DBConn();
	String delete_id="0";
	Connection connection;//数据库连接
	String	tableName="notice";
	Statement stmt;//语句对象
	String sql="";//sql语句
	ResultSet rs;//结果集合

%>
<%

request.setCharacterEncoding("utf-8");
delete_id=request.getParameter("ntcid");

connection=dv.connectDB();
//连接数据库之后，创建语句对象
stmt = connection.createStatement();
//sql语句


sql = "delete from "+tableName+" where ntcid="+delete_id+"";
//创建语句对象之后，通过语句对象进行查询操作，返回结果集合
stmt.executeUpdate(sql);
	out.println("<div align=\"center\">");
	out.print("恭喜您，删除成功！<br>"); 
	out.println("<a href='adminIndex.jsp'>回到首页</a><br>");
	out.println("<a href='viewNotice.jsp'>查看公告</a><br>");
	out.println("<a href='deleteNotice.jsp'>删除公告</a><br>");
	out.println("</div>");

%>

<tr>

<br>
<td height="30" align="center"><input type="button" name="Button" value="关闭" class = "form" onClick="window.close();"></td>
</tr>
 </TABLE>
</body>
</html>