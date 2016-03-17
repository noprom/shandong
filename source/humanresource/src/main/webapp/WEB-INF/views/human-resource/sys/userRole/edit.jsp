<%--
  Created by IntelliJ IDEA.
  User: syc
  Date: 2016/3/14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.domain.Auth" %>
<%@ page import="com.shandong.human.resource.common.AuthTree" %>
<%@ page import="com.shandong.human.resource.domain.AuthRole" %>
<%@ page import="com.shandong.human.resource.domain.Role" %>
<%@ page import="com.shandong.human.resource.domain.UserRole" %>
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
                <div class = "col-lg-8">
                    <div class="box box-info">
                        <div class="box-body">
                            <form action="" role="form" method="post">
                                <%
                                    Integer user_id = (Integer) request.getAttribute("user_id");
                                    List<Role> allRole = (List<Role>) request.getAttribute("allRole");
                                    List<UserRole> hasRole = (List<UserRole>) request.getAttribute("hasRole");
                                %>
                                <div class="form-group">
                                    <input type="hidden" value="<%= user_id %>" name="user_id">
                                </div>

                                <%
                                    int hasRoleSize = hasRole.size();
                                    for ( Role r: allRole) {
                                        int i;
                                        for(i=0;i<hasRoleSize&&hasRole.get(i).getRole_id()!=r.getId();++i);
                                        %>
                                        <div class="checkbox">
                                            <input type="checkbox" name="roles" value="<%= r.getId()%>"
                                                <%
                                                if(i<hasRoleSize){
                                                    %>checked="checked"<%
                                                }
                                                %>
                                            >
                                        </div>
                                        <%
                                    }
                                %>

                                <div class="form-group">
                                    <input type="submit" class="btn-sm btn-info">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
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
