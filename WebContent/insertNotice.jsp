<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%@ page import="db.DBConn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��ӹ���</title>
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
	
	
	Connection connection;//���ݿ�����
	String	tableName="notice";
	Statement stmt;//������
	String sql="";//sql���
	ResultSet rs;//�������

	
%>
<%
    request.setCharacterEncoding("GB18030");
    adminname=request.getParameter("adminname");
	//insert_name=new String(insert_name.getBytes("utf-8"),"GB18030");
	content=request.getParameter("content");
	title=request.getParameter("title");
	date=request.getParameter("date3");
System.out.println("���ݹ����Ĳ�����"+date);
	
%>

<%

connection=dv.connectDB();
//�������ݿ�֮�󣬴���������
stmt = connection.createStatement();
%>


<%
	sql="insert into "+tableName+"(adminname,title,content,date) values('"+adminname+"','"+title+"','"+content+"','"+date+"')";
	System.out.println(sql);
	stmt.executeUpdate(sql);
out.println("<div align=\"center\">");
out.print("��ϲ�����¹�����ӳɹ���"); 
out.println("<a href=\"adminIndex.jsp\">�ص���ҳ</a><br>");
out.println("</div>");




stmt.close(); 
connection.close(); 
%>

</body>
</html>