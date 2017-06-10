<%@ page pageEncoding="GB18030" import="java.util.Date"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<link href="styles.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
<!--

-->
</style>
</head>
<body>
<div align="center">
  <table width="80%" height="150px" border="0" cellpadding="0"
				cellspacing="0">
    <tr>
      <td ><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="22%"><span class="STYLE1">Let's code!</font></span> </td>
            <td width="78%" rowspan="2"><span class="STYLE4"> &nbsp;&nbsp;&nbsp;&nbsp;<span
										class="STYLE16">欢迎来到编程技术交流论坛</font></span> </span> </td>
          </tr>
          <tr>
            <td><div align="right" class="STYLE2 STYLE16"> BBS </div></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td><span class="BODY">&nbsp;&nbsp;
        <%!String wel = null;%>
        <%
        java.util.Date date = new java.util.Date();
 	int hour = date.getHours();
 	if (hour < 6) {
 		wel = "清晨好";
 	} else if (6 <= hour && hour < 12) {
 		wel = "上午好";
 	} else if (12 <= hour && hour < 18) {
 		wel = "下午好";
 	} else {
 		wel = "晚上好";
 	}

 	if (((String)session.getAttribute("user_name") == null)&&((String)session.getAttribute("admin_name") == null)) {
 %>
        <font color="#000000">游客，<%=wel%>!&nbsp;&nbsp;<a href="jspLogin.jsp">登录</a>&nbsp;/&nbsp;<a
							href="insertReg.jsp">注册</a>&nbsp;/&nbsp;<a href="jspLogin.jsp">首页</a></font>
        <%
 	} else if (session.getAttribute("admin_name")==null) {
 		
		
 %><font color="white">
        <%=session.getAttribute("user_name") + "，" + wel%>，欢迎来到编程技术交流中心&nbsp;&nbsp;<a
							href="loginOut.jsp">退出</a>&nbsp;/&nbsp;<a href="index.jsp">首页</a></font>
        <%
 	}
 	
 	
 	else{
 		
 		%><font color="white">
        <%=session.getAttribute("admin_name") + "，" + wel%>，欢迎来到编程技术交流中心&nbsp;&nbsp;<a
							href="loginOut.jsp">退出</a>&nbsp;/&nbsp;<a href="adminIndex.jsp">首页</a></font>
        <%
 		
 		
 	}
 %>
        </span> </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
