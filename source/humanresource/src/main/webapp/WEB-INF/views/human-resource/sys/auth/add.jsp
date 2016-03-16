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
    <section class="content-header"><h1>新增后台菜单</h1></section>

    <section class="content">
        <div class="row">
            <div class="col-lg-6">
                <div class="box box-info">
                    <div class="box-body">
                        <form action="<%=basePath%>sys/auth/add/submit" role="form" method="post">

                            <div class="form-group">
                                <label>权限名称</label>
                                <input name="name" class="form-control" type="text" placeholder="请输入权限名称">
                            </div>

                            <div class="form-group">
                                <label>权限链接</label>
                                <input name="url" class="form-control" type="text" placeholder="请输入权限链接">
                            </div>

                            <% AuthTree _Auths=(AuthTree)request.getAttribute("existAuth"); %>
                            <div class="form-group">
                                <label>上级权限</label>
                                <select name="pid" class="form-control">
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
                                <input type="submit" class="btn btn-info" value="提交">
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
