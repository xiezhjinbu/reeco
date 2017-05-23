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
<form action="upload.do" method="post" enctype="multipart/form-data">
    <input type="text" name="password">
    <input type="text" name="username">
    <input type="file" name="file" />
</form>
<button id="button">提交</button>
<script>
        $("#button").click( function() {
            var hideForm = $('form');
            var options = {
                dataType : "json", /*data: {'file': $("input[type=file]").val(), "username": '123', password: "123"},*/
                beforeSubmit : function() { alert("正在上传"); },
                success : function(result) { alert('成功上传！'); },
                error : function(result) { alert('失败上传！');}
            };
            hideForm.ajaxSubmit(options);
        });
</script>
</body>
</html>
