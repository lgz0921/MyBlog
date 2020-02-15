<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账号设置</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
<%--    <script>--%>
<%--        $(window.parent.document).find("#right").load(function () {--%>
<%--            var main = $(window.parent.document).find("#right");--%>
<%--            var thisheight = $(document).height() + 30;--%>
<%--            main.height(thisheight);--%>
<%--        });--%>
<%--    </script>--%>
</head>
<body>
<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>账号设置</small>
                </h1>
            </div>
        </div>

    </div>


    <form action="${pageContext.request.contextPath}/blogger/updateOk" method="post">
        <%--        别忘了用隐藏域传ID 来对应SQL的id--%>
        <input type="hidden" name="id" value="${Admin.id}">
        <div class="form-group">
            <label>账号</label>
            <input type="text" name="userName" class="form-control" value="${Admin.userName}" required>
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="text" name="password" class="form-control" value="${Admin.password}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn btn-primary" value="修改保存">
        </div>
    </form>
</div>

</body>
</html>
