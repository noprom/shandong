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

        <!-- Main content -->
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

        <section class="content">
            <div class="row">
                <div class="col-md-6">
                    <!-- Horizontal Form -->
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <h3 class="box-title">General Elements</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <form role="form" action="<%=basePath%>sys/data/edit" method="post">
                                <!-- text input -->


                                <div class="form-group">
                                    <label for="company_id">company_id</label>
                                    <input type="hidden" type="text" value=${companyData.id} class="form-control" name="id" id="id" placeholder="Enter ...">
                                    <input type="hidden" type="text" value=${companyData.pid} class="form-control" name="pid" id="pid" placeholder="Enter ...">
                                    <%--<input type="hidden" type="text" value=${companyData.update_time} class="form-control" name="update_time" id="update_time" placeholder="Enter ...">--%>
                                    <%--<input type="hidden" type="text" value=${companyData.create_time} class="form-control" name="create_time" id="create_time" placeholder="Enter ...">--%>

                                    <input type="text" value=${companyData.company_id} class="form-control" name="company_id" id="company_id" placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="survey_time_id">survey_time_id</label>
                                    <input type="text" value=${companyData.survey_time_id} class="form-control"
                                           name="survey_time_id" id="survey_time_id"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="init_people">init_people</label>
                                    <input type="text" value=${companyData.init_people} class="form-control"
                                           name="init_people" id="init_people"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="cur_people">cur_people</label>
                                    <input type="text" value=${companyData.cur_people} class="form-control"
                                           name="cur_people" id="cur_people"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="reduce_type">reduce_type</label>
                                    <input type="text" value=${companyData.reduce_type} class="form-control"
                                           name="reduce_type" id="reduce_type"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="reason1">reason1</label>
                                    <input type="text" value=${companyData.reason1} class="form-control" name="reason1"
                                           id="reason1"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="reason1_explain">reason1_explain</label>
                                    <input type="text" value=${companyData.reason1_explain} class="form-control"
                                           name="reason1_explain" id="reason1_explain"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="reason2">reason2</label>
                                    <input type="text" value=${companyData.reason2} class="form-control" name="reason2"
                                           id="reason2"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="reason2_explain">reason2_explain</label>
                                    <input type="text" value=${companyData.reason2_explain} class="form-control"
                                           name="reason2_explain" id="reason2_explain"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="reason3">reason3</label>
                                    <input type="text" value=${companyData.reason3} class="form-control" name="reason3"
                                           id="reason3"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="reason3_explain">reason3_explain</label>
                                    <input type="text" value=${companyData.reason3_explain} class="form-control"
                                           name="reason3_explain" id="reason3_explain"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <label for="other_reason">other_reason</label>
                                    <input type="text" value=${companyData.other_reason} class="form-control"
                                           name="other_reason" id="other_reason"
                                           placeholder="Enter ...">
                                </div>

                                <!-- select -->
                                <div class="form-group">
                                    <label>Select</label>
                                    <select class="form-control" name="status">
                                        <option value="-1">审核不通过</option>
                                        <option value="0">等待审核</option>
                                        <option value="1">审核通过</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="not_pass_reason">not_pass_reason</label>
                                    <input type="text" value=${companyData.not_pass_reason} class="form-control"
                                           name="not_pass_reason" id="not_pass_reason"
                                           placeholder="Enter ...">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">提交修改</button>
                                </div>
                            </form>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div><!--/.col (right) -->
            </div>   <!-- /.row -->
        </section>
    </div>


</div>


<!-- /.主要内容结束 -->
<jsp:include page="../../footer.jsp" flush="true"></jsp:include>
</body>
</html>
