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
    <jsp:include page="../../head.jsp" flush="true"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="../../header.jsp" flush="true"></jsp:include>

    <jsp:include page="../../left.jsp" flush="true"></jsp:include>

    <!-- 主要内容开始 -->
        <div class="content-wrapper" style="min-height: 946px;">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    General Form Elements
                    <small>Preview</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li><a href="#">Forms</a></li>
                    <li class="active">General Elements</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-6">
                        <!-- general form elements -->
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">Quick Example</h3>
                            </div><!-- /.box-header -->
                            <!-- form start -->
                            <form role="form" id="editNews-form" action="<%=basePath%>sys/news/edit" method ="post">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="createTime">Password</label>
                                        <input type="hidden" name="id" value="${newToEdit.id}" class="form-control" placeholder="">
                                        <input type="hidden" name="userId" id="userId" value="${newToEdit.userId}"class="form-control" placeholder="">
                                        <input type="text" name="createTime" id="createTime" value="${newToEdit.createTime}"class="form-control"placeholder="">
                                    </div>
                                    <div class="form-group">
                                        <label for="title">File input</label>
                                        <input type="text" name="title" id="title" value="${newToEdit.title}" class="form-control" required placeholder="title ...">
                                        <p class="help-block">Example block-level help text here.</p>
                                    </div>
                                    <div class="form-group">
                                        <label for="content">File input</label>
                                        <textarea class="form-control" id="content" name="content" rows="10" required placeholder="">${newToEdit.content}</textarea>
                                        <p class="help-block">Example block-level help text here.</p>
                                    </div>

                                </div><!-- /.box-body -->

                                <div class="box-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div><!-- /.box -->

                    </div><!--/.col (left) -->

                </div>   <!-- /.row -->
            </section><!-- /.content -->
        </div>

    <!-- /.主要内容结束 -->
    <jsp:include page="../../footer.jsp" flush="true"></jsp:include>
</body>
</html>
