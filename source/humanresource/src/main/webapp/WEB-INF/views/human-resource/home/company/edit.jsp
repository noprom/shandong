<%--
  Created by IntelliJ IDEA.
  User: Tom
  Date: 2016/3/14
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
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
                企业信息录入
                <small>table</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Data tables</li>
            </ol>
        </section>

        <!-- Main content -->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title"></h3>
            </div><!-- /.box-header -->
            <!-- form start -->
            <form role="form">
                <div class="box-body">
                    <div class="form-group">
                        <label>省份</label>
                        <select aria-hidden="true" tabindex="-1" class="form-control select2 select2-hidden-accessible" disabled="" style="width: 100%;" name="province">
                            <option selected="selected">山东省</option>
                            <option>山东省</option>
                        </select>
                    </div>
                    <%--<form>--%>
                    <div class="form-group">
                        <label>城市</label>

                        <select aria-hidden="true" tabindex="-1" class="form-control select2 select2-hidden-accessible" style="width: 100%;" name="city">
                            <option selected="selected">青岛市</option>
                            <c:forEach items="${editResult}" var="v">
                            <option>${v.name}</option>
                            </c:forEach>
                        </select>

                    </div><!-- /.form-group -->
                    <div class="form-group">
                        <label>区域</label>
                        <select onchange="cityChange()" aria-hidden="true" tabindex="-1" class="form-control select2 select2-hidden-accessible" style="width: 100%;" name="area">
                            <option selected="selected"></option>
                            <option>Alaska</option>
                            <option>California</option>
                            <option>Delaware</option>
                            <option>Tennessee</option>
                            <option>Texas</option>
                            <option>Washington</option>
                        </select>
                    </div><!-- /.form-group -->
                    <div class="form-group">
                        <label>联系地址</label>
                        <select aria-hidden="true" tabindex="-1" class="form-control select2 select2-hidden-accessible" style="width: 100%;" name="address">
                            <option selected="selected"></option>
                            <option>Alaska</option>
                            <option>California</option>
                            <option>Delaware</option>
                            <option>Tennessee</option>
                            <option>Texas</option>
                            <option>Washington</option>
                        </select>
                    </div><!-- /.form-group -->

                    <div class="form-group">
                        <label>组织机构代码</label>
                        <input class="form-control" placeholder="" type="text" id="code">
                    </div>
                    <div class="form-group">
                        <label>企业名称</label>
                        <input class="form-control" placeholder="" type="text" id="name">
                    </div>
                    <div class="form-group">
                        <label>主要经营业务</label>
                        <input class="form-control" placeholder="" type="text" id="business">
                    </div>
                    <div class="form-group">
                        <label>联系人</label>
                        <input class="form-control" placeholder="" type="text" id="contact">
                    </div>
                    <div class="form-group">
                        <label>邮政编码</label>
                        <input class="form-control" placeholder="" type="text" id="zipcode">
                    </div>
                    <div class="form-group">
                        <label>联系电话</label>
                        <input class="form-control" placeholder="" type="text" id="phone">
                    </div>
                    <div class="form-group">
                        <label>传真</label>
                        <input class="form-control" placeholder="" type="text" id="fax">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">EMAIL</label>
                        <input class="form-control" id="email" placeholder="" type="email">
                    </div>

                </div><!-- /.box-body -->

                <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div><!-- /.content -->
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
        function cityChange()
        {
            window.location.href = "<%=basePath%>sys/news";
        }

    </script>
</body>
</html>