<%--
  Created by IntelliJ IDEA.
  User: SYC
  Date: 2016/3/15
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
    <section class="content-header"><h1>新增后台菜单</h1></section>

    <section class="content">
        <div class="row">
            <div class="col-lg-6">
                <div class="box box-info">
                    <div class="box-body">
                        <form action="/home/auth/delete/submit" role="form" method="post">
                            <% AuthTree _Auths=(AuthTree)request.getAttribute("existAuth"); %>
                            <div class="form-group">
                                <label>选择权限</label>
                                <select name="id" class="form-control">
                                    <% List<Auth> authList= AuthTree.toList(_Auths);
                                        System.out.println("list_size:"+authList.size());
                                        for (Auth r:authList) {
                                            StringBuilder s = new StringBuilder();
                                            for(int i=0;i<r.getLevel();++i)
                                                s.append("&nbsp&nbsp&nbsp&nbsp");
                                            s.append('└').append(r.getName());
                                            int id = r.getId();
                                            %><option name="pid" value="<%= id%>"><%= s.toString()%></option><%
                                        }
                                    %>

                                </select>
                            </div>

                            <div class="form-group">
                                <input type="submit" class="btn btn-warning" value="确认删除">
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
</div>
</body>
</html>
