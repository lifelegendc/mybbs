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
										class="STYLE16">��ӭ������̼���������̳</font></span> </span> </td>
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
 		wel = "�峿��";
 	} else if (6 <= hour && hour < 12) {
 		wel = "�����";
 	} else if (12 <= hour && hour < 18) {
 		wel = "�����";
 	} else {
 		wel = "���Ϻ�";
 	}

 	if (((String)session.getAttribute("user_name") == null)&&((String)session.getAttribute("admin_name") == null)) {
 %>
        <font color="#000000">�οͣ�<%=wel%>!&nbsp;&nbsp;<a href="jspLogin.jsp">��¼</a>&nbsp;/&nbsp;<a
							href="insertReg.jsp">ע��</a>&nbsp;/&nbsp;<a href="jspLogin.jsp">��ҳ</a></font>
        <%
 	} else if (session.getAttribute("admin_name")==null) {
 		
		
 %><font color="white">
        <%=session.getAttribute("user_name") + "��" + wel%>����ӭ������̼�����������&nbsp;&nbsp;<a
							href="loginOut.jsp">�˳�</a>&nbsp;/&nbsp;<a href="index.jsp">��ҳ</a></font>
        <%
 	}
 	
 	
 	else{
 		
 		%><font color="white">
        <%=session.getAttribute("admin_name") + "��" + wel%>����ӭ������̼�����������&nbsp;&nbsp;<a
							href="loginOut.jsp">�˳�</a>&nbsp;/&nbsp;<a href="adminIndex.jsp">��ҳ</a></font>
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
