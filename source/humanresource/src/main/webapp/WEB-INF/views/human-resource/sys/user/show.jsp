<%--
  Created by IntelliJ IDEA.
  User: syc
  Date: 2016/3/19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.util.Pager" %>
<%@ page import="com.shandong.human.resource.domain.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    <div class="content-wrapper" style="min-height: 916px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                用户列表
                <small>系统用户</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Simple</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">用户列表</h3>
                            <div class="box-tools">
                                <div class="input-group" style="width: 150px;">
                                    <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Search">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <tbody><tr>
                                    <th>ID</th>
                                    <th>用户名</th>
                                    <th>类型</th>
                                    <th>操作</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td><span class="label
                                    <%--<c:choose>--%>
                                        <%--<c:when test="${r.type eq 1}">label-success</c:when>--%>
                                        <%--<c:when test="${r.type eq 2}">label-info</c:when>--%>
                                    <%--</c:choose>--%>
                                    "></span></td>
                                    <td>操作</td>
                                </tr>

                                </tbody></table>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>
            </div>
        </section><!-- /.content -->
    </div>

    <%--<div class="content-wrapper">--%>
        <%--<div class="row">--%>
            <%--<div class="col-xs-12">--%>
                <%--<div class="box">--%>
                    <%--<div class="box-header">--%>
                        <%--<h2 class="box-title">用户列表</h2>--%>
                    <%--</div>--%>
                    <%--<div class="box-body">--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-md-12">--%>
                                <%--<table role="grid" class="table table-bordered table-striped dataTable">--%>
                                    <%--<thead>--%>
                                    <%--<tr role="row">--%>
                                        <%--<th style="width: 180px;">--%>
                                            <%--ID--%>
                                        <%--</th>--%>
                                        <%--<th style="width: 180px;">--%>
                                            <%--name--%>
                                        <%--</th>--%>
                                        <%--<th style="width: 180px;">--%>
                                            <%--type--%>
                                        <%--</th>--%>
                                        <%--<th style="width: 180px;">--%>
                                            <%--option--%>
                                        <%--</th>--%>
                                    <%--</tr>--%>
                                    <%--</thead>--%>
                                    <%--<% Pager<User> pageParam = (Pager<User>) request.getAttribute("pageParam");--%>
                                        <%--System.out.println("==================================================");--%>
                                        <%--int currentPage = 0;--%>
                                        <%--int totalPage = 0;--%>
                                        <%--int size = 0;--%>
                                        <%--List<User> data = new ArrayList<User>();--%>
                                        <%--if (pageParam != null) {--%>
                                            <%--currentPage = pageParam.getCurrentPage();--%>
                                            <%--totalPage = pageParam.getTotalPage();--%>
                                            <%--data = pageParam.getData();--%>
                                            <%--size = pageParam.getSize();--%>
                                        <%--}--%>
                                        <%--for (User r : data) {--%>
                                    <%--%>--%>
                                    <%--<tbody>--%>
                                    <%--<tr class="odd" role="row">--%>
                                        <%--<td><%= r.getId()%>--%>
                                        <%--</td>--%>
                                        <%--<td><%= r.getUsername()%>--%>
                                        <%--</td>--%>
                                        <%--<td><%= r.getType()%>--%>
                                        <%--</td>--%>
                                        <%--<td><a href="" data-color="blue">编辑角色</a></td>--%>
                                    <%--</tr>--%>
                                    <%--</tbody>--%>
                                    <%--<%--%>
                                        <%--}--%>
                                    <%--%>--%>
                                <%--</table>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-sm-5">--%>
                                <%--<div class="datatables_info" role="status">--%>
                                    <%--<% int nowAt = pageParam.getCurrentPage(); %>--%>
                                    <%--showing&nbsp;<%= (nowAt - 1) * pageParam.getMaxSize() + 1%>--%>
                                    <%--&nbsp;~&nbsp;<%= (nowAt - 1) * pageParam.getMaxSize() + 1 + pageParam.getSize()%>--%>
                                    <%--&nbsp;of&nbsp;<%= pageParam.getCount()%>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="col-sm-7">--%>
                                <%--<form action="<%= basePath%>sys/user" method="get">--%>
                                    <%--<% for (int i = 1; i < currentPage; ++i) {%>--%>
                                    <%--<input name="pageNum" type="submit" class="btn btn-info" href="" value="<%= i%>">--%>
                                    <%--<%}%>--%>
                                    <%--<a class="btn btn-default" href=""><%= currentPage%>--%>
                                    <%--</a>--%>
                                    <%--<% for (int i = currentPage + 1; i <= totalPage; ++i) {%>--%>
                                    <%--<input name="pageNum" type="submit" class="btn btn-info" href="" value="<%= i%>">--%>
                                <%--</form>--%>
                                <%--<%}%>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

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
</div>
</body>
</html>
