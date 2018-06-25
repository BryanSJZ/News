<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header dark-bg">
      <div class="toggle-nav">
          <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="index.jsp" class="logo">新闻 <span class="lite">管理</span></a>
      <!--logo end-->

      <div class="top-nav notification-row">                
          <!-- notificatoin dropdown start-->
          <ul class="nav pull-right top-menu">
              <!-- user login dropdown start-->
              <li class="dropdown">
                  <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                      <span class="username">${sessionScope.user}</span>
                      <b class="caret"></b>
                  </a>
                  <ul class="dropdown-menu extended logout">
                      <div class="log-arrow-up"></div>
                      <li>
                          <a href="${pageContext.request.contextPath}/user/logout"><i class="icon_key_alt"></i> 退出登录</a>
                      </li>
                  </ul>
              </li>
              <!-- user login dropdown end -->
          </ul>
          <!-- notificatoin dropdown end-->
      </div>
</header> 