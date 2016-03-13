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

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-6">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">${companyDetail.name} 详情</h3>
                        </div>
                        <div class="box-body">
                            <h4>ID</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled" value="${companyDetail.id}">
                            </div>
                            <br>
                            <h4>PROVINCE_ID</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.province_id}">
                            </div>
                            <br>
                            <h4>CITY_ID</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.city_id}">
                            </div>
                            <br>
                            <h4>AREA_ID</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.area_id}">
                            </div>
                            <br>
                            <h4>ADDRESS</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.address}">
                            </div>
                            <br>
                            <h4>CODE</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.code}">
                            </div>
                            <br>
                            <h4>COMPANY NAME</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.name}">
                            </div>
                            <br>
                            <h4>CONTACT</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.contact}">
                            </div>
                            <br>
                            <h4>ZIPCODE</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.zipcode}">
                            </div>
                            <br>
                            <h4>PHONE</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.phone}">
                            </div>
                            <br>
                            <h4>FAX</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.fax}">
                            </div>
                            <br>
                            <h4>E-mail</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input type="text" class="form-control" disabled="disabled"
                                       value="${companyDetail.email}">
                            </div>
                            <br>
                            <h4>BUSINESS</h4>
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <textarea class="form-control" rows="3" disabled>${companyDetail.business}</textarea>
                            </div>
                            <br>
                        </div><!-- /input-group -->
                    </div><!-- /.box-body -->
                </div><!-- /.box -->

                <div class="col-md-6">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Company Data Of ${companyDetail.name}</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>INITIAL TIME PEOPLE</th>
                                    <th>CURRENT TIME PEOPLE</th>
                                    <th>DETAIL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${companyDataList}" var="v">
                                    <tr>
                                        <td>${v.init_people}</td>
                                        <td>${v.cur_people}</td>
                                        <td><a href="<%=basePath%>sys/record/companyDataDetail/${v.id}"
                                               class="btn btn-primary">详情</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>INITIAL TIME PEOPLE</th>
                                    <th>CURRENT TIME PEOPLE</th>
                                    <th>DETAIL</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>
            </div>
        </section><!-- /.content -->


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
                        <span class="bg-red">
                          ${v.create_time}
                        </span>
                                    </li>
                                    <!-- /.timeline-label -->
                                    <!-- timeline item -->
                                    <li>
                                        <i class="fa fa-envelope bg-blue"></i>
                                        <div class="timeline-item">
                                            <span class="time"><i class="fa fa-clock-o"></i> 12:05</span>
                                            <h3 class="timeline-header"><a href="#">Support Team</a> sent you an email
                                            </h3>
                                            <div class="timeline-body">
                                                Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
                                                weebly ning heekya handango imeem plugg dopplr jibjab, movity
                                                jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
                                                quora plaxo ideeli hulu weebly balihoo...
                                            </div>
                                            <div class="timeline-footer">
                                                <a class="btn btn-primary btn-xs">Read more</a>
                                                <a class="btn btn-danger btn-xs">Delete</a>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- END timeline item -->
                                    <!-- timeline item -->
                                    <li>
                                        <i class="fa fa-user bg-aqua"></i>
                                        <div class="timeline-item">
                                            <span class="time"><i class="fa fa-clock-o"></i> 5 mins ago</span>
                                            <h3 class="timeline-header no-border"><a href="#">Sarah Young</a> accepted
                                                your friend request</h3>
                                        </div>
                                    </li>
                                    <!-- END timeline item -->
                                    <!-- timeline item -->
                                    <li>
                                        <i class="fa fa-comments bg-yellow"></i>
                                        <div class="timeline-item">
                                            <span class="time"><i class="fa fa-clock-o"></i> 27 mins ago</span>
                                            <h3 class="timeline-header"><a href="#">Jay White</a> commented on your post
                                            </h3>
                                            <div class="timeline-body">
                                                Take me to your leader!
                                                Switzerland is small and neutral!
                                                We are more like Germany, ambitious and misunderstood!
                                            </div>
                                            <div class="timeline-footer">
                                                <a class="btn btn-warning btn-flat btn-xs">View comment</a>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- END timeline item -->
                                    <!-- timeline time label -->
                                    <li class="time-label">
                        <span class="bg-green">
                          ${v.update_time}
                        </span>
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

