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
<title>Insert title here</title>
</head>
<body>
 <table width="90%"  border="0" cellspacing="0" cellpadding="0">
<%! 
    DBConn dv=new DBConn();
	String delete_id="0";
	Connection connection;//���ݿ�����
	String	tableName="dsc";
	Statement stmt;//������
	String sql="";//sql���
	ResultSet rs;//�������

%>
<%

request.setCharacterEncoding("utf-8");
delete_id=request.getParameter("tpcid");
System.out.println(delete_id);
connection=dv.connectDB();
//�������ݿ�֮�󣬴���������
stmt = connection.createStatement();
//sql���

sql="select * from "+tableName+" where tpcid="+delete_id+"";
System.out.println(sql);
rs=stmt.executeQuery(sql);



if(!rs.first())//���û��������¼
{

}
else{
	
	sql = "delete from "+tableName+" where tpcid="+delete_id+"";
	System.out.println(sql);
	stmt.executeUpdate(sql);
	

}

tableName="topic";
sql = "delete from "+tableName+" where tpcid="+delete_id+"";
//����������֮��ͨ����������в�ѯ���������ؽ������
stmt.executeUpdate(sql);
	out.println("<div align=\"center\">");
	out.print("��ϲ����ɾ���ɹ���"); 
	out.println("<a href='adminIndex.jsp'>�ص���ҳ</a><br>");
	out.println("</div>");

%>

<tr>

<br>
<td height="30" align="center"><input type="button" name="Button" value="�ر�" class = "form" onClick="window.close();"></td>
</tr>
 </TABLE>
</body>
</html>