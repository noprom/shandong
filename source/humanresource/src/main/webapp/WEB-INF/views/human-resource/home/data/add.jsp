<%--
  Created by IntelliJ IDEA.
  User: Tom
  Date: 2016/3/14
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.domain.SurveyTime" %>
<%@ page import="com.shandong.human.resource.domain.Area" %>
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
                数据填报
            </h1>
            <ol class="breadcrumb">
                <li><a href="<%=basePath%>"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li>企业</li>
                <li class="active">数据填报</li>
            </ol>
        </section>


        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">我的申报</h3>
                        </div>
                        <div class="box-body">
                            <table id="dataTable" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>建档期就业人数</th>
                                    <th>调查期就业人数</th>
                                    <th>状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${companyDataList}" var="v">
                                    <tr>
                                        <td>${v.init_people}</td>
                                        <td>${v.cur_people}</td>
                                        <td>
                                                <%--company data的状态--%>
                                            <c:choose>
                                                <c:when test="${v.status eq -2}">
                                                    <span class="label label-danger">省审核不通过</span>
                                                    <a  href="<%=basePath%>home/data/edit/${v.id}">重新编辑</a>
                                                </c:when>
                                                <c:when test="${v.status eq -1}">
                                                    <span class="label label-danger">市审核不通过</span>
                                                    <a href="<%=basePath%>home/data/edit/${v.id}">重新编辑</a>
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
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <form role="form" id="add-form">
                        <div class="row">
                            <!-- left column -->
                            <div class="col-md-6">
                                <div class="box box-primary">
                                    <div class="box-header with-border">
                                        <h3 class="box-title"></h3>
                                    </div><!-- /.box-header -->
                                    <!-- form start -->

                                    <div class="box-body">
                                        <div class="form-group">
                                            <label>调查期时间</label>
                                            <select aria-hidden="true" tabindex="-1" class="form-control"
                                                    style="width: 100%;" id="survey_time_id" name="survey_time_id">
                                                <%--<option selected="selected"></option>--%>
                                                <c:forEach items="${listSurverTime}" var="v">
                                                    <option value="${v.id}"><fmt:formatDate value="${v.start_time}"
                                                                                            type="both"
                                                                                            pattern="yyyy-MM-dd HH:mm"/>
                                                        到 <fmt:formatDate value="${v.end_time}" type="both"
                                                                          pattern="yyyy-MM-dd HH:mm"/></option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>建档期就业人数</label>
                                            <input class="form-control" value="${companyData.init_people}" type="text"
                                                   id="init_people" name="init_people">
                                        </div>
                                        <div class="form-group">
                                            <label>调查期就业人数</label>
                                            <input class="form-control" value="${companyData.cur_people}" type="text"
                                                   id="cur_people" name="cur_people">
                                        </div>
                                        <div class="form-group">
                                            <label>就业人数减少类型</label>
                                            <select aria-hidden="true" tabindex="-1" class="form-control"
                                                    style="width: 100%;" id="reduce_type" name="reduce_type">
                                                <option selected="selected">${companyData.reduce_type}</option>
                                                <c:forEach items="${listType}" var="v">
                                                    <option value="${v.name}">${v.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>主要原因</label>
                                            <select aria-hidden="true" tabindex="-1" class="form-control"
                                                    style="width: 100%;" id="reason1" name="reason1">
                                                <option selected="selected">${companyData.reason1}</option>
                                                <c:forEach items="${listReason}" var="v">
                                                    <option value="${v.name}">${v.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>主要原因说明</label>
                                            <textarea style="height: 64px;" class="form-control" rows="3"
                                                      name="reason1_explain"
                                                      id="reason1_explain">${companyData.reason1_explain}</textarea>
                                        </div>
                                        <div class="box-footer">
                                            <button type="button" onclick="onSubmit()" class="btn btn-primary">上报
                                            </button>
                                        </div>
                                    </div><!-- /.box-body -->
                                </div><!-- /.content -->
                            </div><!--/.col (left) -->
                            <!-- right column -->
                            <div class="col-md-6">
                                <!-- Horizontal Form -->
                                <div class="box box-primary">
                                    <div class="box-header with-border">
                                        <h3 class="box-title"></h3>
                                    </div><!-- /.box-header -->
                                    <!-- form start -->

                                    <div class="box-body">

                                        <div class="form-group">
                                            <label>次要原因</label>
                                            <select aria-hidden="true" tabindex="-1" class="form-control"
                                                    style="width: 100%;" id="reason2" name="reason2">
                                                <option selected="selected">${companyData.reason2}</option>
                                                <c:forEach items="${listReason}" var="v">
                                                    <option value="${v.name}">${v.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label>次要原因说明</label>
                                            <textarea style="height: 64px;" class="form-control" rows="3"
                                                      name="reason2_explain"
                                                      id="reason2_explain">${companyData.reason2_explain}</textarea>
                                        </div><!-- /.form-group -->
                                        <div class="form-group">
                                            <label>第三原因</label>
                                            <select aria-hidden="true" tabindex="-1" class="form-control"
                                                    style="width: 100%;" id="reason3" name="reason3">
                                                <option selected="selected">${companyData.reason3}</option>
                                                <c:forEach items="${listReason}" var="v">
                                                    <option value="${v.name}">${v.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label>第三原因说明</label>
                                            <textarea class="form-control" rows="3" placeholder=""
                                                      name="reason3_explain"
                                                      id="reason3_explain">${companyData.reason3_explain}</textarea>
                                        </div><!-- /.form-group -->
                                        <div class="form-group">
                                            <label>其它原因</label>
                                            <textarea class="form-control" rows="3" placeholder="" id="other_reason"
                                                      name="other_reason">${companyData.other_reason}</textarea>
                                        </div>

                                    </div><!-- /.box-body -->

                                </div><!-- /.content -->
                            </div><!--/.col (right) -->
                        </div>
                    </form>
                </div>
            </div>
        </section>
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

        $(document).ready(function () {
            <%Integer status=(Integer) request.getAttribute("status");%>
            var status = "<%=status.intValue()%>";
            <%String infoStr=(String)request.getAttribute("Info");%>
            var info = "<%=infoStr%>";
            if (status == -2 || status == -1) {
                toastr.error(info);
            }
            else if (status >= 0) {
                toastr.error(info);
                setTimeout(function () {
                    window.location.href = "<%=basePath%>";
                }, 3500);
            }
        });

        function onSubmit() {
            var postUrl = "<%=basePath%>home/data/add/submit";
            $.ajax({
                url: postUrl,
                data: $("#add-form").serialize(),
                async: false,
                type: 'POST',
                dataType: "json",
                success: function (data) {
                    if (data.success == "success") {
                        toastr.success("上报成功");
                        window.location.href = "<%=basePath%>";
                    }
                    else if (data.success == "error0") {
                        toastr.error("建档期就业人数格式有误！");
                    }
                    else if (data.success == "error1") {
                        toastr.error("调查期就业人数格式有误！");
                    }
                    else if (data.success == "error2") {
                        toastr.error("主要原因说明过长！");
                    }
                    else if (data.success == "error3") {
                        toastr.error("次要原因过长！");
                    }
                    else if (data.success == "error4") {
                        toastr.error("第三原因说明过长！");
                    }
                    else if (data.success == "error5") {
                        toastr.error("其它原因说明过长！");
                    }
                    else if (data.success == "error51") {
                        toastr.error("其它原因不能为空！");
                    }
                },
                error: function () {
                    toastr.error("上报失败");
                }
            });

        }

    </script>
</body>
</html>