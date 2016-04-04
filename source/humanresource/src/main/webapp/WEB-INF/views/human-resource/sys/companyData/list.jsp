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
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                上报数据列表
                <small>上报数据</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="<%=basePath%>"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li>数据管理</li>
                <li class="active">企业数据列表</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <%--查询框--%>
            <%--<div class="box box-danger">--%>
            <%--<div class="box-header with-border">--%>
            <%--<h3 class="box-title">Different Width</h3>--%>
            <%--</div>--%>
            <%--<div class="box-body">--%>
            <%--<div class="row">--%>
            <%--<form id="query-form" action="<%=basePath%>sys/record/query" method="post">--%>
            <%--<div class="col-xs-1">--%>
            <%--<p>市id</p>--%>
            <%--<input type="text" class="form-control" name="city_id">--%>
            <%--</div>--%>
            <%--<div class="col-xs-1">--%>
            <%--<p>区id</p>--%>
            <%--<input type="text" class="form-control" name="area_id">--%>
            <%--</div>--%>
            <%--<div class="col-xs-2">--%>
            <%--<p>企业名称</p>--%>
            <%--<input type="text" class="form-control" name="name">--%>
            <%--</div>--%>
            <%--<div class="col-xs-2">--%>
            <%--<p>企业代码</p>--%>
            <%--<input type="text" class="form-control" name="code">--%>
            <%--</div>--%>
            <%--<div class="col-xs-2">--%>
            <%--<p>联系人</p>--%>
            <%--<input type="text" class="form-control" name="contact">--%>
            <%--</div>--%>
            <%--&lt;%&ndash;<div class="col-xs-2">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<p>起始时间</p>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<select class="form-control" name="start_time">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<option></option>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:forEach items="${allSurveyTime}" var="v">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<option>${v.start_time}</option>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div class="col-xs-2">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<p>结束时间</p>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<select class="form-control" name="end_time">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<option></option>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:forEach items="${allSurveyTime}" var="v">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<option>${v.end_time}</option>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--<button type="submit" id="submit-btn">查询</button>--%>
            <%--</form>--%>
            <%--</div>--%>
            <%--</div><!-- /.box-body -->--%>
            <%--</div><!-- /.box -->--%>

            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">数据列表</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <table id="dataTable" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>公司编号</th>
                                    <th>建档期就业人数</th>
                                    <th>调查期就业人数</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${companyDataList}" var="v">
                                    <tr>
                                        <td>${v.company_id}</td>
                                        <td>${v.init_people}</td>
                                        <td>${v.cur_people}</td>
                                        <td>
                                                <%--company data的状态--%>
                                            <c:choose>
                                                <c:when test="${v.status eq -2}">
                                                    <span class="label label-danger">省审核不通过</span>
                                                </c:when>
                                                <c:when test="${v.status eq -1}">
                                                    <span class="label label-danger">市审核不通过</span>
                                                </c:when>
                                                <c:when test="${v.status eq 0}">
                                                    <span class="label label-warning">待市审核</span>
                                                </c:when>
                                                <c:when test="${v.status eq 1}">
                                                    <span class="label label-warning">市审核通过,待省审核</span>
                                                </c:when>
                                                <c:when test="${v.status eq 2}">
                                                    <span class="label label-primary">省审核通过,待上报到部</span>
                                                </c:when>
                                                <c:when test="${v.status eq 3}">
                                                    <span class="label label-success">已上报到部</span>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <c:choose>
                                                <%--市用户只允许在待审核的情况下编辑或者审核--%>
                                                <c:when test="${(localUser.type >= 170) and (v.status eq 0)}">
                                                    <a href="<%=basePath%>sys/data/edit/${v.id}"
                                                       class="btn btn-primary">编辑</a>
                                                    <a href="<%=basePath%>sys/data/audit/${v.id}"
                                                       class="btn btn-primary">审核</a>
                                                </c:when>
                                                <%--省用户查看市用户已经审核通过的--%>
                                                <c:when test="${(localUser.type eq 1) and (v.status eq 1)}">
                                                    <a href="<%=basePath%>sys/data/edit/${v.id}"
                                                       class="btn btn-primary">编辑</a>
                                                    <a href="<%=basePath%>sys/data/audit/${v.id}"
                                                       class="btn btn-primary">审核</a>
                                                </c:when>
                                            </c:choose>
                                                <%--貌似没有删除的需求--%>
                                                <%--<a href="<%=basePath%>sys/data/delete/${v.id}"--%>
                                                <%--class="btn btn-primary">删除</a>--%>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div><!-- /.col -->
            </div><!-- /.row -->
            <%--<form id="excel-form" action="<%=basePath%>sys/record/export" method="post">--%>
            <%--<button type="submit" id="submit-btn">导出到excel</button>--%>
            <%--</form>--%>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
</div>

<!-- /.主要内容结束 -->
<jsp:include page="../../footer.jsp" flush="true"></jsp:include>
<script>
    $(function () {
        /*这是自带数据表格分页所必须的*/
        $("#dataTable").DataTable();
    });
</script>
</body>
</html>
