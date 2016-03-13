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
    <jsp:include page="../head.jsp" flush="true"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="../header.jsp" flush="true"></jsp:include>

    <jsp:include page="../left.jsp" flush="true"></jsp:include>

    <!-- 主要内容开始 -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

        <!-- Main content -->
        <div class="form-group" style="align-content: center">
            <button type="button" class="form-control">添加</button>
        </div>

        <form action="#" method="post">

            <div class="form-group">
                <input type="email" class="form-control" name="emailto" placeholder="Email to:">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="subject" placeholder="Subject">
            </div>
            <div>
                <textarea class="textarea" placeholder="Message"
                          style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
            </div>
            <div class="form-group" style="align-content: center">
                <button type="button" class="form-control">修改</button>
            </div>
            <div class="form-group" style="align-content: center">
                <button type="button" class="form-control">删除</button>
            </div>

        </form><!-- /.content -->

        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Responsive Hover Table</h3>
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
                                <th>User</th>
                                <th>Date</th>
                                <th>Status</th>
                                <th>Reason</th>
                            </tr>
                            <c:forEach items="${newsList}" var="v">
                            <tr>
                                <td>${v.id}</td>
                                <td>${v.title}</td>
                                <td>${v.content}</td>
                                <td><fmt:formatDate value="${v.createTime}" type="both" pattern="yyyy-MM-dd HH:mm"/></td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>
    </div>


    <!-- /.主要内容结束 -->
    <jsp:include page="../footer.jsp" flush="true"></jsp:include>
</body>
</html>
