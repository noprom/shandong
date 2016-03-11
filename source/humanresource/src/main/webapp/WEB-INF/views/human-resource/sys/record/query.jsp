<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.domain.SurveyTime" %>
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
    <div class="content-wrapper">

        <section class="content-header">
            <h1>
                企业备案查询
            </h1>
        </section>

        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-danger">
                        <div class="box-header with-border">
                            <h3 class="box-title">Different Width</h3>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <form id="query-form" action="<%=basePath%>sys/record/query" method="post" >
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
                                    <button type="submit" class="btn-danger" id="submit-btn">查询</button>
                                </form>
                            </div>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->


                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Hover Data Table</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>address</th>
                                    <th>name</th>
                                    <th>contact</th>
                                    <th>phone</th>
                                </tr>
                                </thead>
                                <c:forEach items="${recordResult}" var="v">
                                <tbody>
                                <tr>
                                    <td>${v.id}</td>
                                    <td>${v.address}</td>
                                    <td>${v.name}</td>
                                    <td>${v.contact}</td>
                                    <td>${v.phone}</td>
                                </tr>
                                </tbody>
                                </c:forEach>
                                <tfoot>
                                <tr>
                                    <th>id</th>
                                    <th>address</th>
                                    <th>name</th>
                                    <th>contact</th>
                                    <th>phone</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->

                </div><!-- /.col -->
            </div><!-- /.row -->
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
    <div class="control-sidebar-bg"></div>
</div><!-- ./wrapper -->
<jsp:include page="../../footer.jsp" flush="true"></jsp:include>
<!-- page script -->
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

        <%--$("#submit-btn").on('click', function () {--%>
            <%--var postUrl = "<%=basePath%>sys/record/query";--%>
            <%--var city_id = $("#query-form input[name=city_id]").val();--%>
            <%--var area_id = $("#query-form input[name=area_id]").val();--%>
            <%--var name = $("#query-form input[name=name]").val();--%>
            <%--var code = $("#query-form input[name=code]").val();--%>
            <%--var contact = $("#query-form input[name=contact]").val();--%>
<%--//            var start_time = $("#query-form input[name=start_time]").val();--%>
<%--//            var end_time = $("#query-form input[name=end_time]").val();--%>

            <%--$.ajax({--%>
                <%--url: postUrl,--%>
                <%--data:$("#query-form").serialize(),--%>
                <%--method: "post",--%>
                <%--dataType: "json",--%>
                <%--success: function (data) {--%>
                    <%--//waiting--%>
                    <%--alert(data.info);--%>
                    <%--if (data.status == 'SUCCESS') {--%>
                        <%--//toastr.success(data.info);--%>
                        <%--&lt;%&ndash;setTimeout(function () {&ndash;%&gt;--%>
                            <%--&lt;%&ndash;window.location.href = "<%=basePath%>";&ndash;%&gt;--%>
                        <%--&lt;%&ndash;}, 1000);&ndash;%&gt;--%>
                    <%--} else {--%>
                        <%--//toastr.error(data.info);--%>
                        <%--return false;--%>
                    <%--}--%>
                <%--}--%>
            <%--});--%>

        <%--});--%>
    });
</script>

</body>
</html>
