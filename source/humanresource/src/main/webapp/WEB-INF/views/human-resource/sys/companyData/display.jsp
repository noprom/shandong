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
            <div class="row">
                <div class="col-md-12">
                    <!-- AREA CHART -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">月份变化图</h3>
                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                                <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="chart">
                                <canvas id="areaChart" style="height: 250px; width: 475px;" width="950"
                                        height="500"></canvas>
                            </div>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->


                </div><!-- /.col (LEFT) -->
            </div><!-- /.row -->
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
            max: 2500,
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
<script>

    $(function () {
        /* ChartJS
         * -------
         * Here we will create a few charts using ChartJS
         */

        //--------------
        //- AREA CHART -
        //--------------

        // Get context with jQuery - using jQuery's .get() method.
        var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
        // This will get the first returned node in the jQuery collection.
        var areaChart = new Chart(areaChartCanvas);
        var areaChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],

            datasets: [
                <%--<c:forEach items="peopleOfEverySurveyTime" var="v"></c:forEach>--%>
                {
                    label: "Electronics",
                    fillColor: "rgba(210, 214, 222, 1)",
                    strokeColor: "rgba(210, 214, 222, 1)",
                    pointColor: "rgba(210, 214, 222, 1)",
                    pointStrokeColor: "#c1c7d1",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(220,220,220,1)",
                    <%--data:[${peopleOfEverySurveyTime.init_people}]--%>
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
                }

//                {
//                    label: "Digital Goods",
//                    fillColor: "rgba(60,141,188,0.9)",
//                    strokeColor: "rgba(60,141,188,0.8)",
//                    pointColor: "#3b8bba",
//                    pointStrokeColor: "rgba(60,141,188,1)",
//                    pointHighlightFill: "#fff",
//                    pointHighlightStroke: "rgba(60,141,188,1)",
//                    data: [28, 48, 40, 19, 86, 27, 90]
//                }
            ]
        };

        var areaChartOptions = {
            //Boolean - If we should show the scale at all
            showScale: true,
            //Boolean - Whether grid lines are shown across the chart
            scaleShowGridLines: false,
            //String - Colour of the grid lines
            scaleGridLineColor: "rgba(0,0,0,.05)",
            //Number - Width of the grid lines
            scaleGridLineWidth: 1,
            //Boolean - Whether to show horizontal lines (except X axis)
            scaleShowHorizontalLines: true,
            //Boolean - Whether to show vertical lines (except Y axis)
            scaleShowVerticalLines: true,
            //Boolean - Whether the line is curved between points
            bezierCurve: true,
            //Number - Tension of the bezier curve between points
            bezierCurveTension: 0.3,
            //Boolean - Whether to show a dot for each point
            pointDot: false,
            //Number - Radius of each point dot in pixels
            pointDotRadius: 4,
            //Number - Pixel width of point dot stroke
            pointDotStrokeWidth: 1,
            //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
            pointHitDetectionRadius: 20,
            //Boolean - Whether to show a stroke for datasets
            datasetStroke: true,
            //Number - Pixel width of dataset stroke
            datasetStrokeWidth: 2,
            //Boolean - Whether to fill the dataset with a color
            datasetFill: true,
            //String - A legend template
            <%--legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].lineColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",--%>
            //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
            maintainAspectRatio: true,
            //Boolean - whether to make the chart responsive to window resizing
            responsive: true
        };

        //Create the line chart
        areaChart.Line(areaChartData, areaChartOptions);

        //-------------
        //- LINE CHART -
        //--------------
