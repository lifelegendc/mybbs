<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�޸�����</title>
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


</head>
<body>


<%
String name;

if (((String)session.getAttribute("user_name") == null)&&((String)session.getAttribute("admin_name") == null)) {
	%>	<a href="jspLogin.jsp">��¼</a>
<%
         return;}
else if ((String)session.getAttribute("user_name") == null)
{
	name=(String)session.getAttribute("admin_name");

}
else  

{
	name=(String)session.getAttribute("user_name");

}
%>
<br><br><br><br><br><br>
<div align="center">
 <form action="UpdatePwdFl.jsp"  method="POST">
 <table border="0" cellpadding="0" cellspacing="0" width="300">  <!-- �������λ�� -->
      <tbody>
        <tr valign="top">
          <td width="99%"><div class="jive-thread-list">
  <div class="jive-table">
                <table summary="List of threads" cellpadding="0" cellspacing="0" width="100%">    <!-- ���������ɫ�ȸ�ʽ -->
                  <thead>
                    <tr>
                      <th width="83%" class="jive-first">�޸�����</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                   <tr class="jive-odd">
                      <td class="jive-thread-name"><div align="center">
                          <input  type="hidden" class="form" name="user_name" value=<%=name%> />
                      </div></td>
                    </tr>
                 <%System.out.println(name); %>
                    <tr class="jive-odd">
                      <td class="jive-thread-name"><div align="center">���� �룺
                          <input type="password" class="form" name="user_password" id="user_password"  size="25" maxlength="16"/>
                      </div></td>
                    </tr>
                    
                        
                    <tr class="jive-odd">
                      <td class="jive-thread-name"><div align="center">ȷ������ �룺
                          <input type="password" class="form" name="user_password_again" id="user_password_again"  size="25" maxlength="16"/>
                      </div></td>
                    </tr>
                    
                    <tr class="jive-odd" >
                      <td class="jive-thread-name"><div align="center">��֤�룺
                       <input type=text class="form" name=rand  size="15" maxlength=4 value="">
                        <img border=0 src="image.jsp"> 
                        
                        
                        </div></td>
                     </tr>
                         
                    
                     <tr class="jive-odd">
                      <td class="jive-thread-name">
					    <div align="center">
                        <input type="submit" value="�޸�����">
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

</body>
</html>