<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
.STYLE22 {color: #666666}
.STYLE36 {font-size: 14px; color: #003399; }
-->
</style>
</head>
<body>
<div align="center">
  <table width="80%" border="0" cellpadding="0" cellspacing="0" background="Images/bottombg.jpg">
    <tr>
      <td height="50" background="bottom.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
         
      </table></td>
    </tr>
  </table>
   <div id="footer">  <center><% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %> </center><br />
</div>
 <div>
  <%   if(application.getAttribute("count")==null){   application.setAttribute("count",new Integer(0));   }   Integer count=(Integer)application.getAttribute("count");      application.setAttribute("count",new Integer(count.intValue()+1));   count=(Integer)application.getAttribute("count");   %>   <center>网页访问总人次：<%=count.intValue()%></center>
</div>
</div>
</body>
</html>
