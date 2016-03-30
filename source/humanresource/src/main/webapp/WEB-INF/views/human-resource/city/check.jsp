<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.domain.SurveyTime" %>
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
    <jsp:include page="../head.jsp" flush="true"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="../header.jsp" flush="true"></jsp:include>

    <jsp:include page="../left.jsp" flush="true"></jsp:include>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                市审核
                <small>审核</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>主页</a></li>
                <li><a href="#">市审核</a></li>
                <li class="active">审核</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">审核</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <form role="form" id="check-form">
                                <div class="form-group" style="display: none">
                                    <label>ID</label>
                                    <input name="cdid" value="${check.id}">
                                </div>
                                <div class="form-group">
                                    <label>ID</label>
                                    <input disabled="disabled" value="${check.id}">
                                </div>
                                <div class="form-group">
                                    <label>PID</label>
                                    <input disabled="disabled" value="${check.pid}">
                                </div>
                                <div class="form-group">
                                    <label>公司ID</label>
                                    <input disabled="disabled" value="${check.company_id}">
                                </div>
                                <div class="form-group">
                                    <label>初始人数</label>
                                    <input  disabled="disabled" value="${check.init_people}">
                                </div>
                                <div class="form-group">
                                    <label>当前人数</label>
                                    <input  disabled="disabled" value="${check.cur_people}">
                                </div>
                                <div class="form-group">
                                    <label>其它原因</label>
                                    <input  disabled="disabled" value="${check.other_reason}">
                                </div>
                                <div class="form-group">
                                    <label>减少类型</label>
                                    <input disabled="disabled" value="${check.reduce_type}">
                                </div>
                                <div class="form-group">
                                    <label>原因1</label>
                                    <input disabled="disabled" value="${check.reason1}">
                                </div>
                                <div class="form-group">
                                    <label>原因1解释</label>
                                    <input disabled="disabled" value="${check.reason1_explain}">
                                </div>

                                <div class="form-group">
                                    <label>原因2</label>
                                    <input disabled="disabled" value="${check.reason2}">
                                </div>
                                <div class="form-group">
                                    <label>原因2解释</label>
                                    <input disabled="disabled" value="${check.reason2_explain}">
                                </div>

                                <div class="form-group">
                                    <label>原因3</label>
                                    <input disabled="disabled" value="${check.reason3}">
                                </div>
                                <div class="form-group">
                                    <label>原因3解释</label>
                                    <input disabled="disabled" value="${check.reason3_explain}">
                                </div>
                                <div class="form-group">
                                    <label>状态</label>
                                    <input disabled="disabled" value="${check.status}">
                                </div>
                                <div class="form-group">
                                    <label>创建时间</label>
                                    <input disabled="disabled" value="${check.create_time}">
                                </div>
                                <div class="form-group">
                                    <label>更新时间</label>
                                    <input disabled="disabled" value="${check.update_time}">
                                </div>

                                <div class="form-group">
                                    <label>是否通过</label>
                                    <select onchange="passChange()" class="form-control" style="width: 80%;" id="pass" name="pass">
                                        <option value="1">通过</option>
                                        <option value="-1">不通过</option>
                                    </select>
                                </div>
                                <div class="form-group" id="reason" style="display: none">
                                    <label>不通过原因</label>
                                    <input name="reason" class="form-control" style="width: 80%;">
                                    </select>
                                </div>
                                <div class="box-footer">
                                    <button type="button" onclick="onSubmit()" class="btn btn-primary">提交</button>
                                </div>
                            </form>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
    <jsp:include page="../footer.jsp" flush="true"></jsp:include>
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

        function passChange(){
            var passBox = document.getElementById("pass");
            var index = passBox.selectedIndex;
            var value = passBox.options[index].value;
            if(value==-1)
            {
                document.getElementById('reason').style.display = "";
            }
            else
            {
                document.getElementById('reason').style.display = "none";
            }
        }

        function  onSubmit()
        {
            //标题
//            var title = $("#addNews-form input[name = title]").val();
            //正文
//            var content = $("#addNews-form textarea[name = content]").val();

            //数据校验
//            if (isEmpty(title)) {
//                alert("标题不能为空");
//                return false;
//            } else if (isEmpty(content)) {
//                alert("正文不能为空");
//                return false;
//            } else {
            //var str=$("#add-form").serialize();
//            alert("提交成功");
            var postUrl = "<%=basePath%>city/check";
            $.ajax({
                url: postUrl,
                data: $("#check-form").serialize(),
                async:false,
                type: 'POST',
                dataType: "json",
                success: function (data) {
                    if(data.success=="success")
                    {
                        alert("提交成功");
                    }
                    else if(data.success=="exit")
                    {
                        alert("已经提交完毕，请勿重复提交！");
                    }
                },
                error: function(){
                    alert("服务器无法连接！");
                }
            });
        }
    </script>
</body>
</html>

