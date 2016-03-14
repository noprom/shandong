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
                Company Detail
            </h1>
        </section>


        <section class="content">

            <div class="row">
                <div class="col-md-3">
                    <!-- About Me Box -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Information of ${companyDetail.name}</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <strong><i class="fa fa-book margin-r-5"></i>ID</strong>
                            <p class="text-muted">${companyDetail.id}</p>
                            <hr>

                            <strong><i class="fa fa-map-marker margin-r-5"></i>PROVINCE,CITY,AREA ID</strong>
                            <p class="text-muted">${companyDetail.province_id},${companyDetail.city_id},${companyDetail.area_id}</p>
                            <hr>

                            <strong><i class="fa fa-map-marker margin-r-5"></i>ADDRESS</strong>
                            <p class="text-muted">${companyDetail.address}</p>
                            <hr>

                            <strong><i class="fa fa-book margin-r-5"></i>ZIP_CODE</strong>
                            <p class="text-muted">${companyDetail.zipcode}</p>
                            <hr>

                            <strong><i class="fa fa-book margin-r-5"></i>CODE</strong>
                            <p class="text-muted">${companyDetail.code}</p>
                            <hr>

                            <strong><i class="fa fa-book margin-r-5"></i>COMPANY NAME</strong>
                            <p class="text-muted">${companyDetail.name}</p>
                            <hr>

                            <strong><i class="fa fa-book margin-r-5"></i>CONTACT</strong>
                            <p class="text-muted">${companyDetail.contact}</p>
                            <hr>

                            <strong><i class="fa fa-book margin-r-5"></i>PHONE</strong>
                            <p class="text-muted">${companyDetail.phone}</p>
                            <hr>

                            <strong><i class="fa fa-book margin-r-5"></i>FAX</strong>
                            <p class="text-muted">${companyDetail.fax}</p>
                            <hr>

                            <strong><i class="fa fa-book margin-r-5"></i>E-mail</strong>
                            <p class="text-muted">${companyDetail.email}</p>
                            <hr>

                            <strong><i class="fa fa-book margin-r-5"></i>BUSINESS</strong>
                            <p class="text-muted">${companyDetail.business}</p>
                            <hr>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div><!-- /.col -->
                <div class="col-md-9">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#timeline" data-toggle="tab">Timeline</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="active tab-pane" id="timeline">
                                <!-- The timeline -->
                                <ul class="timeline timeline-inverse">
                                    <!-- timeline time label -->
                                    <c:forEach items="${companyDataList}" var="v">
                                        <li class="time-label">
                                            <span class="bg-red">${v.create_time}</span>
                                        </li>
                                        <!-- /.timeline-label -->
                                        <!-- timeline item -->
                                        <li>
                                            <i class="fa fa-envelope bg-blue"></i>
                                            <div class="timeline-item">
                                                <span class="time"><i class="fa fa-clock-o"></i></span>
                                                <h3 class="timeline-header"><a href="#">${companyDetail.name}</a>Data
                                                </h3>
                                                <div class="timeline-body">
                                                    <strong>ID : </strong>${v.id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <strong>PID : </strong>${v.pid}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <strong>COMPANY_ID : </strong>${v.company_id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <strong>SURVEY_TIME_ID : </strong>${v.survey_time_id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <strong>INITIAL PEOPLE : </strong>${v.init_people}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <strong>CURRENT PEOPLE : </strong>${v.cur_people}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <strong>OTHER REASON : </strong>${v.other_reason}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <strong>REDUCE TYPE : </strong>${v.reduce_type}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <strong>REASON ONE : </strong>${v.reason1}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <strong>REASON ONE EXPLAIN : </strong>${v.reason1_explain}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <strong>REASON TWO : </strong>${v.reason2}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <strong>REASON TWO EXPLAIN : </strong>${v.reason2_explain}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <strong>REASON THREE : </strong>${v.reason3}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <strong>REASON THREE EXPLAIN : </strong>${v.reason3_explain}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <strong>STATUS : </strong>${v.status}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(状态:-1:审核不通过,0:等待审核,1:审核通过)
                                                    <br>
                                                    <strong>NOT_PASS_REASON: </strong>${v.not_pass_reason}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </div>
                                                <div class="timeline-footer">
                                                </div>
                                            </div>
                                        </li>
                                        <!-- END timeline item -->
                                        <!-- timeline item -->
                                        <li class="time-label">
                                            <span class="bg-green">${v.update_time}</span>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div><!-- /.tab-pane -->
                        </div><!-- /.tab-content -->
                    </div><!-- /.nav-tabs-custom -->
                </div><!-- /.col -->
            </div><!-- /.row -->

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

