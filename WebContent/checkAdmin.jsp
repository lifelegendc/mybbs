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
	Connection connection;//���ݿ�����
	String	tableName="admins";
	Statement stmt;//������
	String sql="";//sql���
	ResultSet rs;//�������

%>
<%
System.out.println("����check");
request.setCharacterEncoding("utf-8");
	insert_name=request.getParameter("user_name");
System.out.println(insert_name);
connection=dv.connectDB();
//�������ݿ�֮�󣬴���������
stmt = connection.createStatement();
//sql���
sql = "select * from "+tableName+" where adminname="+insert_name+"";
//����������֮��ͨ����������в�ѯ���������ؽ������
rs=stmt.executeQuery(sql);
if(rs.first())//���ݿ�����������¼
{
%>
<tr>
     <td class="notice" height="45" align="center">�ܱ�Ǹ,�˺�&nbsp;<%=insert_name%>&nbsp;�Ѿ�����ע��</td>
   </tr>
   
   <% 
}
else
{
	%>
    <tr>
      <td class="notice" height="56" align="center">��ϲ��,�˺�&nbsp;<%=insert_name%>&nbsp;û�б�ע��</td>
    </tr>	
	
 <% 
}
%>

<tr>

<br>
<td height="30" align="center"><input type="button" name="Button" value="�ر�" class = "form" onClick="window.close();"></td>
</tr>
 </TABLE>
</body>
</html>