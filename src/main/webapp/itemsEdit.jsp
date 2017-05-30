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
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/bootstrap-modal.js"></script>
</head>
<body>
<div class="container">
    <div class="page-header text-center"><h1>产品维护</h1></div>
    <form class="form-horizontal" role="form" action="itemsModify.do" method="post" enctype=”multipart/form-data”>
        <div class="form-group">
            <label for="itemName" class="col-sm-2 control-label">商品名称</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="itemName" id="itemName" placeholder="请输入商品名称" value="${items.itemName }">
            </div>
        </div>
        <div class="form-group">
            <label for="itemCode" class="col-sm-2 control-label">商品代码</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="itemCode"  id="itemCode" placeholder="请输入商品代码" value="${items.itemCode }">
            </div>
        </div>
        <div class="form-group">
            <label for="gModel" class="col-sm-2 control-label">商品介绍</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="gModel" id="gModel" placeholder="请输入商品介绍" value="${items.gModel }">
            </div>
        </div>
        <div class="form-group">
            <label for="material" class="col-sm-2 control-label">商品材质</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="material" id="material" placeholder="请输入商品材质" value="${items.material }">
            </div>
        </div>
        <div class="form-group">
            <label for="price" class="col-sm-2 control-label">商品价格</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="price" id="price" placeholder="请输入商品价格" value="${items.price }">
            </div>
        </div>
        <div class="form-group">
            <label for="classType" class="col-sm-2 control-label">商品类型</label>
            <div class="col-sm-10">
                <select class="form-control" name="classType" id="classType">
                  <c:forEach items="${listTypes }" var="e">
                    <c:choose>
                        <c:when test="${e.classType==items.classType}">
                            <option  selected="selected">${e.classType}</option>
                        </c:when>
                        <c:otherwise>
                            <option >${e.classType}</option>
                        </c:otherwise>
                    </c:choose>
                  </c:forEach>
                </select>
            </div>
        </div>
        <input type="hidden" class="form-control" name="id" id="id" value="${items.id }">
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default" id="btn_items">提交</button>

            </div>
        </div>
    </form>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>序号</th>
            <th>图片名称</th>
            <th>位置</th>
            <th>
                <a class="btn btn-default"href="addPic.do?id=${items.id }">添加图片</a>
            </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pics }" var="e" varStatus="s" begin="0" step="1">
            <tr>
                <td><h5>${s.index+1 }</h5></td>
                <td>
                    <h5>${e.picName }</h5>
                </td>
                <td><h5>${e.picPath }</h5></td>
                <td>
                    <a class="glyphicon glyphicon-remove" href="picDelete.do?id=${e.id }"></a>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
                            data-whatever="${e.picPath }/${e.picName }">预览
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <!--模态框-->
    <div class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">图片预览</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group" align="center">
                        <img />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#exampleModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // 触发事件的按钮
        var recipient = button.data('whatever') // 解析出data-whatever内容
        var modal = $(this)
        modal.find('img').attr("src",recipient)
    })
</script>
</body>
</html>
