<%--
  Created by IntelliJ IDEA.
  User: Tom
  Date: 2016/3/14
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.shandong.human.resource.domain.SurveyTime" %>
<%@ page import="com.shandong.human.resource.domain.Area" %>
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
                数据填报
                <%--<small>table</small>--%>
            </h1>
            <ol class="breadcrumb">
                <li><a href="<%=basePath%>"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li>企业</li>
                <li class="active">数据填报</li>
            </ol>
        </section>

        <!-- Main content -->
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"></h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" id="left-form">
                        <div class="box-body">
                            <div class="form-group">
                                <label>建档期就业人数</label>
                                <input class="form-control" type="text" id="init_people" name="init_people">
                            </div>
                            <%--<form>--%>
                            <div class="form-group">
                                <label>调查期就业人数</label>
                                <input class="form-control" type="text" id="cur_people" name="cur_people">
                            </div>

                            <div class="form-group">
                                <label>其它原因</label>
                                <textarea style=" height: 64px;" class="form-control" rows="3" id="other_reason">
                                </textarea>
                            </div><!-- /.form-group -->
                            <div class="form-group">
                                <label>就业人数减少类型</label>
                                <input class="form-control" type="text" id="reduce_type" name="reduce_type">
                            </div>
                            <div class="form-group">
                                <label>主要原因</label>
                                <input class="form-control" type="text" id="reason1" name="reason1">
                            </div>
                            <div class="form-group">
                                <label>主要原因说明</label>
                                <textarea style="height: 64px;" class="form-control" rows="3" id="reason1_explain">
                                </textarea>
                            </div><!-- /.form-group -->
                        </div><!-- /.box-body -->
                    </form>
                </div><!-- /.content -->
            </div><!--/.col (left) -->
            <!-- right column -->
            <div class="col-md-6">
                <!-- Horizontal Form -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"></h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" id="add-form">
                        <div class="box-body">

                            <div class="form-group">
                                <label>次要原因</label>
                                <input class="form-control" type="text" id="reason2" name="reason2">
                            </div>

                            <div class="form-group">
                                <label>次要原因说明</label>
                                <textarea style="height: 64px;" class="form-control" rows="3" id="reason2_explain">
                                </textarea>
                            </div><!-- /.form-group -->
                            <div class="form-group">
                                <label>第三原因</label>
                                <input class="form-control" type="text" id="reason3" name="reason3">
                            </div>

                            <div class="form-group">
                                <label>第三原因说明</label>
                                <textarea style="height: 64px;" class="form-control" rows="3" id="reason3_explain">
                                </textarea>
                            </div><!-- /.form-group -->

                        </div><!-- /.box-body -->
                    </form>
                </div><!-- /.content -->
            </div><!--/.col (right) -->
        </div>
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
            alert("提交成功");
                var postUrl = "<%=basePath%>home/company/add/submit";
                $.ajax({
                    url: postUrl,
                    data: $("#add-form").serialize(),
                    async:false,
                    type: 'POST',
                    dataType: "json",
                    success: function (data) {
                        if(data.success=="success")
                        {
                            alert("提交成功");
//                            提交成功时返回到主页
                            window.location.href = "<%=basePath%>index";
                        }
                        else
                        {
                            alert("提交失败");
                            window.location.href = "<%=basePath%>home/company/add";
                        }

                }});

        }

        function isEmpty(str) {
            if (!str || $.trim(str).length <= 0)
                return true;
            return false;
        }


        function cityChange()
        {
            var areaBox = document.getElementById("area_id");
            var obj=document.getElementById("city_id");
            var index=obj.selectedIndex; //序号，取当前选中选项的序号
            var str = obj.options[index].value;
            var str1="<%=basePath%>home/company/add/"+str;

            $.ajax({
                type: 'get',

                url: str1 ,
                async:false,
                data: {} ,
                dataType: 'json',

                success:function(data) {
                   //alert(data[0].id);
                    areaBox.options.length=0;
                    for (var i = 0; i < data.length; i++)
                        {
                            areaBox.add(new Option(data[i].name,data[i].id));
                        }
                    //window.location.href = "<%=basePath%>home/company/add";
                },
                error:function(boj,info){
                    alert(info);}
            });

        }

    </script>
</body>
</html>