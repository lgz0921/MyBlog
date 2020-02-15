<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blog</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>Blog</small>
                </h1>
            </div>
        </div>

    </div>

    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/blog/toAddBlog">新增书籍</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/blog/allBlog">查询全部书籍</a>
    </div>
    <div class="col-md-8 column">
        <form class="form-inline" action="${pageContext.request.contextPath}/blog/queryBlog" method="post"
              style="float: right">
            <span style="color: red;font-weight: bold">${error}</span>
            <input type="text" name="title" class="form-control" placeholder="请输入要查询的博客title">
            <input type="submit" value="查询" class="btn btn-primary">
        </form>
    </div>

    <div class="row clearfix">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>博客编号</th>
                <th>博客标题</th>
                <th>博客摘要</th>
                <th>内容</th>
                <th>发表时间</th>
                <th>点击数</th>
                <th>评论数</th>
                <th>类型</th>
                <th>关键字</th>
                <th>操作</th>
            </tr>
            </thead>
            <%--                博客从数据库中查询出来，从list中遍历--%>
            <tbody>
            <c:forEach var="blog" items="${list}">
                <tr>
                    <td>${blog.id}</td>
                    <td>${blog.title}</td>
                    <td>${blog.summary}</td>
                    <td>${blog.content}</td>
                    <td>${blog.releaseDate}</td>
                    <td>${blog.clickHit}</td>
                    <td>${blog.replyHit}</td>
                    <td>${blog.typeId}</td>
                    <td>${blog.keyWord}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/blog/toUpdate?id=${blog.id}">修改</a>
                        &nbsp;|&nbsp;
                        <a href="${pageContext.request.contextPath}/blog/deleteBlog/${blog.id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
