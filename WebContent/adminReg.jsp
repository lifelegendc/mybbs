<%@ page language="java" contentType="text/html;" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src = "script.js" language="javascript">
</script>
<style type="text/css">
<!--
.STYLE111 {
	color: #FF0000
}
-->

</style>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
<link href="styles.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
<%@ include file="Top.jsp"%>
</div>

<div align="center">
<form name="reg" action="adminInsertReg.jsp" method="POST">
<table border="0" cellpadding="0" cellspacing="0" width="60%">

<tbody>
        <tr valign="top">
          <td width="99%"><div class="jive-thread-list">
              <div class="jive-table">
                <table summary="List of threads" cellpadding="0"
											cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th colspan="2" class="jive-first">管理员注册</th>
                    </tr>
                  </thead>
                  <tbody>
                   
                                 
                    <tr class="jive-odd">
                      <td width="56%" class="jive-thread-name">账&nbsp;&nbsp; &nbsp;&nbsp;号 &nbsp;：
                        <input name="user_name" type="text" class="form" id="user_name"
															size="16" maxlength="10" onblur="checkAcnt()"/>
                       <span class="STYLE111">*</span>
                        <span id="acnt" class="STYLE111"></span><font color=red><b>
                      
						<a href="#" onClick="openWin2(reg.user_name.value)">检查是否已被注册</a>
						
                        </b></font></td>
                      <td width="44%" class="jive-thread-name">十位以内，规则：只能输入字母、数字、下划线</td>
                    </tr>
                    <tr class="jive-odd">
                      <td class="jive-thread-name">密&nbsp;&nbsp;&nbsp; &nbsp;码&nbsp;&nbsp;&nbsp;：
                        <input name="user_password" type="password" class="form" id="pwd"
															size="16" maxlength="16" onblur="checkPwd()"/>
                        <span class="STYLE111">*</span>
                        <span id="pwdv" class="STYLE111"></span><font color=red><b>
                       
                        </b></font></td>
                      <td class="jive-thread-name">六位以上，十六位以内密码，规则同账号</td>
                    </tr>
                    <tr class="jive-odd">
                      <td class="jive-thread-name">确认密码：
                        <input name="user_password_again" type="password" class="form" id="user_password_again"
															size="16" maxlength="16" onblur="checkCpwd()"/>								
                       <span class="STYLE111">*</span><span id="cpwd" class="STYLE111"></span></td>
                      <td class="jive-thread-name">确认密码</td>
                    </tr>
                   
                    <tr class="jive-odd">
                      <td class="jive-thread-name">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：
                        <input name="email" type="text" class="form" size="25"
															maxlength="25" />
                        <span class="STYLE111">*</span><span id="emailv" class="STYLE111"></span><font color=red><b>
                       
                        </b></font></td>
                      <td class="jive-thread-name">便于找回密码</td>
                    </tr>
                    <tr class="jive-odd">
                      <td class="jive-thread-name">找回密码问题：
                        <input name="question" type="text" class="form" size="20"
															maxlength="20" />
                        <span class="STYLE111">*</span><span id="questionv" class="STYLE111"></span><font color=red><b>
                      
                        </b></font></td>
                      <td class="jive-thread-name">请准确记住此项内容</td>
                    </tr>
                    <tr class="jive-odd">
                      <td class="jive-thread-name">答&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;案&nbsp;&nbsp;&nbsp;：
                        <input name="answer" type="text" class="form" size="16"
															maxlength="16"/>
                        <span class="STYLE111">*</span><span id="answerv" class="STYLE111"></span><font color=red><b>
                     
                        </b></font></td>
                      <td class="jive-thread-name">用于找回密码</td>
                    </tr>
                   
                    
                    <tr class="jive-odd">
                      <td class="jive-thread-name">性&nbsp;&nbsp; &nbsp;别  &nbsp;&nbsp;：
                        <input name="gender" type="radio" value="男" checked>
                        男
                        <input type="radio" name="gender" value="女">
                      女</td>
                      <td class="jive-thread-name">请选择您的性别</td>
                    </tr>
                 
                   
                    <tr class="jive-odd">
                      <td colspan="2" class="jive-thread-name"><div align="center">
                          <input name="sub" type="submit" class="form" id="sub"
																 value="注册" />
                          <input name="button" type="reset" class="form"
																id="button"  value="重新输入" />
                        </div></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="jive-legend"></div></td>
        </tr>
      </tbody>

</table>
</form>
</div>

</body>
</html>