<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/21
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>产品维护列表</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="page-header text-center"><h1>产品维护列表</h1></div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>序号</th>
            <th>商品编码</th>
            <th>商品名称</th>
            <th>商品类型</th>
            <th>商品材质</th>
            <th>
                <a class="glyphicon glyphicon-plus" href="itemsIn.do"></a>
            </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${lists }" var="e" varStatus="s" begin="1" step="1">
            <tr>
                <td><h5>${s.index }</h5></td>
                <td><h5>${e.itemCode }</h5></td>
                <td><h5>${e.itemName }</h5></td>
                <td><h5>${e.className }</h5></td>
                <td><h5>${e.material }</h5></td>
                <td>
                    <a class="glyphicon glyphicon-pencil" href="itemsEdit.do?id=${e.id }"></a>
                    <a class="glyphicon glyphicon-remove" href="itemsDelete.do?id=${e.id }"></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   <!-- <ul class="pager">
        <li><a href="#">&laquo;</a></li>
        <li class="active"><a href="#">1</a></li>
        <li class="disabled"><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">&raquo;</a></li>
    </ul>-->
</div>

</body>
</html>
