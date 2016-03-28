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
            <%--<div class="col-md-12">--%>
                <%--<div id="main" style="width: 830px;height:300px;"></div>--%>
            <%--</div>--%>

            <div class="col-md-12">
                <div id="zhanbi" style="width: 830px;height:500px;"></div>
            </div>

            <div class="col-md-12">
                <div id="duibifenxi" style="width: 830px;height:500px;"></div>
            </div>
            <div class="col-md-12">
                <div id="xianggang" style="width: 98%; height: 500px;border: 1px solid #ccc; padding: 10px;"></div>
            </div>
        </section><!-- /.content -->
    </div>

</div>


<!-- /.主要内容结束 -->
<jsp:include page="../../footer.jsp" flush="true"></jsp:include>
<jsp:include page="../../js.jsp" flush="true"></jsp:include>

<!-- page script -->
<%--<script type="text/javascript">--%>
    <%--// 基于准备好的dom，初始化echarts实例--%>
    <%--var myChart = echarts.init(document.getElementById('main'));--%>
    <%--var seriesDataJson = [];--%>
    <%--<c:forEach items="${peopleOfEverySurveyTime}" var="v">--%>
    <%--seriesDataJson.push(${v.init_people});--%>
    <%--</c:forEach>--%>

    <%--// 指定图表的配置项和数据--%>
    <%--var option = {--%>
        <%--title: {--%>
            <%--text: '查看企业的汇总数据'--%>
        <%--},--%>
        <%--tooltip: {},--%>
        <%--legend: {--%>
            <%--data: ['统计：根据不同的调查期显示出企业的汇总数据']--%>
        <%--},--%>
        <%--xAxis: {--%>
            <%--data: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],--%>
        <%--},--%>
        <%--yAxis: {},--%>
        <%--series: [{--%>
            <%--name: '统计：根据不同的调查期显示出企业的汇总数据',--%>
            <%--type: 'bar',--%>
            <%--data: seriesDataJson--%>
        <%--}]--%>
    <%--};--%>

    <%--// 使用刚指定的配置项和数据显示图表。--%>
    <%--myChart.setOption(option);--%>
