<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>

    </div>
    <form action="${pageContext.request.contextPath}/blog/addBlog" method="post">
        <div class="form-group">
            <label>博客标题</label>
            <input type="text" name="title" class="form-control" required>
        </div>
        <div class="form-group">
            <label>博客摘要</label>
            <input type="text" name="summary" class="form-control" required>
        </div>
        <div class="form-group">
            <label>主要内容</label>
            <input type="text" name="content" class="form-control" required>
        </div>
        <div class="form-group">
            <label>博客类型</label>
            <input type="text" name="typeId" class="form-control" required>
        </div>
        <div class="form-group">
            <label>关键字</label>
            <input type="text" name="keyWord" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn-primary" value="添加">
        </div>
    </form>
</div>

</body>
</html>
