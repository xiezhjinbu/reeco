<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/20
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>产品展示</title>
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
<div class="slide banner" data-slide='{"action":"click","fn":"banner_ext","time":"8000"}'>
    <!--<div class="ban_c album"><a href="#"><img src="images/20140225171729652.jpg" /></a></div>
    <div class="ban_c album"><a href="#"><img src="images/20140113173751727.jpg" /></a></div>
    <div class="ban_c album"><a href="#"><img src="images/2013123109501990.jpg" /></a></div>
  <div class="ban_c album"><a href="#"><img src="images/2013123109501990.jpg" /></a></div>-->
</div>

<div class="wz"><a href="#">Home</a> > About Us > Company Profile</div>
<!--产品介绍部分-->
    <div class="container">
        <div class="page-header">
            <h2>
                ${itemOne.itemName }
            </h2>
        </div>
        <div id="slidershow" class="carousel">
            <!-- 设置图片轮播的顺序
            <ol class="carousel-indicators">
                <!-- <li class="active" data-target="#slidershow" data-slide-to="0"></li>
                <li data-target="#slidershow" data-slide-to="1"></li>
                <li data-target="#slidershow" data-slide-to="2"></li>-->

                <c:forEach items="${picdataList }" var="e" begin="0" step="1" varStatus="s">
                    <c:if test="${s.index==0}">
                        <li class="active" data-target="#slidershow" data-slide-to="0"></li>
                    </c:if>
                    <li data-target="#slidershow" data-slide-to="${s.index}"></li>
                </c:forEach>
            </ol>
            <!-- 设置轮播图片 -->
            <div class="carousel-inner">
                <c:forEach items="${picdataList }" var="e" begin="0" step="1" varStatus="s">
                    <c:if test="${s.index==0}">
                        <div class="item active">
                            <img src="${e.picPath}/${e.picName}" alt="">
                            <!-- 图片对应标题和描述内容 -->
                        </div>
                    </c:if>
                    <div class="item"><img src="${e.picPath}/${e.picName}" alt=""><!-- 图片对应标题和描述内容 --></div>
                </c:forEach>
            </div>
            <!-- 设置轮播图片控制器 -->
            <div class="left carousel-control">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </div>
            <div class="right carousel-control">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </div>
        </div>
        <script>
            $(function(){
                $("#slidershow").carousel({
                    interval:2000
                });
                $("#slidershow div.left").click(function(){
                    $(".carousel").carousel("prev");
                });
                $("#slidershow div.right").click(function(){
                    $(".carousel").carousel("next");
                });
            });
        </script>
        <!--
            作者：xiezhjinbu@hotmail.com
            时间：2017-05-21
            描述：内容介绍
        -->
        <table class="table">
            <tbody>
            <tr>
                <td width="33%" align="middle"><h3>商品名称</h3></td>
                <td width="66%" align="middle"><h3>${itemOne.itemName }</h3></td>
            </tr>
            <tr>
                <td width="33%" align="middle"><h3>商品分类</h3></td>
                <td width="66%" align="middle"><h3>${itemOne.className }</h3></td>
            </tr>
            <tr>
                <td width="33%" align="middle"><h3>商品介绍</h3></td>
                <td width="66%" align="middle"><h3>${itemOne.gModel }</h3></td>
            </tr>
            <tr>
                <td width="33%" align="middle"><h3>商品材质</h3></td>
                <td width="66%" align="middle"><h3>${itemOne.material }</h3></td>
            </tr>
            <tr>
                <td width="33%" align="middle"><h3>商品单价</h3></td>
                <td width="66%" align="middle"><h3>${itemOne.price }</h3></td>
            </tr>
            </tbody>
        </table>
    </div>

<div class="fnav">
    <div class="fnav_n">
        <div class="fnav_nll">
            <p>QUICK LINKS</p>
            <a href="#">Storage Tank</a>
            <a href="#">Heat Exchanger</a>
            <a href="#">Tower</a>
            <a href="#">Spherical Tank</a>
            <a href="#">Skidded Equipment</a>
            <a href="#">Accessories</a>
        </div>
        <div class="fnav_nll">
            <p>NAVIGATION</p>
            <a href="about.do">About us</a>
            <a href="customer.do">Products</a>
            <c:forEach items="${lists }" var="e">
                <a href="someCustomer.do?classType=${e.classType }">${e.className }</a>
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
        <div class="fl">Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></div>
        <div class="fr">Powered by Reanod | Sitemap</div>
    </div>
</div>
</body>
</html>
