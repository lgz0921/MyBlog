<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评论</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>评论</small>
                </h1>
            </div>
        </div>

    </div>
    <div class="row clearfix">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>编号</th>
                <th>评论者IP</th>
                <th>被评论博客主键</th>
                <th>评论内容</th>
                <th>评论时间</th>
                <th>评论状态</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="comment" items="${list}">
                <tr>
                    <td>${comment.id}</td>
                    <td>${comment.userIp}</td>
                    <td>${comment.blogId}</td>
                    <td>${comment.content}</td>
                    <td>${comment.commentDate}</td>
                    <td>${comment.state}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/comment/deleteComment/${comment.id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
