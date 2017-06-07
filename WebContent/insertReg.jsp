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
<form name="reg" action="checkReg.jsp" method="POST">
<table border="0" cellpadding="0" cellspacing="0" width="60%">

<tbody>
        <tr valign="top">
          <td width="99%"><div class="jive-thread-list">
              <div class="jive-table">
                <table summary="List of threads" cellpadding="0"
											cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th colspan="2" class="jive-first">用户注册</th>
                    </tr>
                  </thead>
                  <tbody>
                   
                                 
                    <tr class="jive-odd">
                      <td width="56%" class="jive-thread-name">账&nbsp;&nbsp; &nbsp;&nbsp;号 &nbsp;：
                        <input name="user_name" type="text" class="form" id="user_name"
															size="16" maxlength="10" onblur="checkAcnt()"/>
                       <span class="STYLE111">*</span>
                        <span id="acnt" class="STYLE111"></span><font color=red><b>
                      
						<a href="#" onClick="openWin(reg.user_name.value)">检查是否已被注册</a>
						
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
															maxlength="25"  onblur="checkEmail()"/>
                        <span class="STYLE111">*</span><span id="emailv" class="STYLE111"></span><font color=red><b>
                       
                        </b></font></td>
                      <td class="jive-thread-name">便于找回密码</td>
                    </tr>
                    <tr class="jive-odd">
                      <td class="jive-thread-name">找回密码问题：
                        <input name="question" type="text" class="form" size="20"
															maxlength="20" onblur="checkQuestion()"/>
                        <span class="STYLE111">*</span><span id="questionv" class="STYLE111"></span><font color=red><b>
                      
                        </b></font></td>
                      <td class="jive-thread-name">请准确记住此项内容</td>
                    </tr>
                    <tr class="jive-odd">
                      <td class="jive-thread-name">答&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;案&nbsp;&nbsp;&nbsp;：
                        <input name="answer" type="text" class="form" size="16"
															maxlength="16" onblur="checkAnswer()"/>
                        <span class="STYLE111">*</span><span id="answerv" class="STYLE111"></span><font color=red><b>
                     
                        </b></font></td>
                      <td class="jive-thread-name">用于找回密码</td>
                    </tr>
                    <tr>
                      <td colspan="2" class="jive-odd"><font color="black">以上为必须填写的项目，以下为选填项，为了方便与您联系，请尽量填写完整。</font></td>
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
                      <td class="jive-thread-name">出生年月：
                        <select name="year" size="1" class="form">
                          <option value="" selected></option>
                          
                           <option value="1960">1960</option>
                          <option value="1961">1961</option>
                          <option value="1962">1962</option>
                          <option value="1963">1963</option>
                          <option value="1964">1964</option>
                          <option value="1965">1965</option>
                          <option value="1966">1966</option>
                          <option value="1967">1967</option>
                          <option value="1968">1968</option>
                          <option value="1969">1969</option>
                          <option value="1970">1970</option>
                          <option value="1971">1971</option>
                          <option value="1972">1972</option>
                          <option value="1973">1973</option>

                          <option value="1974">1974</option>
                          <option value="1975">1975</option>
                          <option value="1976">1976</option>
                          <option value="1977">1977</option>
                          <option value="1978">1978</option>
                          <option value="1979">1979</option>
                          <option value="1980">1980</option>
                          <option value="1981">1981</option>
                          <option value="1982">1982</option>
                          <option value="1983">1983</option>
                          <option value="1984">1984</option>
                          <option value="1985">1985</option>
                          <option value="1986">1986</option>
                          <option value="1987">1987</option>
                          <option value="1988">1988</option>
                          <option value="1989">1989</option>
                          <option value="1990">1990</option>
                          
                           <option value="1991">1991</option>
                          <option value="1992">1992</option>
                          <option value="1993">1993</option>
                          <option value="1994">1994</option>
                          <option value="1995">1995</option>
                          <option value="1996">1996</option>
                          <option value="1997">1997</option>
                          <option value="1998">1998</option>
                          <option value="1999">1999</option>
                          <option value="2000">2000</option>
                          
                        </select>
                        年
                        <select name="month" class="form">
                          <option value="" selected></option>
                          <option value="01">1</option>
                          <option value="02">2</option>
                          <option value="03">3</option>
                          <option value="04">4</option>
                          <option value="05">5</option>
                          <option value="06">6</option>
                          <option value="07">7</option>
                          <option value="08">8</option>
                          <option value="09">9</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                        </select>
                        月</td>
                      <td class="jive-thread-name">请选择您的出生年月</td>
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