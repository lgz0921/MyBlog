<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改博客</title>
    <%--   bootstrap美化界面 --%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改博客</small>
                </h1>
            </div>
        </div>

    </div>


    <form action="${pageContext.request.contextPath}/blog/updateBlog" method="post">
        <input type="hidden" name="id" value="${Qblog.id}">
        <div class="form-group">
            <label>博客标题</label>
            <input type="text" name="title" class="form-control" value="${Qblog.title}" required>
        </div>
        <div class="form-group">
            <label>博客摘要</label>
            <input type="text" name="summary" class="form-control" value="${Qblog.summary}" required>
        </div>
        <div class="form-group">
            <label>主要内容</label>
            <input type="text" name="content" class="form-control" value="${Qblog.content}" required>
        </div>
        <div class="form-group">
            <label>博客类型</label>
            <input type="text" name="typeId" class="form-control" value="${Qblog.typeId}" required>
        </div>
        <div class="form-group">
            <label>关键字</label>
            <input type="text" name="keyWord" class="form-control" value="${Qblog.keyWord}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn-primary" value="保存修改">
        </div>
    </form>
</div>
</body>
</html>