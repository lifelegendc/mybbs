<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>У��</title>


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
String answer=request.getParameter("a");
String coAnswer=request.getParameter("rightA");
if(answer.equals(coAnswer))
{
	%>
	
	<br><br><br><br>
    <div align="center">
	<font color="white">��ϲ����������Ϊ��<%=request.getParameter("pwd")%><br></font>
	<a href='jspLogin.jsp'>��������¼��</a><br>
	</div>
	
	<%

}

else

{
	%>
	<br><br><br><br>
	 <div align="center"><font color="white">
�ش�����<br>
<a href='insertReg.jsp'>�������ע���</a><br></font>
</div>

<%
}


	%>
</body>
</html>