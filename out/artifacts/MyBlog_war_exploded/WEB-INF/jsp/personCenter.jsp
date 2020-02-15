<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
    <script>
        function gai() {
            $("input").removeAttr("readonly");
        }
        function sub() {
            $("#form1").submit();
        }
    </script>
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>个人中心</small>
                </h1>
            </div>
        </div>

    </div>
    <form action="${pageContext.request.contextPath}/blogger/updateBlogger" method="post" id="form1">
        <input type="hidden" name="id" value="${Admin.id}">
        <div class="form-group">
            <label>账号</label>
            <input type="text" name="userName" class="form-control" value="${Admin.userName}" disabled="disabled" required>
        </div>
        <div class="form-group">
            <label>个人信息</label>
            <input type="text" name="profile" class="form-control" value="${Admin.profile}" readonly="readonly" required>
        </div>
        <div class="form-group">
            <label>昵称</label>
            <input type="text" name="nickName" class="form-control" value="${Admin.nickName}" readonly="readonly" required>
        </div>
        <div class="form-group">
            <label>个性签名</label>
            <input type="text" name="sign" class="form-control" value="${Admin.sign}" readonly="readonly" required>
        </div>
        <div>
            <a class="btn btn-primary" onclick="gai()">修改信息</a>
            <button class="btn btn-primary" onclick="sub()">保存</button>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/blogger/queryBlogger" >取消</a>
        </div>
    </form>
</div>

</body>
</html>
