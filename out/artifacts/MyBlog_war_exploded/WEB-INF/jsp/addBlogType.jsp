<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增博客类型</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增博客类型</small>
                </h1>
            </div>
        </div>

    </div>
    <form action="${pageContext.request.contextPath}/blogType/addBlogType" method="post">
        <div class="form-group">
            <label>博客类型</label>
            <input type="text" name="typeName" class="form-control" required>
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
