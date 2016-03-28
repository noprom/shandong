<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div class="content-wrapper" style="min-height: 976px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                图表分析
                <small>图表汇总</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Charts</a></li>
                <li class="active">ChartJS</li>
            </ol>
        </section>
        <div id="main" style="width: 830px;height:300px;"></div>

        <div class="col-md-12">
            <div id="shandong" style="width: 98%; height: 500px;border: 1px solid #ccc; padding: 10px;"></div>
        </div>


        <!-- Main content -->


    </div>

</div>


<!-- /.主要内容结束 -->
<jsp:include page="../../footer.jsp" flush="true"></jsp:include>
<jsp:include page="../../js.jsp" flush="true"></jsp:include>

<!-- page script -->
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    var seriesDataJson = [];
    <c:forEach items="${peopleOfEverySurveyTime}" var="v">
    seriesDataJson.push(${v.init_people});
    </c:forEach>
    var option = {
        title: {
            text: '查看企业的汇总数据'
        },
        tooltip: {},
        legend: {
            data: ['统计：根据不同的调查期显示出企业的汇总数据']
        },
        xAxis: {
            data: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
        },
        yAxis: {},
        series: [{
            name: '统计：根据不同的调查期显示出企业的汇总数据',
            type: 'bar',
            data: seriesDataJson
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

<script>

    var chart = echarts.init(document.getElementById('shandong'));

    option = {
        title: {
            text: '山东各市企业数量汇总',
            subtext: '纯属虚构',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: function (params,ticket,callback) {
                var res = '所选地区:' + params.name+'<br/>';
                res+='数量:'+params.value+'<br/>';
                res+='比例：'+params.data.proportion  + "%" + '<br/>';
                setTimeout(function (){callback(ticket, res);}, 120);
                return 'loading';
            }
        },
        legend: {
            orient: 'vertical',
            left: 'left',
        },
        visualMap: {
            min: 0,
            max: 8,
            left: 'left',
            top: 'bottom',
            text: ['高', '低'],           // 文本，默认为数值文本
            calculable: true
        },
        toolbox: {
            show: true,
            orient: 'vertical',
            left: 'right',
            top: 'center',
            feature: {
                dataView: {readOnly: false},
                restore: {},
                saveAsImage: {}
            }
        },
        series: [{
                name: '山东各市企业数量汇总',
                type: 'map',
                mapType: '山东',
                roam: false,
                label: {
                    normal: {
                        show: true
                    },
                    emphasis: {
                        show: true
                    }
                },
                data: [
                    <c:forEach var="v" items="${statisticsOfCompanyList}">
                    {name: "${v.city}", value: ${v.number}, proportion:${v.proportion}},
                    </c:forEach>
                ]
            }]
    };
    chart.setOption(option)
</script>

</body>
</html>
