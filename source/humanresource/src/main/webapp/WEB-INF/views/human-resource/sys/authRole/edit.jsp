<%--
  Created by IntelliJ IDEA.
  User: syc
  Date: 2016/3/14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.domain.Auth" %>
<%@ page import="com.shandong.human.resource.common.AuthTree" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../../head.jsp" flush="true"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">
    <jsp:include page="../../header.jsp" flush="true"></jsp:include>

    <jsp:include page="../../left.jsp" flush="true"></jsp:include>

    <div class="content-wrapper">
    <section class="content-header"><h1>修改权限</h1></section>

    <section class="content">
        <div class="row">
            <form role="form">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">
                                <input type="checkbox"> 用户管理
                            </h3>
                        </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    新增
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-1">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    删除
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-1">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    编辑
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.box-body -->
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">
                                <input type="checkbox"> 新闻管理
                            </h3>
                        </div>
                        <div class="box-body">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-1">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    新增
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-1">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    删除
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-1">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    编辑
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary">提 交</button>
                </div>
            </form>
        </div>
    </section>
    </div>


    <jsp:include page="../../footer.jsp" flush="true"></jsp:include>
    <script>
        $(function () {

        });
    </script>
</div>
</body>
</html>
