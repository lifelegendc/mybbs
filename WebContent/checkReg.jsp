<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
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
<script src = "script.js" language="javascript"> 
</script>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>注册成功</title>

</head>

<body>
<div align="center">
<%@ include file="Top.jsp"%>
</div>

<%! 


    DBConn dv=new DBConn();
	String insert_name="";
	String insert_password="";
	String insert_password_again="";
	String insert_gender="";
	String insert_email="";
	String insert_findQ="";
	String insert_findA="";
	String insert_birthdate="";
	Connection connection;//数据库连接
	String	tableName="users";
	Statement stmt;//语句对象
	String sql="";//sql语句
	ResultSet rs;//结果集合
	
%>
<%
    request.setCharacterEncoding("utf-8");
	insert_name=request.getParameter("user_name");
	//insert_name=new String(insert_name.getBytes("utf-8"),"GB18030");
	insert_password=request.getParameter("user_password");
	insert_password_again=request.getParameter("user_password_again");
	insert_gender=request.getParameter("gender");
	insert_email=request.getParameter("email");
	insert_findQ=request.getParameter("question");
	String insert_findA=request.getParameter("answer");
	insert_birthdate=request.getParameter("year")+"-"+request.getParameter("month");
	
	if(!insert_password.equals(insert_password_again)){
		out.println("<div align=\"center\">");
		out.println("两次输入的密码不一致，请再次输入");
		out.println("<a href='insertReg.jsp'>点击这里重新注册吧</a><br>");
		out.println("</div>");
		return;
	}
	insert_name=insert_name.trim();
	insert_password=insert_password.trim();
	if(insert_name.equals("") ||  insert_password.equals("")){
		out.println("<div align=\"center\">");
		out.println("用户名或者密码为空字符串，请再次输入");
		out.println("<a href='insertReg.jsp'>点击这里重新注册吧</a><br>");
		out.println("</div>");
		return;	
	}

%>


<%

connection=dv.connectDB();
//连接数据库之后，创建语句对象
stmt = connection.createStatement();
%>


<%
//sql语句
sql = "select * from "+tableName+" where username='"+insert_name+"'";
//创建语句对象之后，通过语句对象进行查询操作，返回结果集合
rs=stmt.executeQuery(sql);
if(rs.first())//数据库中有这条记录
{   out.println("<div align=\"center\">");
	out.println("数据库中有这个姓名，无法插入数据库，无法注册\n");
	out.println("<a href='insertReg.jsp'>点击这里重新注册吧</a><br>");
	out.println("</div>");
	return;
}


else {
	sql="insert into "+tableName+"(username,password,gender,email,findQ,findA,birthdate) values('"+insert_name+"','"+insert_password+"','"+insert_gender+"','"+insert_email+"','"+insert_findQ+"','"+insert_findA+"','"+insert_birthdate+"')";
	System.out.println(sql);
	stmt.executeUpdate(sql);
out.println("<div align=\"center\">");
out.print("恭喜您，注册成功！"); 
out.println("您的用户名："+insert_name+"<br>");
out.println("您的密码："+insert_password+"<br>");
out.println("<a href='jspLogin.jsp'>点击这里登录吧</a><br>");
out.println("</div>");

}

rs.close(); 
stmt.close(); 
connection.close(); 
%>

</body>
</html>
