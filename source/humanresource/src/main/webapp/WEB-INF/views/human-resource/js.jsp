<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<a href="#" class="go-to-top hidden-print"><i class="fa fa-angle-up"></i></a>

<script type='text/javascript' src='<%=basePath%>static/human/plugins/jQuery/jQuery-2.1.4.min.js'></script>
<script type='text/javascript' src='<%=basePath%>static/human/bootstrap/js/bootstrap.min.js'></script>
<script type='text/javascript' src='<%=basePath%>static/human/plugins/chartjs/Chart.min.js'></script>
<script type='text/javascript' src='<%=basePath%>static/human/js/plugins/toastr/toastr.min.js'></script>
<script type='text/javascript' src='<%=basePath%>static/human/plugins/fastclick/fastclick.min.js'></script>
<script type='text/javascript' src='<%=basePath%>static/human/dist/js/app.min.js'></script>
<script type='text/javascript' src='<%=basePath%>static/human/dist/js/demo.js'></script>
<script type='text/javascript' src='<%=basePath%>static/human/dist/js/echarts.js'></script>
<script type='text/javascript' src='<%=basePath%>static/human/dist/js/shandong.js'></script>
<script type='text/javascript' src='<%=basePath%>static/human/dist/js/vintage.js'></script>

<script type="text/javascript">
    <%--Toastr配置--%>

    toastr.options = {
        "closeButton": true,
        "debug": false,
        "progressBar": true,
        "positionClass": "toast-top-center",
        "onclick": null,
        "showDuration": "50",
        "hideDuration": "100",
        "timeOut": "1200",
        "extendedTimeOut": "100",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };


</script>