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
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="header.jsp" flush="true"></jsp:include>

    <jsp:include page="left.jsp" flush="true"></jsp:include>

    <!-- 主要内容开始 -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <form id="login-form">
            用户名:<input type="text" name="username">
            密码:<input type="password" name="password">
            <button type="button" id="submit-btn">提交</button>
        </form>
    </div><!-- /.主要内容结束 -->

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
<script>
    $(function () {
        $("#submit-btn").on('click', function () {
            var postUrl = "<%=basePath%>login";
            var username = $("#login-form input[name=username]").val();
            var password = $("#login-form input[name=password]").val();
            $.ajax({
                url : postUrl,
                data: $("#login-form").serialize(),
                method : "post",
                dataType : "json",
                success : function(data) {
                    alert(data.info);
                    if (data.status == 'SUCCESS') {
                        //toastr.success(data.info);
                        setTimeout(function(){
                            window.location.href = "<%=basePath%>";
                        }, 1000);
                    } else {
                        //toastr.error(data.info);
                        return false;
                    }
                }
            });

        });

    });
</script>
