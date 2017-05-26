<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/21
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>公司维护</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
</head>
<body>
<div class="container">
    <div class="page-header text-center"><h1>公司维护</h1></div>
    <form class="form-horizontal" role="form" action="itemsModify.do" method="post" enctype=”multipart/form-data”>
        <div class="form-group">
            <label for="companyName" class="col-sm-2 control-label">公司名字</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="companyName" id="companyName" placeholder="请输入公司名字" value="${companyInfo.companyName }" readonly>
            </div>
        </div>
        <div class="form-group">
            <label for="information" class="col-sm-2 control-label">企业介绍</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="information" id="information" placeholder="请输入商品价格" value="${companyInfo.information }" readonly>
            </div>
        </div>
        <div class="form-group">
            <label for="contacCo" class="col-sm-2 control-label">联系人</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="contacCo" id="contacCo" placeholder="请输入商品名称" value="${companyInfo.contacCo }" readonly>
            </div>
        </div>
        <div class="form-group">
            <label for="telCo" class="col-sm-2 control-label">联系电话</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="telCo"  id="telCo" placeholder="请输入商品代码" value="${companyInfo.telCo }" readonly>
            </div>
        </div>
        <div class="form-group">
            <label for="phone" class="col-sm-2 control-label">手机号码</label>
            <div class="col-sm-10"><input type="text" class="form-control" name="phone" id="phone" placeholder="请输入商品介绍" value="${companyInfo.phone }" readonly>
            </div>
        </div>
        <div class="form-group">
            <label for="fb" class="col-sm-2 control-label">Facebook</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="fb" id="fb" placeholder="请输入商品材质" value="${companyInfo.fb }" readonly>
            </div>
        </div>
        <div class="form-group">
            <label for="tw" class="col-sm-2 control-label">Twitter</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="tw" id="tw" placeholder="请输入商品价格" value="${companyInfo.tw }" readonly>
            </div>
        </div>

        <div class="form-group">
            <label for="addrCo" class="col-sm-2 control-label">联系地址</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="addrCo" id="addrCo" placeholder="请输入商品价格" value="${companyInfo.addrCo }" readonly>
            </div>
        </div>
        <div class="form-group">
            <label for="eMail" class="col-sm-2 control-label">企业邮箱</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="eMail" id="eMail" placeholder="请输入商品价格" value="${companyInfo.eMail }" readonly>
            </div>
        </div>
    </form>
</div>

</body>
</html>


