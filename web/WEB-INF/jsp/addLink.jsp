<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增友情链接</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增友情链接</small>
                </h1>
            </div>
        </div>

    </div>
    <form action="${pageContext.request.contextPath}/link/addLink" method="post">
        <div class="form-group">
            <label>网站名称</label>
            <input type="text" name="linkName" class="form-control" required>
        </div>
        <div class="form-group">
            <label>网站链接</label>
            <input type="text" name="linkUrl" class="form-control" required>
        </div>
        <div class="form-group">
            <label>序号</label>
            <input type="text" name="orderNo" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn-primary" value="添加">
        </div>
    </form>
</div>

</body>
</html>
