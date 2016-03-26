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

        <!-- Main content -->
        <section class="content">
            <div class="col-md-12">
                <div id="main" style="width: 830px;height:300px;"></div>
            </div>
            <div class="col-md-12">
                <div id="shandong" style="width: 98%; height: 500px;border: 1px solid #ccc; padding: 10px;"></div>
            </div>
            <div class="col-md-12">
                <div id="zhanbi" style="width: 830px;height:300px;"></div>
            </div>

        </section><!-- /.content -->
    </div>

</div>


<!-- /.主要内容结束 -->
<jsp:include page="../../footer.jsp" flush="true"></jsp:include>
<jsp:include page="../../js.jsp" flush="true"></jsp:include>

<!-- page script -->
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
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
            data: [
                ${peopleOfEverySurveyTime0},
                ${peopleOfEverySurveyTime1},
                ${peopleOfEverySurveyTime2},
                ${peopleOfEverySurveyTime3},
                ${peopleOfEverySurveyTime4},
                ${peopleOfEverySurveyTime5},
                ${peopleOfEverySurveyTime6},
                ${peopleOfEverySurveyTime7},
                ${peopleOfEverySurveyTime8},
                ${peopleOfEverySurveyTime9},
                ${peopleOfEverySurveyTime10},
                ${peopleOfEverySurveyTime11}]
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('zhanbi'));

    // 指定图表的配置项和数据
    option = {
        title : {
            text: '山东各市企业占比',
            subtext: '纯属虚构',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            x : 'center',
            y : 'bottom',
            data:['rose1','rose2','rose3','rose4','rose5','rose6','rose7','rose8']
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel']
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'山东各市企业占比',
                type:'pie',
                radius : [20, 110],
                roseType : 'area',
                data:[
                    {name: "济南", value:20},
                    {name: "青岛", value:5},
                    {name: "淄博", value:5},
                    {name: "枣庄", value:5},
                    {name: "东营", value:5},
                    {name: "烟台", value:5},
                    {name: "潍坊", value:5},
                    {name: "济宁", value:5},
                    {name: "泰安", value:5},
                    {name: "威海", value:5},
                    {name: "日照", value:5},
                    {name: "莱芜", value:5},
                    {name: "临沂", value:5},
                    {name: "德州", value:5},
                    {name: "聊城", value:5},
                    {name: "滨州", value:5},
                    {name: "菏泽", value:5}

                ]
            }
        ]
    };

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
            trigger: 'item'
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
        series: [
            {
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
                    {name: "济南市", value: 5},
                    {name: "青岛市", value: 5},
                    {name: "淄博市", value: 5},
                    {name: "枣庄市", value: 5},
                    {name: "东营市", value: 5},
                    {name: "烟台市", value: 5},
                    {name: "潍坊市", value: 5},
                    {name: "济宁市", value: 5},
                    {name: "泰安市", value: 5},
                    {name: "威海市", value: 5},
                    {name: "日照市", value: 5},
                    {name: "莱芜市", value: 5},
                    {name: "临沂市", value: 5},
                    {name: "德州市", value: 5},
                    {name: "聊城市", value: 5},
                    {name: "滨州市", value: 5},
                    {name: "菏泽市", value: 5}
                ]
            },

        ]
    };
    chart.setOption(option)
</script>

</body>
</html>
