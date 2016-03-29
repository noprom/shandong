<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="head.jsp" flush="true"></jsp:include>
</head>
<body class="hold-transition login-page">

<div class="login-box">
    <div class="login-logo" data-color="gray">
        <b>山东人力资源</b>&nbsp;&nbsp;采集系统
    </div><!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">欢迎来到山东资源管理系统</p>
        <form action="<%=basePath%>login" method="post">
            <div class="form-group has-feedback">
                <input name="userName" class="form-control" placeholder="用户名" type="text">
            </div>
            <div class="form-group has-feedback">
                <input name="password" class="form-control" placeholder="密码" type="password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-4">

                </div><!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
                </div><!-- /.col -->
            </div>
        </form>
    </div><!-- /.login-box-body -->
</div><!-- /.login-box -->

<!-- jQuery 2.1.4 -->
<script src="<%=basePath%>static/human/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="<%=basePath%>static/human/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<%=basePath%>static/human/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>
</html>
