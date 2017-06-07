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

<title>检查登录</title>
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
	
	Statement stmt;//语句对象
	String sql="";//sql语句
	ResultSet rs;//结果集合
	ResultSetMetaData rmeta;////结果集合元数据
	int numColumns=0;//确定数据集的列数，亦字段数	
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
		out.println("输入的用户名为空，请再次登录输入");
		out.println("<a href='findPswd.jsp'>点击这里重新输入吧</a><br>");
		out.println("</div>");
		return;	
	}
%>
<%
connection=dv.connectDB();
//连接数据库之后，创建语句对象
stmt = connection.createStatement();
//sql语句
sql = "select findQ,findA,password from "+tableName+" where username='"+Login_name+"'";
//创建语句对象之后，通过语句对象进行查询操作，返回结果集合
rs=stmt.executeQuery(sql);
if(!rs.first())//数据库中没有这条记录
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
	out.println("该用户尚未注册！<br>");
	out.println("<a href='jspLogin.jsp'>点击这里登录吧</a><br>");
	out.println("<a href='insertReg.jsp'>点击这里注册吧</a><br>");
	out.println("</div>");
	return;
}
//数据库中有这条记录
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
验证码输入错误！<br>
<a href='findPswd.jsp'>点击这里重新输入吧</a><br>
</div>
<%
return;

      } 
else {
%>   <br><br><br><br>
	<div align="center">
 <form action="checkQA.jsp"  method="POST">
 <table border="0" cellpadding="0" cellspacing="0" width="300">  <!-- 调整表格位置 -->
      <tbody>
        <tr valign="top">
          <td width="99%"><div class="jive-thread-list">
  <div class="jive-table">
                <table summary="List of threads" cellpadding="0" cellspacing="0" width="100%">    <!-- 调整表格颜色等格式 -->
                  <thead>
                    <tr>
                      <th width="83%" class="jive-first">找回密码</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                   <tr class="jive-odd">
                      <td class="jive-thread-name"><div align="center">问题：
                          <input  type="text" class="form" name="q" value=<%=rs.getString("findQ")%> size="30" maxlength="30" />
                      </div></td>
                    </tr>
                    
                    
                 
                    <tr class="jive-odd" >
                      <td class="jive-thread-name"><div align="center">答案：
                       <input type=text class="form" name="a" size="30" maxlength="30" >
                      
                        
                        
                        </div></td>
                     </tr>
                    
                      <input type="hidden" class="form" name="rightA"  size="15" maxlength=4 value=<%=rs.getString("findA")%>>   
                   
                     
                   
                      <input type="hidden" class="form" name="pwd"  size="15" maxlength=4 value=<%=rs.getString("password")%>>   
                    
                     
                     <tr class="jive-odd">
                      <td class="jive-thread-name">
					    <div align="center">
                        <input type="submit" value="找回密码">
                        <input type="reset" value="重新输入"> 
                       
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
<br><a href="jspLogin.jsp">单击此处回到登录界面</a><br>
</body>
</html>