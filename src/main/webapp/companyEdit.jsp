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
            <label for="companyName" class="col-sm-2 control-label">商品ID</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="companyName" id="companyName" placeholder="请输入商品名称" value="${items.id }">
            </div>
        </div>
        <div class="form-group">
            <label for="contacCo" class="col-sm-2 control-label">商品名称</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="contacCo" id="contacCo" placeholder="请输入商品名称" value="${items.itemName }">
            </div>
        </div>
        <div class="form-group">
            <label for="telCo" class="col-sm-2 control-label">商品代码</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="telCo"  id="telCo" placeholder="请输入商品代码" value="${items.itemCode }">
            </div>
        </div>
        <div class="form-group">
            <label for="phone" class="col-sm-2 control-label">商品介绍</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="phone" id="phone" placeholder="请输入商品介绍" value="${items.gModel }">
            </div>
        </div>
        <div class="form-group">
            <label for="fb" class="col-sm-2 control-label">商品材质</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="fb" id="fb" placeholder="请输入商品材质" value="${items.material }">
            </div>
        </div>
        <div class="form-group">
            <label for="tw" class="col-sm-2 control-label">商品价格</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="tw" id="tw" placeholder="请输入商品价格" value="${items.price }">
            </div>
        </div>
        <div class="form-group">
            <label for="information" class="col-sm-2 control-label">商品价格</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="information" id="information" placeholder="请输入商品价格" value="${items.price }">
            </div>
        </div>
        <div class="form-group">
            <label for="addrCo" class="col-sm-2 control-label">商品价格</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="addrCo" id="addrCo" placeholder="请输入商品价格" value="${items.price }">
            </div>
        </div>
        <div class="form-group">
            <label for="eMail" class="col-sm-2 control-label">商品价格</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="eMail" id="eMail" placeholder="请输入商品价格" value="${items.price }">
            </div>
        </div>
        <div class="form-group">
            <label for="inputfile" class="col-sm-2 control-label">图片上传</label>
            <div class="col-sm-10">
                <input type="file" name="file" id="inputfile">
            </div>
            <a class="glyphicon glyphicon-plus" id="addfile"></a>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button class="btn btn-default" id="btn_items">提交</button>
            </div>
        </div>
    </form>
    <script>
        $("#addfile").click(
            function(){
                var fileItem="<input type='file' name='inputfile' >";
                $("#inputfile").append(fileItem);
            }
        );

        $("#btn_items").click( function() {
            var hideForm = $('form');
            var options = {
                dataType : "json", /*data: {'file': $("input[type=file]").val(), "username": '123', password: "123"},*/
                success : function(result) {
                    window.location.href="itemlist.do";
                },
                error : function(result) {
                    alert('失败上传！');
                    self.location="itemlist.do";
                }
            };
            hideForm.ajaxSubmit(options);
        });
    </script>
</div>

</body>
</html>