//        var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
//        var lineChart = new Chart(lineChartCanvas);
//        var lineChartOptions = areaChartOptions;
//        lineChartOptions.datasetFill = false;
//        lineChart.Line(areaChartData, lineChartOptions);

        //-------------
        //- PIE CHART -
        //-------------
        // Get context with jQuery - using jQuery's .get() method.
        <%--var pieChartCanvas = $("#pieChart").get(0).getContext("2d");--%>
        <%--var pieChart = new Chart(pieChartCanvas);--%>
        <%--var PieData = [--%>
        <%--{--%>
        <%--value: 90000,--%>
        <%--color: "#f56954",--%>
        <%--highlight: "#f56954",--%>
        <%--label: "Chrome"--%>
        <%--},--%>
        <%--{--%>
        <%--value: 500,--%>
        <%--color: "#00a65a",--%>
        <%--highlight: "#00a65a",--%>
        <%--label: "IE"--%>
        <%--},--%>
        <%--{--%>
        <%--value: 400,--%>
        <%--color: "#f39c12",--%>
        <%--highlight: "#f39c12",--%>
        <%--label: "FireFox"--%>
        <%--},--%>
        <%--{--%>
        <%--value: 600,--%>
        <%--color: "#00c0ef",--%>
        <%--highlight: "#00c0ef",--%>
        <%--label: "Safari"--%>
        <%--},--%>
        <%--{--%>
        <%--value: 300,--%>
        <%--color: "#3c8dbc",--%>
        <%--highlight: "#3c8dbc",--%>
        <%--label: "Opera"--%>
        <%--},--%>
        <%--{--%>
        <%--value: 100,--%>
        <%--color: "#d2d6de",--%>
        <%--highlight: "#d2d6de",--%>
        <%--label: "Navigator"--%>
        <%--}--%>
        <%--];--%>
        <%--var pieOptions = {--%>
        <%--//Boolean - Whether we should show a stroke on each segment--%>
        <%--segmentShowStroke: true,--%>
        <%--//String - The colour of each segment stroke--%>
        <%--segmentStrokeColor: "#fff",--%>
        <%--//Number - The width of each segment stroke--%>
        <%--segmentStrokeWidth: 2,--%>
        <%--//Number - The percentage of the chart that we cut out of the middle--%>
        <%--percentageInnerCutout: 50, // This is 0 for Pie charts--%>
        <%--//Number - Amount of animation steps--%>
        <%--animationSteps: 100,--%>
        <%--//String - Animation easing effect--%>
        <%--animationEasing: "easeOutBounce",--%>
        <%--//Boolean - Whether we animate the rotation of the Doughnut--%>
        <%--animateRotate: true,--%>
        <%--//Boolean - Whether we animate scaling the Doughnut from the centre--%>
        <%--animateScale: false,--%>
        <%--//Boolean - whether to make the chart responsive to window resizing--%>
        <%--responsive: true,--%>
        <%--// Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container--%>
        <%--maintainAspectRatio: true,--%>
        <%--//String - A legend template--%>
        <%--&lt;%&ndash;legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>"&ndash;%&gt;--%>
        <%--};--%>
        <%--//Create pie or douhnut chart--%>
        <%--// You can switch between pie and douhnut using the method below.--%>
        <%--pieChart.Doughnut(PieData, pieOptions);--%>

        //-------------
        //- BAR CHART -
        //-------------
        <%--var barChartCanvas = $("#barChart").get(0).getContext("2d");--%>
        <%--var barChart = new Chart(barChartCanvas);--%>
        <%--var barChartData = areaChartData;--%>
        <%--barChartData.datasets[1].fillColor = "#00a65a";--%>
        <%--barChartData.datasets[1].strokeColor = "#00a65a";--%>
        <%--barChartData.datasets[1].pointColor = "#00a65a";--%>
        <%--var barChartOptions = {--%>
        <%--//Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value--%>
        <%--scaleBeginAtZero: true,--%>
        <%--//Boolean - Whether grid lines are shown across the chart--%>
        <%--scaleShowGridLines: true,--%>
        <%--//String - Colour of the grid lines--%>
        <%--scaleGridLineColor: "rgba(0,0,0,.05)",--%>
        <%--//Number - Width of the grid lines--%>
        <%--scaleGridLineWidth: 1,--%>
        <%--//Boolean - Whether to show horizontal lines (except X axis)--%>
        <%--scaleShowHorizontalLines: true,--%>
        <%--//Boolean - Whether to show vertical lines (except Y axis)--%>
        <%--scaleShowVerticalLines: true,--%>
        <%--//Boolean - If there is a stroke on each bar--%>
        <%--barShowStroke: true,--%>
        <%--//Number - Pixel width of the bar stroke--%>
        <%--barStrokeWidth: 2,--%>
        <%--//Number - Spacing between each of the X value sets--%>
        <%--barValueSpacing: 5,--%>
        <%--//Number - Spacing between data sets within X values--%>
        <%--barDatasetSpacing: 1,--%>
        <%--//String - A legend template--%>
        <%--&lt;%&ndash;legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",&ndash;%&gt;--%>
        <%--//Boolean - whether to make the chart responsive--%>
        <%--responsive: true,--%>
        <%--maintainAspectRatio: true--%>
        <%--};--%>

        <%--barChartOptions.datasetFill = false;--%>
        <%--barChart.Bar(barChartData, barChartOptions);--%>
    });
</script>

</body>
</html>
