<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<meta http-equiv="Refresh" content="3;URL=adminIndex.jsp" />
<title>��¼�ɹ���תҳ��</title>
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
  <div align = "center">
    	<span class="jive-thread-name">��¼�ɹ���3����Զ�ת����ҳ��û����ת����</span><a href = "adminIndex.jsp" class="jive-thread-name">����</a> 
 </div>
    	    <% System.out.println("��¼�� +"+session.getAttribute("user_name"));%>
</body>
</html>