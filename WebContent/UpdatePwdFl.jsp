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
<title>�޸�����</title>

</head>

<body>
<div align="center">
<%@ include file="Top.jsp"%>
</div>
<%
     String rand = (String)session.getAttribute("rand");
     String input = request.getParameter("rand");
%>
<%


    DBConn dv=new DBConn();
	String update_name="";
	String update_password="";
	String update_password_again="";
	String	tableName="";
    request.setCharacterEncoding("utf-8");
    update_name=request.getParameter("user_name");
	//insert_name=new String(insert_name.getBytes("utf-8"),"GB18030");
	 update_password=request.getParameter("user_password");
	 update_password_again=request.getParameter("user_password_again");
	
	Connection connection;//���ݿ�����
	String sql="";//sql���
	String to="";//here's what page users will go after updating their pwd successfully
	 if (session.getAttribute("admin_name")==null) {
		 tableName="users";
			sql="update "+tableName+" set password='"+update_password+"' where username='"+update_name+"'";
      
     to="<a href='index.jsp'>�ص���ҳ</a><br>" ;
	 
	 }
	
	 else{
		 
		  tableName="admins";
			sql="update "+tableName+" set password='"+update_password+"' where adminname='"+update_name+"'";
			 to="<a href='adminIndex.jsp'>�ص���ҳ</a><br>" ;
	 }
	
	
	
	
	
	Statement stmt;//������
	
	ResultSet rs;//�������
	
%>
<%

	
	if(!update_password.equals(update_password_again)){
		out.println("<br><br><br><br><div align=\"center\">");
		out.println("������������벻һ�£����ٴ�����");
		out.println("<a href='updatePwd.jsp'>������������޸İ�</a><br>");
		out.println("</div>");
		return;
	}
	update_name=update_name.trim();
	update_password=update_password.trim();
	if(update_name.equals("") ||  update_password.equals("")){
		out.println("<br><br><br><br><div align=\"center\">");
		out.println("�û�����������Ϊ���ַ��������ٴ�����");
		out.println("<a href='updatePwd.jsp'>������������޸İ�</a><br>");
		out.println("</div>");
		return;	
	}
	
	 if (!rand.equals(input)) {
		  %>
		  
	<div align="center">
	��֤���������<br>
	<a href='updatePwd.jsp'>������������޸İ�</a><br>
	</div>
	<%
	return;

	      } 
	else {

%>


<%

connection=dv.connectDB();
//�������ݿ�֮�󣬴���������
stmt = connection.createStatement();
%>


<%



	System.out.println(sql);
	stmt.executeUpdate(sql);
out.println("<br><br><br><br><div align=\"center\">");
out.print("��ϲ���������޸ĳɹ���"); 
out.println("����������Ϊ��"+update_password+"<br>");
out.println(to);
out.println("</div>");




stmt.close(); 
connection.close(); }
%>

</body>
</html>