<%--</script>--%>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('xianggang'));

    var data_man = [
        {name: '中西区', value: 10000},
        {name: '湾仔', value: 20000},
        {name: '东区', value: 30000},
        {name: '南区', value: 40000},
        {name: '油尖旺', value: 50000},
        {name: '深水埗', value: 60000},
        {name: '九龙城', value: 70000},
        {name: '黄大仙', value: 80000},
        {name: '观塘', value: 90000},
        {name: '葵青', value: 100000},
        {name: '荃湾', value: 110000},
        {name: '屯门', value: 120000},
        {name: '元朗', value: 130000},
        {name: '北区', value: 140000},
        {name: '大埔', value: 150000},
        {name: '沙田', value: 160000},
        {name: '西贡', value: 170000},
        {name: '离岛', value: 180000}
    ]


    var data_woman = [
        {name: '中西区', value: 210000},
        {name: '湾仔', value: 220000},
        {name: '东区', value: 230000},
        {name: '南区', value: 240000},
        {name: '油尖旺', value: 250000},
        {name: '深水埗', value: 260000},
        {name: '九龙城', value: 270000},
        {name: '黄大仙', value: 280000},
        {name: '观塘', value: 290000},
        {name: '葵青', value: 2100000},
        {name: '荃湾', value: 2110000},
        {name: '屯门', value: 2120000},
        {name: '元朗', value: 2130000},
        {name: '北区', value: 2140000},
        {name: '大埔', value: 2150000},
        {name: '沙田', value: 2160000},
        {name: '西贡', value: 2170000},
        {name: '离岛', value: 2180000}
    ]
    option = {
        title: {
            text: '香港18区人口密度 （2011）',
            subtext: '人口密度数据来自Wikipedia',
            sublink: 'http://zh.wikipedia.org/wiki/%E9%A6%99%E6%B8%AF%E8%A1%8C%E6%94%BF%E5%8D%80%E5%8A%83#cite_note-12'
        },
        tooltip: {
            trigger: 'item',
            formatter: function (a) {
                res = a[1] + '</br>' + a[2] + '(p / km2)';
                for (var i = 0; i < data_man.length; i++) {
                    if (a[1] == data_man[i].name) {
                        res += '</br>男性：' + data_man[i].value;
                    }
                    if (a[1] == data_woman[i].name) {
                        res += '</br>女性：' + data_woman[i].value;
                    }
                }
                return res;
            }
        },
        toolbox: {
            show: true,
            orient: 'vertical',
            x: 'right',
            y: 'center',
            feature: {
                mark: {show: true},
                dataView: {show: true, readOnly: false},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        dataRange: {
            min: 800,
            max: 50000,
            text: ['High', 'Low'],
            realtime: false,
            calculable: true,
            color: ['orangered', 'yellow', 'lightskyblue']
        },
        series: [
            {
                name: '香港18区人口密度',
                type: 'map',
                mapType: '香港', // 自定义扩展图表类型
                itemStyle: {
                    normal: {label: {show: true}},
                    emphasis: {label: {show: true}}
                },
                data: [
                    {name: '中西区', value: 20057.34},
                    {name: '湾仔', value: 15477.48},
                    {name: '东区', value: 31686.1},
                    {name: '南区', value: 6992.6},
                    {name: '油尖旺', value: 44045.49},
                    {name: '深水埗', value: 40689.64},
                    {name: '九龙城', value: 37659.78},
                    {name: '黄大仙', value: 45180.97},
                    {name: '观塘', value: 55204.26},
                    {name: '葵青', value: 21900.9},
                    {name: '荃湾', value: 4918.26},
                    {name: '屯门', value: 5881.84},
                    {name: '元朗', value: 4178.01},
                    {name: '北区', value: 2227.92},
                    {name: '大埔', value: 2180.98},
                    {name: '沙田', value: 9172.94},
                    {name: '西贡', value: 3368},
                    {name: '离岛', value: 806.98}
                ],
                // 自定义名称映射
//                nameMap: {
//                    'Central and Western': '中西区',
//                    'Eastern': '东区',
//                    'Islands': '离岛',
//                    'Kowloon City': '九龙城',
//                    'Kwai Tsing': '葵青',
//                    'Kwun Tong': '观塘',
//                    'North': '北区',
//                    'Sai Kung': '西贡',
//                    'Sha Tin': '沙田',
//                    'Sham Shui Po': '深水埗',
//                    'Southern': '南区',
//                    'Tai Po': '大埔',
//                    'Tsuen Wan': '荃湾',
//                    'Tuen Mun': '屯门',
//                    'Wan Chai': '湾仔',
//                    'Wong Tai Sin': '黄大仙',
//                    'Yau Tsim Mong': '油尖旺',
//                    'Yuen Long': '元朗'
//                },
                // 文本位置修正
                textFixed: {
                    'Yau Tsim Mong': [-10, 0]
                },
                // 文本直接经纬度定位
                geoCoord: {
                    'Islands': [113.95, 22.26]
                }
            }
        ]
    };
    myChart.setOption(option);

</script>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('zhanbi'));

    // 指定图表的配置项和数据
    option = {
        title: {
            text: '山东各市企业占比',
            subtext: '纯属虚构',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a}<br/>" + " {a}<br/>{b} : {c} ({d}%)"
        },

        legend: {

            x: 'center',
            y: 'bottom',
            data: ['济南', '青岛', '淄博', '枣庄', '东营', '烟台', '潍坊', '济宁', '泰安', '威海', '日照', '莱芜', '临沂', '德州', '聊城', '滨州', '菏泽'],
            selected: {
                '济南': false,
                '青岛': false,
                '淄博': false,
                '枣庄': false,
                '东营': false,
                '烟台': false,
                '潍坊': false,
                '济宁': false,
                '泰安': false,
                '威海': false,
                '日照': false,
                '莱芜': false,
                '临沂': false,
                '德州': false,
                '聊城': false,
                '滨州': false,
                '菏泽': false
            }
        },
        toolbox: {
            show: true,
            feature: {
                mark: {show: true},
                dataView: {show: true, readOnly: false},
                magicType: {
                    show: true,
                    type: ['pie', 'funnel']
                },
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        calculable: true,
        series: [
            {
                name: '山东各市企业占比',
                type: 'pie',
                radius: [20, 110],
                roseType: 'radius',
                data: [
                    {name: "济南", value: 7},
                    {name: "青岛", value: 5},
                    {name: "淄博", value: 5},
                    {name: "枣庄", value: 5},
                    {name: "东营", value: 5},
                    {name: "烟台", value: 5},
                    {name: "潍坊", value: 5},
                    {name: "济宁", value: 5},
                    {name: "泰安", value: 5},
                    {name: "威海", value: 5},
                    {name: "日照", value: 5},
                    {name: "莱芜", value: 5},
                    {name: "临沂", value: 5},
                    {name: "德州", value: 5},
                    {name: "聊城", value: 5},
                    {name: "滨州", value: 5},
                    {name: "菏泽", value: 5}

                ]
            }
        ]
    };

    myChart.setOption(option);
</script>


<script>
    var chart = echarts.init(document.getElementById('duibifenxi'));
    option = {
        title: {
            text: '对比两个调查期的企业岗位变动情况',
            subtext: '纯属虚构',
            x: 'center'
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        legend: {
            data: ['调查期一', '调查期二']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                data: ['企业总数', '建档期总岗位数', '调查期总岗位数', '岗位变化总数', '岗位减少总数', '岗位变化数量占比']
            }
        ],


        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: '调查期一',
                type: 'bar',
                data: [320, 332, 301, 334, 390, 330]
            },
            {
                name: '调查期二',
                type: 'bar',
                stack: '调查期二',
                data: [120, 132, 101, 134, 90, 230]
            },
        ]
    };

    chart.setOption(option)
</script>

</body>
</html>
