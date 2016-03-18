<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<%=basePath%>static/human/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p>管理员</p>
        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>
    <!-- search form -->
    <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
      </div>
    </form>
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
      <li class="header">控制台</li>
      <li class="active treeview">
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>企业用户</span> <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
          <li class="active"><a href="<%=basePath%>home/company/add"><i class="fa fa-circle-o"></i> 信息录入</a></li>
          <li><a href="#"><i class="fa fa-circle-o"></i> 信息修改</a></li>
        </ul>
      </li>
      <%--<li class="treeview">--%>
        <%--<a href="#">--%>
          <%--<i class="fa fa-files-o"></i>--%>
          <%--<span>这个地方是陈永鹏那边提交数据的地方的列表</span>--%>
          <%--<span class="label label-primary pull-right">4</span>--%>
        <%--</a>--%>
        <%--<ul class="treeview-menu">--%>
          <%--<li><a href="<%=basePath%>sys/record/query"><i class="fa fa-circle-o"></i> 备案列表</a></li>--%>
          <%--&lt;%&ndash;<li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>&ndash;%&gt;--%>
          <%--&lt;%&ndash;<li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>&ndash;%&gt;--%>
          <%--&lt;%&ndash;<li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>&ndash;%&gt;--%>
        <%--</ul>--%>
      <%--</li>--%>

      <li class="treeview">
        <a href="#">
          <i class="fa fa-files-o"></i>
          <span>企业备案</span>
          <span class="label label-primary pull-right">4</span>
        </a>
        <ul class="treeview-menu">
          <li><a href="<%=basePath%>sys/record/query"><i class="fa fa-circle-o"></i> 备案列表</a></li>
          <%--<li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>--%>
          <%--<li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>--%>
          <%--<li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>--%>
        </ul>
      </li>
      <li>
        <a href="<%=basePath%>sys/data/list">
          <i class="fa fa-th"></i> <span>报表管理</span> <small class="label pull-right bg-green">new</small>
        </a>
      </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-pie-chart"></i>
          <span>报表管理</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
          <li><a href="<%=basePath%>sys/data/list"><i class="fa fa-circle-o"></i> 所有报表</a></li>
          <li><a href="<%=basePath%>sys/data/display"><i class="fa fa-circle-o"></i> 图表分析</a></li>
          <%--<li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>--%>
          <%--<li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>--%>
        </ul>
      </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-laptop"></i>
          <span>通知管理</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
          <li><a href="<%=basePath%>sys/news/add"><i class="fa fa-circle-o"></i> 发布通知</a></li>
          <li><a href="<%=basePath%>sys/news"><i class="fa fa-circle-o"></i> 所有通知</a></li>
          <%--<li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>--%>
          <%--<li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>--%>
          <%--<li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>--%>
          <%--<li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>--%>
        </ul>
      </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-edit"></i> <span>系统管理</span>
          <i class="fa fa-angle-left pull-right"></i>
        </a>
        <ul class="treeview-menu">
          <li><a href="#"><i class="fa fa-circle-o"></i> 上报时限</a></li>
          <li><a href="<%=basePath%>sys/auth/add"><i class="fa fa-circle-o"></i> 新增权限</a></li>
          <li><a href="<%=basePath%>sys/authRole/edit"><i class="fa fa-circle-o"></i> 编辑权限</a></li>
          <li><a href="<%=basePath%>sys/monitor"><i class="fa fa-circle-o"></i> 系统监控</a></li>
        </ul>
      </li>
      <%--<li class="treeview">--%>
        <%--<a href="#">--%>
          <%--<i class="fa fa-table"></i> <span>Tables</span>--%>
          <%--<i class="fa fa-angle-left pull-right"></i>--%>
        <%--</a>--%>
        <%--<ul class="treeview-menu">--%>
          <%--<li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>--%>
          <%--<li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>--%>
        <%--</ul>--%>
      <%--</li>--%>
      <%--<li>--%>
        <%--<a href="pages/calendar.html">--%>
          <%--<i class="fa fa-calendar"></i> <span>Calendar</span>--%>
          <%--<small class="label pull-right bg-red">3</small>--%>
        <%--</a>--%>
      <%--</li>--%>
      <%--<li>--%>
        <%--<a href="pages/mailbox/mailbox.html">--%>
          <%--<i class="fa fa-envelope"></i> <span>Mailbox</span>--%>
          <%--<small class="label pull-right bg-yellow">12</small>--%>
        <%--</a>--%>
      <%--</li>--%>
      <%--<li class="treeview">--%>
        <%--<a href="#">--%>
          <%--<i class="fa fa-folder"></i> <span>Examples</span>--%>
          <%--<i class="fa fa-angle-left pull-right"></i>--%>
        <%--</a>--%>
        <%--<ul class="treeview-menu">--%>
          <%--<li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>--%>
          <%--<li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>--%>
          <%--<li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>--%>
          <%--<li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>--%>
          <%--<li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>--%>
          <%--<li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>--%>
          <%--<li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>--%>
          <%--<li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>--%>
        <%--</ul>--%>
      <%--</li>--%>
      <%--<li class="treeview">--%>
        <%--<a href="#">--%>
          <%--<i class="fa fa-share"></i> <span>Multilevel</span>--%>
          <%--<i class="fa fa-angle-left pull-right"></i>--%>
        <%--</a>--%>
        <%--<ul class="treeview-menu">--%>
          <%--<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>--%>
          <%--<li>--%>
            <%--<a href="#"><i class="fa fa-circle-o"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>--%>
            <%--<ul class="treeview-menu">--%>
              <%--<li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>--%>
              <%--<li>--%>
                <%--<a href="#"><i class="fa fa-circle-o"></i> Level Two <i class="fa fa-angle-left pull-right"></i></a>--%>
                <%--<ul class="treeview-menu">--%>
                  <%--<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>--%>
                  <%--<li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>--%>
                <%--</ul>--%>
              <%--</li>--%>
            <%--</ul>--%>
          <%--</li>--%>
          <%--<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>--%>
        <%--</ul>--%>
      <%--</li>--%>
      <%--<li><a href="documentation/index.html"><i class="fa fa-book"></i> <span>Documentation</span></a></li>--%>
      <%--<li class="header">LABELS</li>--%>
      <%--<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>--%>
      <%--<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>--%>
      <%--<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>--%>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>
