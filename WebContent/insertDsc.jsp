<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%@ page import="db.DBConn" %>
   <%@ page import="db.insertDsc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��Ӹ���</title>
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
    insertDsc flw;
    

	String tpcid="";
	String content="";
	String name="";
	String date;
	
	
	Connection connection;//���ݿ�����
	String	tableName="dsc";
	Statement stmt;//������
	String sql="";//sql���
	ResultSet rs;//�������

	
%>
<%
    request.setCharacterEncoding("GB18030");
    tpcid=request.getParameter("tpcid");
	//insert_name=new String(insert_name.getBytes("utf-8"),"GB18030");
	content=request.getParameter("content");
	name=request.getParameter("name");
	date=request.getParameter("date");

	
%>

<%

connection=dv.connectDB();
//�������ݿ�֮�󣬴���������
stmt = connection.createStatement();
%>


<%
	sql="insert into "+tableName+"(tpcid,content,user,date) values('"+tpcid+"','"+content+"','"+name+"','"+date+"')";
    flw=new insertDsc(tpcid);
   System.out.println("������"+flw.getDsc());
	System.out.println(sql);
	stmt.executeUpdate(sql);
	out.println("<br><br><br><br>");
out.println("<div align=\"center\">");
out.print("��ϲ�����ظ��ɹ���"); %>
<br><a href="viewDetail.jsp?tpcid=<%=tpcid%>" >�鿴����</a><br>
<% 
out.println("<a href=\"view.jsp\">�ص�����</a><br>");
out.println("<a href=\"index.jsp\">�ص���վ��ҳ</a><br>");
out.println("</div>");




stmt.close(); 
connection.close(); 
%>

</body>
</html>