<%--
  Created by IntelliJ IDEA.
  User: syc
  Date: 2016/3/19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.util.Pager" %>
<%@ page import="com.shandong.human.resource.domain.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    <div class="content-wrapper" style="min-height: 916px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                用户列表
                <small>系统用户</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Simple</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">用户列表</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <tbody>
                                <tr>
                                    <th>ID</th>
                                    <th>角色名</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                <c:forEach items="${pager.data}" var="v">
                                <tr>
                                    <td>${v.id}</td>
                                    <td>${v.name}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${v.status eq '-1'}">
                                                <span class="label label-success">BAN</span>
                                            </c:when>
                                            <c:when test="${v.status eq '1'}">
                                                <span class="label label-info">SAFE</span>
                                            </c:when>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <a href="<%=basePath%>sys/role/delete?id=${v.id}">删除</a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="<%=basePath%>sys/authRole/edit?role_id=${v.id}">更改权限</a>
                                    </td>
                                    </c:forEach>
                                </tr>
                                </tbody>
                            </table>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h3>共${pager.count}条记录&nbsp;${pager.currentPage}/${pager.totalPage}</h3>
                                </div>
                                <div class="col-sm-9">
                                    <ul class="pagination pull-right">
                                        <c:if test="${pager.currentPage - 2 gt 2}">
                                            <li class="paginate_button previous">
                                                <a href="<%=basePath%>sys/role?pageNum=${pager.currentPage - 1}">上一页</a>
                                            </li>
                                            <li class="paginate_button "><a href="<%=basePath%>sys/role?pageNum=1">1</a>
                                            </li>
                                            <li class="paginate_button"><a>...</a></li>
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage - 2}">${pager.currentPage - 2}</a>
                                            </li>
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage - 1}">${pager.currentPage - 1}</a>
                                            </li>
                                        </c:if>

                                        <c:if test="${pager.currentPage == 4}">
                                            <li class="paginate_button "><a href="<%=basePath%>sys/role?pageNum=1">1</a>
                                            </li>
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage - 2}">${pager.currentPage - 2}</a>
                                            </li>
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage - 1}">${pager.currentPage - 1}</a>
                                            </li>
                                        </c:if>

                                        <c:if test="${pager.currentPage - 2 lt 2}">
                                            <c:if test="${pager.currentPage == 3}">
                                                <li class="paginate_button "><a
                                                        href="<%=basePath%>sys/role?pageNum=1">1</a></li>
                                                <li class="paginate_button "><a
                                                        href="<%=basePath%>sys/role?pageNum=2">2</a></li>
                                            </c:if>
                                            <c:if test="${pager.currentPage == 2}">
                                                <li class="paginate_button "><a
                                                        href="<%=basePath%>sys/role?pageNum=1">1</a></li>
                                            </c:if>
                                        </c:if>
                                        <%--当前页码--%>
                                        <li class="paginate_button active">
                                            <a href="#">${pager.currentPage}</a>
                                        </li>
                                        <%--当前页码--%>

                                        <c:if test="${pager.currentPage + 3 lt pager.totalPage}">
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage + 1}">${pager.currentPage + 1}</a>
                                            </li>
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage + 2}">${pager.currentPage + 2}</a>
                                            </li>
                                            <li class="paginate_button"><a>...</a></li>
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.totalPage}">${pager.totalPage}</a>
                                            </li>
                                            <li class="paginate_button next"><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage + 1}">下一页</a>
                                            </li>
                                        </c:if>

                                        <c:if test="${pager.currentPage + 3 == pager.totalPage}">
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage + 1}">${pager.currentPage + 1}</a>
                                            </li>
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage + 2}">${pager.currentPage + 2}</a>
                                            </li>
                                            <li class="paginate_button "><a
                                                    href="<%=basePath%>sys/role?pageNum=${pager.currentPage + 3}">${pager.currentPage + 3}</a>
                                            </li>
                                        </c:if>

                                        <c:if test="${pager.currentPage + 3 gt pager.totalPage}">
                                            <c:if test="${pager.currentPage == pager.totalPage -1}">
                                                <li class="paginate_button "><a
                                                        href="<%=basePath%>sys/role?pageNum=${pager.currentPage + 1}">${pager.currentPage + 1}</a>
                                                </li>
                                            </c:if>
                                            <c:if test="${pager.currentPage == pager.totalPage -2}">
                                                <li class="paginate_button "><a
                                                        href="<%=basePath%>sys/role?pageNum=${pager.currentPage + 1}">${pager.currentPage + 1}</a>
                                                </li>
                                                <li class="paginate_button "><a
                                                        href="<%=basePath%>sys/role?pageNum=${pager.currentPage + 2}">${pager.currentPage + 2}</a>
                                                </li>
                                            </c:if>
                                        </c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.box -->
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">新增角色</h3>
                        </div>
                        <div class="box-body">
                            <form class="form-horizontal" role="form" action="<%= basePath%>sys/role/add" method="post">
                                <div class="row">
                                    <div class="col-md-10">
                                        <div class="col-lg-4 form-group">
                                            <lable class="col-lg-4 control-label" for="name">角色名</lable>
                                            <div class="col-sm-8">
                                                <input id="name" class="form-control" type="text" name="name" placeholder="角色名">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <input type="submit" class="btn btn-adn pull-left" value="添加">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- /.content -->
    </div>

    <jsp:include page="../../footer.jsp" flush="true"></jsp:include>
    <script>
        $(function () {

        });
    </script>
</div>
</body>
</html>