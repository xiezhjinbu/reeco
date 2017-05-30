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
    <title>产品维护</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#province").change(function(){
                    $("#province option").each(function(i,o){
                        if($(this).attr("selected"))
                        {
                            $(".city").hide();
                            $(".city").eq(i).show();
                        }
                    });
                });
                $("#province").change();
            });
    </script>
</head>
<body>
<div class="container">
    <div class="page-header text-center"><h1>产品维护</h1></div>
    <form class="form-horizontal" role="form" action="itemsAdd.do" method="post">
        <div class="form-group">
            <label for="itemName" class="col-sm-2 control-label">商品名称</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="itemName" id="itemName" placeholder="请输入商品名称">
            </div>
        </div>
        <div class="form-group">
            <label for="itemCode" class="col-sm-2 control-label">商品代码</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="itemCode"  id="itemCode" placeholder="请输入商品代码">
            </div>
        </div>
        <div class="form-group">
            <label for="gModel" class="col-sm-2 control-label">商品介绍</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="gModel" id="gModel" placeholder="请输入商品介绍">
            </div>
        </div>
        <div class="form-group">
            <label for="material" class="col-sm-2 control-label">商品材质</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="material" id="material" placeholder="请输入商品材质">
            </div>
        </div>
        <div class="form-group">
            <label for="price" class="col-sm-2 control-label">商品价格</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="price" id="price" placeholder="请输入商品价格">
            </div>
        </div>
        <div class="form-group">
            <label for="classType" class="col-sm-2 control-label">商品类型</label>
            <div class="col-sm-10">
                <select class="form-control" name="classType" id="classType">
                    <c:forEach items="${listTypes }" var="e">
                        <option >${e.classType}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">提交</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
