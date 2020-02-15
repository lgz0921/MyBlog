<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>博客类型</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>博客类型</small>
                </h1>
            </div>
        </div>

    </div>

    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/blogType/toAddBlogType">新增博客类型</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/blogType/allBlogType">查询全部博客类型</a>
    </div>
    <br><br>
    <div class="row clearfix">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>编号</th>
                <th>博客类型名称</th>
                <th>序号</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="blogType" items="${list}">
                <tr>
                    <td>${blogType.id}</td>
                    <td>${blogType.typeName}</td>
                    <td>${blogType.orderNo}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/blogType/toUpdate?id=${blogType.id}">修改</a>
                        &nbsp;|&nbsp;
                        <a href="${pageContext.request.contextPath}/blogType/deleteBlogType/${blogType.id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
