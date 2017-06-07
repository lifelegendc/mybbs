<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
            <%@ page import="java.util.Date" %>

<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>发表帖子</title>
</head>
<body>
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
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>

  <body>

  
  
    <div align="center">
	  <%@ include file="Top.jsp"%>
	    <form method="post" action="insertDsc.jsp" >
	    <input type="hidden" name="name" value="<%=session.getAttribute("user_name") %>"/>
	     	<% Date date1=new Date();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
String date2= dateFormat.format(date1); 
String tpcid=request.getParameter("tpcid");
%>
	     <input name="date" type="hidden" class="form" value="<%=date2%>" />
		<input name="tpcid" type="hidden" class="form" value="<%=tpcid%>" />
	    
	  
	    <table width="65%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		  <tr>
		    <td>&nbsp;</td>
	      </tr>
		  <tr>
			
		  </tr>
		  <tr>
		    <td>&nbsp;</td>
	      </tr>
		  <tr>
		    <td>内容：限二百个字以内</td>
	      </tr>
		  <tr>
			<td><textarea name="content" cols="80" rows="6" class="form"></textarea></td>
		  </tr>
	
		  <tr>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="45%"><div align="right">
                    <input name="button2" type="submit" class="form" value="确 定" />
                  </div></td>
				  <td width="55%"><input name="button" type="button" class="form"
																id="button" onclick="window.history.go(-1);" value="返 回" /></td>
                </tr>
              </table>		    </td>
		  </tr>
		</table>
		</form>
	
	</div>
  </body>



</body>
</html>