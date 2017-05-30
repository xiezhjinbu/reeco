<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/19
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="js/nav.js"></script>

</head>

<body>
<!--<div class="t">
  <div class="t_n">
    <div class="t_nl">
    	<p class="tel">+86-0952-88888888</p>
        <p class="mail">jiuyu@yeah.net</p>
    </div>
    <div class="r_nr"><a href="#">Inquiry List</a> |   <a href="#">Download E-toc</a></div>
  </div>
</div>-->
<div class="top">
    <div class="logo"><img src="images/logo.jpg" /></div>
    <div class="search">
        <link href="css/index.css" rel="stylesheet" type="text/css" />
        <span class="contactUs glyphicon glyphicon-phone-alt"> ${companyInfo.telCo }</span>
        <span class="contactUs glyphicon glyphicon-earphone"> ${companyInfo.phone }</span>
        <span class="contactUs glyphicon glyphicon-envelope"> ${companyInfo.eMail }</span>

        <!--
            作者：xiezhjinbu@hotmail.com
            时间：2017-05-09
            描述：
        <div class="logo-right"><a href="#"><img src="images/cup1.png" /></a></div>
        <div class="logo-right"><a href="#"><img src="images/cup2.png" /></a></div>
        <div class="logo-right"><a href="#"><img src="images/cup3.png" /></a></div>-->
    </div>

</div>
<div class="nav">
    <div class="menu1">
        <ul id="navigation1">
            <li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)"> <a  href="index.do" class="nav_h1">Home</a></li>
            <li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)"> <a href="customer.do" class="nav_h1">Products</a>
                <ul>
                    <c:forEach items="${lists }" var="e">
                        <li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)" class="nav_w1"> <a href="someCustomer.do?classType=${e.classType}" >${e.className }</a></li>
                    </c:forEach>
                </ul>
            </li>
            <li onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)"> <a href="about.do" class="nav_h1">About Us</a></li>
        </ul>
    </div>
</div>
<!--<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>-->

<div class="slide banner" data-slide='{"action":"click","fn":"banner_ext","time":"8000"}'>
    <!--<div class="ban_c album"><a href="#"><img src="images/20140225171729652.jpg" /></a></div>
    <div class="ban_c album"><a href="#"><img src="images/20140113173751727.jpg" /></a></div>
    <div class="ban_c album"><a href="#"><img src="images/2013123109501990.jpg" /></a></div>
  <div class="ban_c album"><a href="#"><img src="images/2013123109501990.jpg" /></a></div>-->
</div>
<div class="wrap bann_ext">
    <ul class="l frontCover"></ul>
</div>
<script src="js/lanrenzhijia.js"></script>
<!-- 代码部分end -->
</div>
<div class="fnav">
    <div class="fnav_n">
        <div class="fnav_nll">
            <p>NAVIGATION</p>
            <a href="about.do">About us</a>
            <a href="customer.do">Products</a>
            <a href="itemlist.do">后台管理</a>
            <c:forEach items="${lists }" var="e">
                <a href="someCustomer.jsp?classType=${e.classType }">${e.className }</a>
            </c:forEach>

        </div>
        <div class="fnav_nll">
            <p>CONTACT US</p>
            <span class="ftel">${companyInfo.telCo }</span>
            <span class="ffax">${companyInfo.phone }</span>
            <span class="fmail">${companyInfo.eMail }</span>
            <!--<div class="fx"><img src="images/f1.jpg" /><img src="images/f2.jpg" /><img src="images/f3.jpg" /><img src="images/f4.jpg" /></div>-->
        </div>
    </div>
</div>
<div class="f">
    <div class="foot">
        <div class="fl">Copyright &copy; 2017.Company name All rights reserved.</div>
        <div class="fr">Powered by Reanod | Sitemap</div>
    </div>
</div>
</body>
</html>
