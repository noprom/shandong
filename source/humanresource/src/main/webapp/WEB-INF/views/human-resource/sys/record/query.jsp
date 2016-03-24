<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.domain.SurveyTime" %>
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
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Data Tables
                <small>advanced tables</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Data tables</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">Different Width</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <form id="query-form" action="<%=basePath%>sys/record/query" method="post">
                            <div class="col-xs-1">
                                <p>市id</p>
                                <input type="text" class="form-control" name="city_id">
                            </div>
                            <div class="col-xs-1">
                                <p>区id</p>
                                <input type="text" class="form-control" name="area_id">
                            </div>
                            <div class="col-xs-2">
                                <p>企业名称</p>
                                <input type="text" class="form-control" name="name">
                            </div>
                            <div class="col-xs-2">
                                <p>企业代码</p>
                                <input type="text" class="form-control" name="code">
                            </div>
                            <div class="col-xs-2">
                                <p>联系人</p>
                                <input type="text" class="form-control" name="contact">
                            </div>
                            <%--<div class="col-xs-2">--%>
                            <%--<p>起始时间</p>--%>
                            <%--<select class="form-control" name="start_time">--%>
                            <%--<option></option>--%>
                            <%--<c:forEach items="${allSurveyTime}" var="v">--%>
                            <%--<option>${v.start_time}</option>--%>
                            <%--</c:forEach>--%>
                            <%--</select>--%>
                            <%--</div>--%>
                            <%--<div class="col-xs-2">--%>
                            <%--<p>结束时间</p>--%>
                            <%--<select class="form-control" name="end_time">--%>
                            <%--<option></option>--%>
                            <%--<c:forEach items="${allSurveyTime}" var="v">--%>
                            <%--<option>${v.end_time}</option>--%>
                            <%--</c:forEach>--%>
                            <%--</select>--%>
                            <%--</div>--%>
                            <button type="submit" id="submit-btn">查询</button>
                        </form>
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->

            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Data Table With Full Features</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>ADDRESS</th>
                                    <th>COMPANY NAME</th>
                                    <th>CONTACT</th>
                                    <th>PHONE NUMBER</th>
                                    <th>DETAIL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${recordResult}" var="v">
                                    <tr>
                                        <td>${v.id}</td>
                                        <td>${v.address}</td>
                                        <td>${v.name}</td>
                                        <td>${v.contact}</td>
                                        <td>${v.phone}</td>
                                        <td><a href="<%=basePath%>sys/record/${v.id}" class="btn btn-primary">详情</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>ADDRESS</th>
                                    <th>COMPANY NAME</th>
                                    <th>CONTACT</th>
                                    <th>PHONE NUMBER</th>
                                    <th>DETAIL</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div><!-- /.col -->
            </div><!-- /.row -->
            <form id="excel-form" action="<%=basePath%>sys/record/export" method="post">
                <button type="submit" id="submit-btn">导出到excel</button>
            </form>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
    <jsp:include page="../../footer.jsp" flush="true"></jsp:include>
    <script>
        $(function () {
            $("#example1").DataTable();
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false
            });
        });
    </script>
</body>
</html>

