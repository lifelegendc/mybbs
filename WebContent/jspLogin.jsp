<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��¼</title>

<link href="styles.css" rel="stylesheet" type="text/css">


<style type="text/css">
body{
	text-align:center;
	padding:0;
	margin:0px 0 0 0;
	background-image: url(img/bckground4.jpg);
	background-color: #FFFFCC;
	margin-top: 0px;
	}
</style>


</head>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<div class="logo">
<%@ include file="Top.jsp"%>
</div>

 <div align="center">
 <form action="jspCheckLogin.jsp"  method="POST">
 <table border="0" cellpadding="0" cellspacing="0" width="300">  <!-- �������λ�� -->
      <tbody>
        <tr valign="top">
          <td width="99%"><div class="jive-thread-list">
  <div class="jive-table">
                <table summary="List of threads" cellpadding="0" cellspacing="0" width="100%">    <!-- ���������ɫ�ȸ�ʽ -->
                  <thead>
                    <tr>
                      <th width="83%" class="jive-first">�û���¼</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                   <tr class="jive-odd">
                      <td class="jive-thread-name"><div align="center">�� �ţ�
                          <input  type="text" class="form" name="user_name" id="user_name" size="25" maxlength="16" />
                      </div></td>
                    </tr>
                 
                    <tr class="jive-odd">
                      <td class="jive-thread-name"><div align="center">�� �룺
                          <input type="password" class="form" name="user_password" id="user_password"  size="25" maxlength="16"/>
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
                        <input type="submit" value="��¼">
                         <a href="findPswd.jsp"><input type="button" value="��������"> </a>
                        <a href="adminLogin.jsp"><input type="button" value="����Ա��¼" ></a>
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

<div align="center">
<br/>
<%@ include file="Bottom.jsp"%>
</div>




</body>
</html>