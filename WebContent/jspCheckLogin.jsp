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
<style type="text/css">
<!--
body {
	background-color: #B1C3D9;
}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=GB18030">

<title>����¼</title>
</head>
<body>
<%
     String rand = (String)session.getAttribute("rand");
     String input = request.getParameter("rand");
%>
   
    <br>
   


<%request.setCharacterEncoding("gb2312");%>
<%! 
    DBConn dv=new DBConn();

	String Login_name="";
	String Login_password="";
	String insert_password_again="";
	String tableName="users";
	
	Statement stmt;//������
	String sql="";//sql���
	ResultSet rs;//�������
	ResultSetMetaData rmeta;////�������Ԫ����
	int numColumns=0;//ȷ�����ݼ������������ֶ���	
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
		out.println("������û�����������Ϊ���ַ��������ٴε�¼����");
		out.println("<a href='jspLogin.jsp'>����������µ�¼��</a><br>");
		out.println("</div>");
		return;	
	}
%>
<%
Connection connection=dv.connectDB();
//�������ݿ�֮�󣬴���������
stmt = connection.createStatement();
//sql���
sql = "select * from "+tableName+" where username='"+Login_name+"' and password='"+Login_password+"'";
//����������֮��ͨ����������в�ѯ���������ؽ������
rs=stmt.executeQuery(sql);
if(!rs.first())//���ݿ���û��������¼
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
	
	
	
	<% 
	out.println("<div align=\"center\">");
	out.println("���ݿ���û��������¼����¼ʧ�ܣ�<br>");
	out.println("<a href='jspLogin.jsp'>����������µ�¼��</a><br>");
	out.println("<a href='insertReg.jsp'>�������ע���</a><br>");
	out.println("</div>");
	return;
}
//���ݿ�����������¼
else  if (!rand.equals(input)) {
	  %>
	
	<style type="text/css">
body{
	text-align:center;
	padding:0;
	margin:20px 0 0 0;
	background-image: url(img/error.jpg);
	background-color: #FFFFCC;
	margin-top: 0px;
	}
</style>
	
	
	
<div align="center">
��֤���������<br>
<a href='jspLogin.jsp'>����������µ�¼��</a><br>
</div>
<%
return;

      } 
else {

	request.getSession(true).setAttribute("user_name",Login_name);
    	  %>
<jsp:forward page="loginOK.jsp"/>
    	  
    	    <%  

      }
    %>
<% 
rs.close(); 
stmt.close(); 
connection.close(); 
%>
<a href="jspLogin.jsp">���Ҫ�ص���¼���棬��������</a><br>
</body>
</html>