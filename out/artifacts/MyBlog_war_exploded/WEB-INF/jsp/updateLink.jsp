<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改友情链接</title>
    <%--   bootstrap美化界面 --%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改友情链接</small>
                </h1>
            </div>
        </div>

    </div>


    <form action="${pageContext.request.contextPath}/link/updateLink" method="post">
        <input type="hidden" name="id" value="${Qlink.id}">
        <div class="form-group">
            <label>网站名称</label>
            <input type="text" name="linkName" class="form-control" value="${Qlink.linkName}" required>
        </div>
        <div class="form-group">
            <label>网站链接</label>
            <input type="text" name="linkUrl" class="form-control" value="${Qlink.linkUrl}" required>
        </div>
        <div class="form-group">
            <label>序号</label>
            <input type="text" name="orderNo" class="form-control" value="${Qlink.orderNo}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn-primary" value="保存修改">
        </div>
    </form>
</div>
</body>
</html>