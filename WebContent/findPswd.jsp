<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>找回密码</title>
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
<br><br><br><br><br><br>
<div align="center">
 <form action="answerQ.jsp"  method="POST">
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
                      <td class="jive-thread-name"><div align="center">账 号：
                          <input  type="text" class="form" name="user_name" id="user_name" size="25" maxlength="12" />
                      </div></td>
                    </tr>
                 
                    <tr class="jive-odd" >
                      <td class="jive-thread-name"><div align="center">验证码：
                       <input type=text class="form" name=rand  size="15" maxlength=4 value="">
                        <img border=0 src="image.jsp"> 
                        
                        
                        </div></td>
                     </tr>
                         
                    
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

</body>
</html>