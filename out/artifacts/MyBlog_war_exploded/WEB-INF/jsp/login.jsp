<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/login.css">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>

    <script>
        function a1() {
            $.post("${pageContext.request.contextPath}/a1",{"name":$("#name").val(),"pwd":$("#pwd").val()},function (data) {
                if(data==="ok"){
                    $("#loginform").submit();
                }else if (data==="用户名应为admin"){
                    $("#Info").css("color","red");
                    $("#Info").html(data);
                }else{
                    $("#Info").css("color","red");
                    $("#Info").html(data);
                }
            })
        }

    </script>
<%--    是最外层的页面跳转--%>
    <script language="JavaScript">
        if (window != top)
            top.location.href = location.href;

    </script>
</head>
<body>

<div class="container">
    <form class="form-signin" method="post" action="${pageContext.request.contextPath}/a2" id="loginform">

        <h2 class="form-signin-heading">请登录</h2>

        <label for="name" class="sr-only">用户名</label>
        <input type="test" id="name" class="form-control" placeholder="请输入用户名" required>

        <label for="pwd" class="sr-only">密码</label>
        <input type="password" id="pwd" class="form-control" placeholder="请输入密码" required>

        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> 记住我
            </label>
        </div>

        <p><span id="Info"></span></p>

        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="a1()">登录</button>
    </form>

</div> <!-- /container -->
</body>
</html>
