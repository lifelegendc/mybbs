<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>关于我们</title>
<script src = "script.js" language="javascript"></script>
<link href="styles.css" rel="stylesheet" type="text/css">
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
body{
	text-align:center;
	padding:0;
	margin:30px 0 0 0;
	background-image: url(img/work_1.jpg);
	background-color: #FFFFCC;
	margin-top: 0px;
	}
</style>

</head>
<body>
<br><br>
							<font color="black" style="font-family:幼圆" size="6"><b>感谢您的访问！</b></font>
							<br>
						
							<h2>写信给我们<a href="mailto:391988739@qq.com?subject=用户留言">email链接</a> - 技术支持 <a href="http://bbs.csdn.net" target="_blank">CSDN</a></h2>
						

<table cellSpacing=40 width=1200>
             <tr>
			 <td rowspan="5" height="497" align="right" valign="top"><p>
  
			<marquee  direction="down" width="150" height="500" scrollamount="10" >
			 <img src="img/1.jpg" width="165" height="103">
			 <p><img src="img/2.jpg" width="168" height="98"></p>
			 <p><img src="img/3.jpg" width="169" height="119"></p>
			 <p><img src="img/4.jpg" width="173" height="118">
			   
		    </marquee>
		    
		     </p></td>
		     
		      <td valign="top" align="middle" rowspan="900" width="800" height="0" >
<div id="5pic" align="center"  >


<body>
  <div class="container" align="middle">
    <div class="wrap" style="left: -600px;">
      <img src="./img/5.jpg" alt="">
      <img src="./img/1.jpg" alt="">
      <img src="./img/2.jpg" alt="">
      <img src="./img/3.jpg" alt="">
      <img src="./img/4.jpg" alt="">
      <img src="./img/5.jpg" alt="">
      <img src="./img/1.jpg" alt="">
    </div>
    <div class="buttons">
      <span class="on">1</span>
      <span>2</span>
      <span>3</span>
      <span>4</span>
      <span>5</span>
    </div>
    <a href="javascript:;" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" class="arrow arrow_left"><</a>
    <a href="javascript:;" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" class="arrow arrow_right">></a>
  </div>
  <script>
    var wrap = document.querySelector(".wrap");
    var next = document.querySelector(".arrow_right");
    var prev = document.querySelector(".arrow_left");
    next.onclick = function () {
      next_pic();
    }
    prev.onclick = function () {
      prev_pic();
    }
    function next_pic () {
      index++;
      if(index > 4){
        index = 0;
      }
      showCurrentDot();
      var newLeft;
      if(wrap.style.left === "-3600px"){
        newLeft = -1200;
      }else{
        newLeft = parseInt(wrap.style.left)-600;
      }
      wrap.style.left = newLeft + "px";
    }
    function prev_pic () {
      index--;
      if(index < 0){
        index = 4;
      }
      showCurrentDot();
      var newLeft;
      if(wrap.style.left === "0px"){
        newLeft = -2400;
      }else{
        newLeft = parseInt(wrap.style.left)+600;
      }
      wrap.style.left = newLeft + "px";
    }
    var timer = null;
    function autoPlay () {
      timer = setInterval(function () {
        next_pic();
      },2000);
    }
    autoPlay();
 
    var container = document.querySelector(".container");
    container.onmouseenter = function () {
      clearInterval(timer);
    }
    container.onmouseleave = function () {
      autoPlay();  
    }
 
    var index = 0;
    var dots = document.getElementsByTagName("span");
    function showCurrentDot () {
      for(var i = 0, len = dots.length; i < len; i++){
        dots[i].className = "";
      }
      dots[index].className = "on";
    }
 
    for (var i = 0, len = dots.length; i < len; i++){
      (function(i){
        dots[i].onclick = function () {
          var dis = index - i;
          if(index == 4 && parseInt(wrap.style.left)!==-3000){
            dis = dis - 5;   
          }
          //和使用prev和next相同，在最开始的照片5和最终的照片1在使用时会出现问题，导致符号和位数的出错，做相应地处理即可
          if(index == 0 && parseInt(wrap.style.left)!== -600){
            dis = 5 + dis;
          }
          wrap.style.left = (parseInt(wrap.style.left) + dis * 600)+"px";
          index = i;
          showCurrentDot();
        }
      })(i);      
    }
  </script>


</div>

</body>
</html>