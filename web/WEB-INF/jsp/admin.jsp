<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
    <style>
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #eee;
        }
    </style>
    <script>
        function changeFrameHeight() {
            $("#right").css("height",document.documentElement.clientHeight);
        }
    </script>
</head>
<body>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="col-md-2">
            <div class="media">
                <a href="#" class="pull-left">
                    <img src="${pageContext.request.contextPath}/statics/img/admin.png" class="img-circle" alt='出现未知错误' />
                </a>
                <div class="media">
                    <h4 class="inner">
                        admin
                    </h4>
                </div>
            </div>
            <br>
            <ul class="list-group">
                <li class="list-group-item">
                    <a href="${pageContext.request.contextPath}/index.jsp">我的博客</a>
                </li>
                <li class="list-group-item">
                    <a href="${pageContext.request.contextPath}/blogger/queryBlogger" target="right">个人中心</a>
                </li>
                <li class="list-group-item">
                    <a href="${pageContext.request.contextPath}/blogger/updateUP?id=${Admin.id}" target="right">账号设置</a>
                </li>
                <li class="list-group-item">
                    <a href="${pageContext.request.contextPath}/blog/allBlog" target="right">文章管理</a>
                </li>
                <li class="list-group-item">
                    <a href="${pageContext.request.contextPath}/link/allLink" target="right">友情链接</a>
                </li>
                <li class="list-group-item">
                    <a href="${pageContext.request.contextPath}/comment/allComment" target="right">评论管理</a>
                </li>
                <li class="list-group-item">
                    <a href="${pageContext.request.contextPath}/blogType/allBlogType" target="right">博客类型</a>
                </li>
            </ul>
        </div>
        <div class="col-md-10">
            <iframe id="right" src="${pageContext.request.contextPath}/blogger/queryBlogger" name="right" class="col-md-12" style="border: none;" onload="changeFrameHeight();"></iframe>
        </div>
    </div>
</div>
</body>
</html>
