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
                <div id="duibifenxi" style="width: 830px;height:500px;"></div>
            </div>
            <div class="col-md-12">
                <div id="zhanbi" style="width: 830px;height:500px;"></div>
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
            formatter: function (params,ticket,callback) {
                var res = '所选地区:' + params.name+'<br/>';
                res+='数量:'+params.value+'<br/>';
                res+='比例：'+params.data.proportion  + "%" + '<br/>';
                setTimeout(function (){callback(ticket, res);}, 120);
                return 'loading';
            }
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
                    <c:forEach var="v" items="${statisticsOfCompanyList}">
                    {name: "${v.city}", value: ${v.number}, proportion:${v.proportion}},
                    </c:forEach>
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
