<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/22
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>上传图片</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
</head>
<body>
<div class="container">
    <div class="page-header text-center"><h1>商品图片维护</h1></div>
    <div class="form-horizontal" id="showItem">
        <div class="form-group">
            <label for="itemName" class="col-sm-2 control-label">商品编码</label>
            <div class="col-sm-10">
                <input class="form-control" id="itemName" name="itemName" type="text" value="${items.itemCode }" readonly>
            </div>
        </div>
        <div class="form-group">
            <label for="itemCode" class="col-sm-2 control-label">商品名称</label>
            <div class="col-sm-10">
                <input class="form-control" id="itemCode" name="itemCode" type="text" value="${items.itemName }" readonly>
            </div>
        </div>
    </div>
    <form class="form-horizontal" role="form" action="doPic.do" method="post"  enctype="multipart/form-data">
        <input type="hidden" name="productId" value="${items.id}" />
        <div class="form-group">
            <label for="exampleInputFile" class="col-sm-2 control-label">文件上传</label>
            <div class="col-sm-10">
                <input type="file" id="exampleInputFile" name="file">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-default" id="btn_items">提交</input>
            </div>
        </div>
     </form>
</div>
</body>
</html>
