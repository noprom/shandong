<%--
  Created by IntelliJ IDEA.
  User: syc
  Date: 2016/3/14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.domain.Auth" %>
<%@ page import="com.shandong.human.resource.common.AuthTree" %>
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
    <section class="content-header"><h1>修改权限</h1></section>

    <section class="content">
        <div class="row">
            <form role="form">
                <c:forEach items="${existAuth}" var="v">
                    <c:choose>
                        <c:when test="${v.level eq 1}">
                            <div class="col-md-12">
                        <div class="box box-primary">

                                <div class="box-header with-border">
                                    <h3 class="box-title">
                                        <input type="checkbox"> ${v.name}
                                    </h3>
                                </div>


                        <div class="box-body">
                            <div class="form-group">
                                <div class="row">
                                    <c:choose>
                                        <c:when test="${v.level eq 2}">
                                            <div class="col-md-1">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox">
                                                            ${v.name}
                                                    </label>
                                                </div>
                                            </div>
                                        </c:when>
                                    </c:choose>
                                </div>
                            </div>
                        </div>

                    </div>
                    </div>
                        </c:when>
                    </c:choose>
                </c:forEach>
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary">提 交</button>
                </div>
            </form>
        </div>
    </section>
    </div>


    <jsp:include page="../../footer.jsp" flush="true"></jsp:include>
    <script>
        $(function () {

        });
    </script>
</div>
</body>
</html>
