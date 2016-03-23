<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="GBK"%>
<%@ page contentType="application/msexcel" %>
<%
    //response.setHeader("Content-disposition","inline; filename=videos.xls");
    response.setHeader("Content-disposition","attachment; filename=test.xls");
    //���������趨���͵�ǰ�������ʱ�ĵ���Ϊtest.xls
    //���ǿ���һ�У���ǰ���������Ϊ���յ�һ��excel��
%>
<%@ page import="com.shandong.human.resource.domain.Company"%>
<%@ page import="org.springframework.web.context.WebApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">
        <title>spring jdbc test</title>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->
    </head>

    <body>
        <table border="1" width="100%">
            <tr>
                <td>ID</td>
                <td>ʡID</td>
                <td>��ID</td>
                <td>��ID</td>
                <td>��ַ</td>
                <td>��ҵ����</td>
                <td>��ҵ����</td>
                <td>ҵ��</td>
                <td>��ϵ��</td>
                <td>�ʱ�</td>
                <td>�绰</td>
                <td>����</td>
                <td>����</td>
            </tr>
            <c:forEach items="${exResult}" var="v">
            <tr>
                <td>${v.id}</td>
                <td>${v.province_id}</td>
                <td>${v.city_id}</td>
                <td>${v.area_id}</td>
                <td>${v.address}</td>
                <td>${v.code}</td>
                <td>${v.name}</td>
                <td>${v.business}</td>
                <td>${v.contact}</td>
                <td>${v.zipcode}</td>
                <td>${v.phone}</td>
                <td>${v.fax}</td>
                <td>${v.email}</td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>