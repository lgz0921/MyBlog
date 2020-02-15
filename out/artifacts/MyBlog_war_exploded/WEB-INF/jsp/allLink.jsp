<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>友情链接</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>友情链接</small>
                </h1>
            </div>
        </div>

    </div>

    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/link/toAddLink">新增友情链接</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/link/allLink">查询全部友情链接</a>
    </div>
    <div class="col-md-8 column">
        <form class="form-inline" action="${pageContext.request.contextPath}/link/queryLink" method="post"
              style="float: right">
            <span style="color: red;font-weight: bold">${error}</span>
            <input type="text" name="linkName" class="form-control" placeholder="请输入要查询的链接名字">
            <input type="submit" value="查询" class="btn btn-primary">
        </form>
    </div>

    <div class="row clearfix">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>网站编号</th>
                <th>网站名称</th>
                <th>网站地址</th>
                <th>序号</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="link" items="${list}">
                <tr>
                    <td>${link.id}</td>
                    <td>${link.linkName}</td>
                    <td>${link.linkUrl}</td>
                    <td>${link.orderNo}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/link/toUpdate?id=${link.id}">修改</a>
                        &nbsp;|&nbsp;
                        <a href="${pageContext.request.contextPath}/link/deleteLink/${link.id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
