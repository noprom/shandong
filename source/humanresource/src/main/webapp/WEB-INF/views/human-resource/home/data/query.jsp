<%--
  Created by IntelliJ IDEA.
  User: Tom
  Date: 2016/3/20
  Time: 20:31
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
                数据查询
                <%--<small>table</small>--%>
            </h1>
            <ol class="breadcrumb">
                <li><a href="<%=basePath%>"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li>企业</li>
                <li class="active">数据查询</li>
            </ol>
        </section>

        <div class="box-body">
            <div class="dataTables_wrapper form-inline dt-bootstrap" id="example1_wrapper">

                <div class="row">
                    <div class="col-sm-12">
                        <table aria-describedby="example1_info" role="grid" id="example1" class="table table-bordered table-striped dataTable">
                <thead>
                <tr role="row">
                    <th aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 181px;" colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting_asc">调查开始时间</th>
                    <th aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 181px;" colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting_asc">调查结束时间</th>
                    <th aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 181px;" colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting_asc">建档期就业人数</th>
                    <th aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 181px;" colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting_asc">调查期就业人数</th>
                    <th aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 181px;" colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting_asc">其他原因</th>
                </thead>
                <tbody>
                <c:forEach items="${companyDataQuaryLists}" var="v">
                    <tr class="odd" role="row">
                        <td class="sorting_1">${v.start_time}</td>
                        <td>${v.end_time}</td>
                        <td>${v.init_people}</td>
                        <td>${v.cur_people}</td>
                        <td>${v.other_reason}</td>
                    </tr>
                </c:forEach>
                </tbody>
                <tfoot>
                <tr><th colspan="1" rowspan="1">调查开始时间</th>
                    <th colspan="1" rowspan="1">调查结束时间</th>
                    <th colspan="1" rowspan="1">建档期就业人数</th>
                    <th colspan="1" rowspan="1">调查期就业人数</th>
                    <th colspan="1" rowspan="1">其它原因</th>
                </tr>
                </tfoot>
            </table>
                    </div>
                </div>

            </div>
        </div><!-- /.box-body -->

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