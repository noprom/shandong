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
    <!-- Content Header (Page header) -->
    <div class="content-wrapper">
        <div class="col-xs-12">
            <!-- Main content -->
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Responsive Hover Table</h3>
                </div>
                <div class="box-body table-responsive no-padding">
                    <form class="noo-ajax-register-form form-horizontal" id="addNews-form">
                        <!-- text input -->
                        <div class="form-group">
                            <input type="text" name="title" class="form-control" required placeholder="Title ...">
                        </div>

                        <!-- textarea -->
                        <div class="form-group">
                    <textarea class="form-control" name="content" rows="10" required
                              placeholder="Content ..."></textarea>
                        </div>
                        <div class="form-group text-center">
                            <button type="button" class="btn" id="add-btn">添加</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../footer.jsp" flush="true"></jsp:include>
</div>


<!-- /.主要内容结束 -->
<jsp:include page="../../js.jsp" flush="true"></jsp:include>
<script type="text/javascript">
    jQuery('document').ready(function ($) {

        //添加通知
        $("#add-btn").on('click', function () {

            addNews();
        });

        /**
         * 添加通知
         * @returns {boolean}
         */
        function addNews() {

            //标题
            var title = $("#addNews-form input[name = title]").val();
            //正文
            var content = $("#addNews-form textarea[name = content]").val();

            //数据校验
            if (isEmpty(title)) {
                alert("标题不能为空");
                toastr.error("标题不能为空");
                return false;
            } else if (isEmpty(content)) {
                alert("正文不能为空");
                toastr.error("正文不能为空");
                return false;
            } else {
                var postUrl = "<%=basePath%>sys/news/add";
                $.ajax({
                    url: postUrl,
                    data: $("#addNews-form").serialize(),
                    method: "get",
                    dataType: "json",
                    success: function (data) {
                        if (data.status == 'SUCCESS') {
                            toastr.success(data.info);
                            alert("添加成功");
                            window.location.href = "<%=basePath%>sys/news";
                        } else {
                            alert("添加失败");
                            toastr.error(data.info);
                            window.location.href = "<%=basePath%>sys/news";
                            return false;
                        }
                    }

                });
            }

        }

        function isEmpty(str) {
            if (!str || $.trim(str).length <= 0)
                return true;
            return false;
        }
    });
</script>
</body>
</html>
