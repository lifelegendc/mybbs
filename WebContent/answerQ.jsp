<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%@ page import="db.DBConn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles.css" rel="stylesheet" type="text/css">
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
    Connection connection;
	String Login_name="";
	String Login_password="";
	String findQ="";
	String findA="";
	String tableName="users";
	
	Statement stmt;//������
	String sql="";//sql���
	ResultSet rs;//�������
	ResultSetMetaData rmeta;////�������Ԫ����
	int numColumns=0;//ȷ�����ݼ������������ֶ���	
%>
<%
	Login_name=request.getParameter("user_name");
	//Login_password=request.getParameter("user_password");
	Login_name=Login_name.trim();
	//Login_password=Login_password.trim();
	if(Login_name.equals("") ){
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
		out.println("������û���Ϊ�գ����ٴε�¼����");
		out.println("<a href='findPswd.jsp'>����������������</a><br>");
		out.println("</div>");
		return;	
	}
%>
<%
connection=dv.connectDB();
//�������ݿ�֮�󣬴���������
stmt = connection.createStatement();
//sql���
sql = "select findQ,findA,password from "+tableName+" where username='"+Login_name+"'";
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
	out.println("���û���δע�ᣡ<br>");
	out.println("<a href='jspLogin.jsp'>��������¼��</a><br>");
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
<a href='findPswd.jsp'>����������������</a><br>
</div>
<%
return;

      } 
else {
%>   <br><br><br><br>
	<div align="center">
 <form action="checkQA.jsp"  method="POST">
 <table border="0" cellpadding="0" cellspacing="0" width="300">  <!-- �������λ�� -->
      <tbody>
        <tr valign="top">
          <td width="99%"><div class="jive-thread-list">
  <div class="jive-table">
                <table summary="List of threads" cellpadding="0" cellspacing="0" width="100%">    <!-- ���������ɫ�ȸ�ʽ -->
                  <thead>
                    <tr>
                      <th width="83%" class="jive-first">�һ�����</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                   <tr class="jive-odd">
                      <td class="jive-thread-name"><div align="center">���⣺
                          <input  type="text" class="form" name="q" value=<%=rs.getString("findQ")%> size="30" maxlength="30" />
                      </div></td>
                    </tr>
                    
                    
                 
                    <tr class="jive-odd" >
                      <td class="jive-thread-name"><div align="center">�𰸣�
                       <input type=text class="form" name="a" size="30" maxlength="30" >
                      
                        
                        
                        </div></td>
                     </tr>
                    
                      <input type="hidden" class="form" name="rightA"  size="15" maxlength=4 value=<%=rs.getString("findA")%>>   
                   
                     
                   
                      <input type="hidden" class="form" name="pwd"  size="15" maxlength=4 value=<%=rs.getString("password")%>>   
                    
                     
                     <tr class="jive-odd">
                      <td class="jive-thread-name">
					    <div align="center">
                        <input type="submit" value="�һ�����">
                        <input type="reset" value="��������"> 
                       
                  </div></td>
                    </tr>
             </tbody>     
   </table>
   </div>
   </div>
   </td>
   </tr>
   
   </tbody>
   </table>
   
  </form>                
</div>
	
	
<% 
      }
    %>
<% 
rs.close(); 
stmt.close(); 
connection.close(); 
%>
<br><a href="jspLogin.jsp">�����˴��ص���¼����</a><br>
</body>
</html>