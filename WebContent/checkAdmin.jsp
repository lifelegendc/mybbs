<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%@ page import="db.DBConn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles.css" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
 <table width="90%"  border="0" cellspacing="0" cellpadding="0">
<%! 
    DBConn dv=new DBConn();
	String insert_name="";
	Connection connection;//数据库连接
	String	tableName="admins";
	Statement stmt;//语句对象
	String sql="";//sql语句
	ResultSet rs;//结果集合

%>
<%
System.out.println("这是check");
request.setCharacterEncoding("utf-8");
	insert_name=request.getParameter("user_name");
System.out.println(insert_name);
connection=dv.connectDB();
//连接数据库之后，创建语句对象
stmt = connection.createStatement();
//sql语句
sql = "select * from "+tableName+" where adminname="+insert_name+"";
//创建语句对象之后，通过语句对象进行查询操作，返回结果集合
rs=stmt.executeQuery(sql);
if(rs.first())//数据库中有这条记录
{
%>
<tr>
     <td class="notice" height="45" align="center">很抱歉,账号&nbsp;<%=insert_name%>&nbsp;已经被人注册</td>
   </tr>
   
   <% 
}
else
{
	%>
    <tr>
      <td class="notice" height="56" align="center">恭喜您,账号&nbsp;<%=insert_name%>&nbsp;没有被注册</td>
    </tr>	
	
 <% 
}
%>

<tr>

<br>
<td height="30" align="center"><input type="button" name="Button" value="关闭" class = "form" onClick="window.close();"></td>
</tr>
 </TABLE>
</body>
</html>