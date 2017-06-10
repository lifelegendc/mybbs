<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>编程技术交流bbs---让编程更简单</title>

<link href="style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

</head>
<body>
  
<div class="main">

  <div class="header">

    <div class="header_resize">
    <div class="fbg">
      <%@ include file="Top.jsp"%>
</div>
      <div class="menu_nav">
        <ul>
          <li><a href="post.jsp">发表帖子</a></li>
          <li class="active"><a href="view.jsp">查看帖子</a></li>
          <li><a href="news.jsp">要闻速递</a></li>
          <li><a href="contests.jsp">最新赛事</a></li>
          
          <li><a href="loginOut.jsp">登出</a></li>
        </ul>
       <div class="search">
        <form id="form" name="form" method="post" action="">
          <span>
          <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search...">
          
          <input name="b" type="image" src="images/search.gif" class="button">
          </span>
        </form>
      </div>
      <!--/search -->
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">


          <p>导读：本文是从《How I Learned to Program Computers》这篇文章翻译而来。作者Feross Aboukhadijeh从11岁开始编程，文中分享了他的开发经历。 <strong>我在很小年纪的时候就开始学习编程，我学习编程的方法是创建大量的不同的网站。下面列出的是我创建的主要的网站，其中最早的一个是我11岁时开发的。我希望读者能从我这些复述中获得的信息是：如果你想学习编程，做大量的练习性的项目是非常必要的。</strong> 学习一种技术最好的方法就是练习，练习，练习。所有我知道的最优秀的程序员都深深的享受编程——编程是一件让他们干起来无由的高兴的事情。也因此他们大量的编程。经常，那是一种不健康的废寝忘食。学习如何编程——以及如何编好程——并不需要你具有超人的能力。你只需要去按照自己的意愿动手去做，做出点什么东西。</p>
          <p>做什么东西并不重要，重要的是你找到东西动手去做。我所认识的那些优秀的程序员，他们都有各自不同的最初学习编程的动机。有些人学习编程是为了开发动画游戏。有些人是为了解决他们在使用计算机时遇到的问题，或让工作更有效率。有些人是为了开发产品来满足人们的需求。有些人(真正的程序员)学习编程只是他们为了深入了解计算机工作原理的步骤之一；他们希望能搞清楚这种机器。有些程序员编程只是因为他们享受解决难题的挑战。</p>
          <p><strong>让所有这些“优秀程序员”统一起来的唯一因素就是，他们全因为生活中的某些原因而为编程着迷，继而花大量的时间编程，做大量的，大量的用于练习的项目。</strong></p>
          <p>在我大概十一二岁的时候，我感到需要给自己做一个网站。我已经记不清为什么需要一个网站了，只记得那样就开始做了。于是我就在网上搜索关于网页、Web浏览器、HTML如何工作的信息。很多的信息我发现都已经过时了，有些明显是错误的或给了错误的向导（例如为IE浏览器和Netscape浏览器分别做网站），但过程是非常的有趣的，我学到了很多新东西。</p>
          <p>下面，开始你的第一步尝试吧！</p>
          <ul class="sb_menu">
            <li><a href="http://www.w3school.com.cn/"><strong>前端设计</strong></a></li>
            <li><a href="https://www.bccn.net/"><strong>编程中国</strong></a></li>
            <li><a href="http://www.jb51.net/"><strong>脚本之家</strong></a></li>
        
        
          </ul>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2><cufon class="cufon cufon-canvas" alt="Sidebar " style="width: 90px; height: 24px;"><cufontext>Sidebar</cufontext></cufon><cufon class="cufon cufon-canvas" alt="Menu" style="width: 61px; height: 24px;"><cufontext>Menu</cufontext></cufon></h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="viewNotice.jsp">查看公告</a></li>
            <li><a href="http://www.imooc.com/">课程链接</a></li>
            <li><a href="http://bbs.csdn.net">CSDN链接</a></li>
            <li><a href="http://www.runoob.com/">菜鸟教程</a></li>
            <li><a href="https://www.coursera.org/">Coursera</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2><span><cufon class="cufon cufon-canvas" alt="Sponsors" style="width: 102px; height: 24px;"><canvas width="148" height="32" style="width: 148px; height: 32px; top: -5px; left: -16px;"></canvas><cufontext>Sponsors</cufontext></cufon></span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="aboutUs.jsp">客服中心</a><br>
              Over 6,000+ Premium online assistants</li>
            <li><a href="aboutUs.jsp">技术支持</a><br>
              Contact us if you have any question</li>
          
          </ul>
        </div>
        <div class="gadget">
          <h2><cufon class="cufon cufon-canvas" alt="Wise " style="width: 60px; height: 24px;"><cufontext>Wise </cufontext></cufon><cufon class="cufon cufon-canvas" alt="Words" style="width: 69px; height: 24px;"><canvas width="116" height="32" style="width: 116px; height: 32px; top: -5px; left: -16px;"></canvas><cufontext>Words</cufontext></cufon></h2>
          <div class="clr"></div>
          <p>   <img src="images/test_1.gif" alt="image" width="20" height="18"> <em>We can let circumstances rule us, or we can take charge and rule our lives from within </em>.<img src="images/test_2.gif" alt="image" width="20" height="18"></p>
          <p style="float:right;"><strong>Earl Nightingale</strong></p>
          </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
<h2>图片库</h2>

        <a href="#"><img src="images/gallery_1.jpg" width="58" height="58" alt="pix"></a> <a href="#"><img src="images/gallery_2.jpg" width="58" height="58" alt="pix"></a> <a href="#"><img src="images/gallery_3.jpg" width="58" height="58" alt="pix"></a> <a href="#"><img src="images/gallery_4.jpg" width="58" height="58" alt="pix"></a> <a href="#"><img src="images/gallery_5.jpg" width="58" height="58" alt="pix"></a> <a href="#"><img src="images/gallery_6.jpg" width="58" height="58" alt="pix"></a> </div>
      <div class="col c2">
<h2>说明</h2>        <p>非常感谢您的访问，期请期待更多模块!<br>
感谢老师为我提供的指导和支持！也感谢网络源码的开放让我有更多学习借鉴的机会。接下来我会更加努力，做出更好看的网页。
          </p>
      </div>
      <div class="col c3">
<h2> 联系</h2>        <p>请在工作日8:00AM-18:00PM联系我们<a href="#">cuicanuibe@hotmail.com</a><br>
          <a href="#">+(86) 17888805059</a></p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="footer">
      <p class="lr">© Copyright <a href="#">Cuican</a>.</p>
      <p class="lf"><a href="aboutUs.jsp" title="联系我们" target="_blank">联系我们</a></p>
      <div class="clr"></div>
    </div>
  </div>
</div>


</body>
</html>