<!-- 
/*数据库建库代码*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
CREATE DATABASE `bbs`;
USE `bbs`;
/* Create table in target */
CREATE TABLE `users`(
	`username` VARCHAR(12) COLLATE gb18030_chinese_ci NOT NULL  , 
	`password` VARCHAR(12) COLLATE gb18030_chinese_ci NOT NULL  , 
	`gender` CHAR(4) COLLATE gb18030_chinese_ci NULL  , 
	`email` VARCHAR(30) COLLATE gb18030_chinese_ci NOT NULL  , 
	`findQ` VARCHAR(30) COLLATE gb18030_chinese_ci NOT NULL  , 
	`findA` VARCHAR(30) COLLATE gb18030_chinese_ci NOT NULL  , 
	`birthdate` CHAR(10) COLLATE gb18030_chinese_ci NULL  , 
	PRIMARY KEY (`username`) 
) ENGINE=INNODB DEFAULT CHARSET='gb18030' COLLATE='gb18030_chinese_ci';


/* Create table in target */
CREATE TABLE `admins`(
	`adminname` VARCHAR(12) COLLATE gb18030_chinese_ci NOT NULL  , 
	`password` VARCHAR(12) COLLATE gb18030_chinese_ci NOT NULL  , 
	`findQ` VARCHAR(30) COLLATE gb18030_chinese_ci NULL  , 
	`findA` VARCHAR(30) COLLATE gb18030_chinese_ci NULL  , 
	`gender` CHAR(2) COLLATE gb18030_chinese_ci NULL  , 
	`email` VARCHAR(30) COLLATE gb18030_chinese_ci NULL  , 
	PRIMARY KEY (`adminname`) 
) ENGINE=INNODB DEFAULT CHARSET='gb18030' COLLATE='gb18030_chinese_ci';

/* Create table in target */
CREATE TABLE `topic`(
	`title` VARCHAR(40) COLLATE gb18030_chinese_ci NOT NULL  , 
	`content` VARCHAR(400) COLLATE gb18030_chinese_ci NOT NULL  , 
	`tpcid` INT(11) NOT NULL  AUTO_INCREMENT , 
	`date` DATETIME NOT NULL  , 
	`viewtimes` INT(11) NOT NULL  , 
	`dsc` INT(11) NOT NULL  , 
	`user` VARCHAR(12) COLLATE gb18030_chinese_ci NOT NULL  , 
	PRIMARY KEY (`tpcid`) , 
	KEY `userwho`(`user`) , 
	CONSTRAINT `userwho` 
	FOREIGN KEY (`user`) REFERENCES `users` (`username`) 
) ENGINE=INNODB DEFAULT CHARSET='gb18030' COLLATE='gb18030_chinese_ci';

/* Create table in target */
CREATE TABLE `dsc`(
	`dscid` INT(11) NOT NULL  AUTO_INCREMENT , 
	`tpcid` INT(11) NOT NULL  , 
	`content` VARCHAR(400) COLLATE gb18030_chinese_ci NOT NULL  , 
	`user` VARCHAR(12) COLLATE gb18030_chinese_ci NOT NULL  , 
	`date` DATETIME NOT NULL  , 
	PRIMARY KEY (`dscid`,`tpcid`) , 
	KEY `topic&dsc`(`tpcid`) , 
	KEY `dsc/username`(`user`) , 
	CONSTRAINT `dsc/username` 
	FOREIGN KEY (`user`) REFERENCES `users` (`username`) , 
	CONSTRAINT `topic&dsc` 
	FOREIGN KEY (`tpcid`) REFERENCES `topic` (`tpcid`) 
) ENGINE=INNODB DEFAULT CHARSET='gb18030' COLLATE='gb18030_chinese_ci';


/* Create table in target */
CREATE TABLE `notice`(
	`ntcid` INT(11) NOT NULL  AUTO_INCREMENT , 
	`adminname` VARCHAR(20) COLLATE gb18030_chinese_ci NOT NULL  , 
	`title` VARCHAR(40) COLLATE gb18030_chinese_ci NOT NULL  , 
	`content` VARCHAR(400) COLLATE gb18030_chinese_ci NOT NULL  , 
	`date` DATETIME NOT NULL  , 
	PRIMARY KEY (`ntcid`) , 
	KEY `adminid`(`adminname`) , 
	CONSTRAINT `notice_ibfk_1` 
	FOREIGN KEY (`adminname`) REFERENCES `admins` (`adminname`) 
) ENGINE=INNODB DEFAULT CHARSET='gb18030' COLLATE='gb18030_chinese_ci';

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
 -->


<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>登录</title>

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
 <table border="0" cellpadding="0" cellspacing="0" width="300">  <!-- 调整表格位置 -->
      <tbody>
        <tr valign="top">
          <td width="99%"><div class="jive-thread-list">
  <div class="jive-table">
                <table summary="List of threads" cellpadding="0" cellspacing="0" width="100%">    <!-- 调整表格颜色等格式 -->
                  <thead>
                    <tr>
                      <th width="83%" class="jive-first">用户登录</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                   <tr class="jive-odd">
                      <td class="jive-thread-name"><div align="center">账 号：
                          <input  type="text" class="form" name="user_name" id="user_name" size="25" maxlength="16" />
                      </div></td>
                    </tr>
                 
                    <tr class="jive-odd">
                      <td class="jive-thread-name"><div align="center">密 码：
                          <input type="password" class="form" name="user_password" id="user_password"  size="25" maxlength="16"/>
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
                        <input type="submit" value="登录">
                         <a href="findPswd.jsp"><input type="button" value="忘记密码"> </a>
                        <a href="adminLogin.jsp"><input type="button" value="管理员登录" ></a>
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