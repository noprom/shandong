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
        <div class="content-wrapper" style="min-height: 916px;">
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
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Data Table With Full Features</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="example1_length"><label>Show <select name="example1_length" aria-controls="example1" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-6"><div id="example1_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="example1"></label></div></div></div><div class="row"><div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                    <thead>
                                    <%--<tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 166px;">Rendering engine</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 207px;">Browser</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 182px;">Platform(s)</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 142px;">Engine version</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 102px;">CSS grade</th></tr>--%>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>Id</th>
                                        <th>Title</th>
                                        <th>Content</th>
                                        <th>CreateTime</th>
                                        <th>Modify</th>
                                        <th>Delete</th>
                                    </tr>
                                    <c:forEach items="${newsList}" var="v">
                                        <tr>
                                            <td>${v.id}</td>
                                            <td>${v.title}</td>
                                            <td>${v.content}</td>
                                            <td><fmt:formatDate value="${v.createTime}" type="both"
                                                                pattern="yyyy-MM-dd HH:mm"/></td>
                                            <td>
                                                <a href="<%=basePath%>sys/news/edit/${v.id}" class="btn btn-primary">修改</a>
                                            </td>
                                            <td>
                                                <a href="<%=basePath%>sys/news/delete/${v.id}" class="btn btn-primary">删除</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                    <tfoot>
                                    <%--<tr><th rowspan="1" colspan="1">Rendering engine</th><th rowspan="1" colspan="1">Browser</th><th rowspan="1" colspan="1">Platform(s)</th><th rowspan="1" colspan="1">Engine version</th><th rowspan="1" colspan="1">CSS grade</th></tr>--%>
                                    </tfoot>
                                </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li><li class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li></ul></div></div></div></div>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </section><!-- /.content -->
        </div>
    <%----%>
    <%--<div class="content-wrapper">--%>
        <%--<div class="row">--%>
            <%--<div class="col-xs-12">--%>
                <%--<div class="box">--%>
                    <%--<div class="box-header">--%>
                        <%--<h3 class="box-title">Responsive Hover Table</h3>--%>
                        <%--<div class="box-tools">--%>
                            <%--<div class="input-group" style="width: 150px;">--%>
                                <%--<input type="text" name="table_search" class="form-control input-sm pull-right"--%>
                                       <%--placeholder="Search">--%>
                                <%--<div class="input-group-btn">--%>
                                    <%--<button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div><!-- /.box-header -->--%>
                    <%--<div class="box-body table-responsive no-padding">--%>
                        <%--<table class="table table-hover">--%>
                            <%--<tbody>--%>
                            <%--<tr>--%>
                                <%--<th>Id</th>--%>
                                <%--<th>Title</th>--%>
                                <%--<th>Content</th>--%>
                                <%--<th>CreateTime</th>--%>
                                <%--<th>Modify</th>--%>
                                <%--<th>Delete</th>--%>
                            <%--</tr>--%>
                            <%--<c:forEach items="${newsList}" var="v">--%>
                                <%--<tr>--%>
                                    <%--<td>${v.id}</td>--%>
                                    <%--<td>${v.title}</td>--%>
                                    <%--<td>${v.content}</td>--%>
                                    <%--<td><fmt:formatDate value="${v.createTime}" type="both"--%>
                                                        <%--pattern="yyyy-MM-dd HH:mm"/></td>--%>
                                    <%--<td>--%>
                                        <%--<a href="<%=basePath%>sys/news/edit/${v.id}" class="btn btn-primary">修改</a>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<a href="<%=basePath%>sys/news/delete/${v.id}" class="btn btn-primary">删除</a>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                            <%--</c:forEach>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div><!-- /.box-body -->--%>
                <%--</div><!-- /.box -->--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<a href="<%=basePath%>sys/news/addjsp">--%>
            <%--<button type="button" class="form-control">添加</button>--%>
        <%--</a>--%>

    <%--</div>--%>


    <!-- /.主要内容结束 -->
    <jsp:include page="../../footer.jsp" flush="true"></jsp:include>
</body>
</html>
