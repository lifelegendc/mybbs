<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.util.Date" %>

<%@ page import="java.text.SimpleDateFormat" %>
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
<title>��ӹ���</title>

</head>
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
<body>


<% 
    DBConn dv=new DBConn();
	String title="";
	String content="";
	String name="";
	String date;
	
	
	Connection connection;//���ݿ�����
	String	tableName="topic";
	Statement stmt;//������
	String sql="";//sql���
	ResultSet rs;//�������

	
%>
<%
    request.setCharacterEncoding("GB18030");
    title=request.getParameter("title");
	//insert_name=new String(insert_name.getBytes("utf-8"),"GB18030");
	content=request.getParameter("content");
	if((title==null||title.equals(""))&&(content==null||content.equals(""))){
		out.println("<br><br><br><br><div align=\"center\">");
		out.print("���⡢���ݲ���Ϊ�գ�<br>"); 
		out.println("<a href=\"post.jsp\">���·���</a><br>");
		out.println("<a href=\"index.jsp\">�ص���ҳ</a><br>");
		out.println("</div>");
		return;
		
		
	}
	
	
	else if(title==null||title.equals(""))
		
	{
		
		out.println("<br><br><br><br><div align=\"center\">");
		out.print("���ⲻ��Ϊ�գ�<br>"); 
		out.println("<a href=\"post.jsp\">���·���</a><br>");
		out.println("<a href=\"index.jsp\">�ص���ҳ</a><br>");
		out.println("</div>");
		return;
	}
	else if(content==null||content.equals(""))
	{
		out.println("<br><br><br><br><div align=\"center\">");
		out.print("���ݲ���Ϊ�գ�<br>"); 
		out.println("<a href=\"post.jsp\">���·���</a><br>");
		out.println("<a href=\"index.jsp\">�ص���ҳ</a><br>");
		out.println("</div>");
		return;
	}
	else{
	
	name=request.getParameter("name");
	Date date1=new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//���Է�����޸����ڸ�ʽ
	date= dateFormat.format(date1); 
	
	
%>

<%

connection=dv.connectDB();
//�������ݿ�֮�󣬴���������
stmt = connection.createStatement();
%>


<%

	sql="insert into "+tableName+"(title,content,date,viewtimes,dsc,user) values('"+title+"','"+content+"','"+date+"',0,0,'"+name+"')";
	System.out.println(sql);
	stmt.executeUpdate(sql);
	out.println("<br><br><br><br>");	
out.println("<div align=\"center\">");
out.print("��ϲ��������ɹ���<br>"); 
out.println("<a href=\"view.jsp\">�ص�����</a><br>");
out.println("<a href=\"index.jsp\">�ص���ҳ</a><br>");
out.println("</div>");




stmt.close(); 
connection.close(); }
%>

</body>
</html>
