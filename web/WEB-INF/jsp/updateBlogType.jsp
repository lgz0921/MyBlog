<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改博客类型</title>
    <%--   bootstrap美化界面 --%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改博客类型</small>
                </h1>
            </div>
        </div>

    </div>


    <form action="${pageContext.request.contextPath}/blogType/updateBlogType" method="post">
        <input type="hidden" name="id" value="${QblogType.id}">
        <div class="form-group">
            <label>博客类型</label>
            <input type="text" name="typeName" class="form-control" value="${QblogType.typeName}" required>
        </div>
        <div class="form-group">
            <label>序号</label>
            <input type="text" name="orderNo" class="form-control" value="${QblogType.orderNo}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn-primary" value="保存修改">
        </div>
    </form>
</div>
</body>
</html>