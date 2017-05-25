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
                <input type="text" class="form-control" name="companyName" id="companyName" placeholder="请输入公司名字" value="${companyInfo.companyName }">
            </div>
        </div>
        <div class="form-group">
            <label for="information" class="col-sm-2 control-label">企业介绍</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="information" id="information" placeholder="请输入商品价格" value="${companyInfo.information }">
            </div>
        </div>
        <div class="form-group">
            <label for="contacCo" class="col-sm-2 control-label">联系人</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="contacCo" id="contacCo" placeholder="请输入商品名称" value="${companyInfo.contacCo }">
            </div>
        </div>
        <div class="form-group">
            <label for="telCo" class="col-sm-2 control-label">联系电话</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="telCo"  id="telCo" placeholder="请输入商品代码" value="${companyInfo.telCo }">
            </div>
        </div>
        <div class="form-group">
            <label for="phone" class="col-sm-2 control-label">手机号码</label>
            <div class="col-sm-10"><input type="text" class="form-control" name="phone" id="phone" placeholder="请输入商品介绍" value="${companyInfo.phone }">
            </div>
        </div>
        <div class="form-group">
            <label for="fb" class="col-sm-2 control-label">Facebook</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="fb" id="fb" placeholder="请输入商品材质" value="${companyInfo.fb }">
            </div>
        </div>
        <div class="form-group">
            <label for="tw" class="col-sm-2 control-label">Twitter</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="tw" id="tw" placeholder="请输入商品价格" value="${companyInfo.tw }">
            </div>
        </div>

        <div class="form-group">
            <label for="addrCo" class="col-sm-2 control-label">联系地址</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="addrCo" id="addrCo" placeholder="请输入商品价格" value="${companyInfo.addrCo }">
            </div>
        </div>
        <div class="form-group">
            <label for="eMail" class="col-sm-2 control-label">企业邮箱</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="eMail" id="eMail" placeholder="请输入商品价格" value="${companyInfo.eMail }">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button TYPE="submit" class="btn btn-default" id="btn_items">提交</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>


