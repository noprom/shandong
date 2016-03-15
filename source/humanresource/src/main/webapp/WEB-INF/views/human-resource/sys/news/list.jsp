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


        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Responsive Hover Table</h3>
                        <div class="box-tools">
                            <div class="input-group" style="width: 150px;">
                                <input type="text" name="table_search" class="form-control input-sm pull-right"
                                       placeholder="Search">
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
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
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>

        <a href="<%=basePath%>sys/news/addjsp">
            <button type="button" class="form-control">添加</button>
        </a>

    </div>


    <!-- /.主要内容结束 -->
    <jsp:include page="../../footer.jsp" flush="true"></jsp:include>
</body>
</html>
