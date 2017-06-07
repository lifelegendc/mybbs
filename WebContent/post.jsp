<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>发表帖子</title>

<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>

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
 <head>
    
    
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
	    <form method="post" action="insertTopic.jsp" name="addTitle">
	    <input type="hidden" name="name" value="<%=session.getAttribute("user_name") %>"/>
	   
	    <table width="65%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		  <tr>
		    <td>&nbsp;</td>
	      </tr>
		  <tr>
			<td>主题：<input name="title" type="text" size="60" maxlength="40" class="form">
			  限二十个字以内</td>
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