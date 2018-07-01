<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header dark-bg">
      <div class="toggle-nav">
          <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="${pageContext.request.contextPath}/index/" class="logo">新闻 <span class="lite">管理</span></a>
      <!--logo end-->

      <div class="top-nav notification-row">                
          <!-- notificatoin dropdown start-->
          <ul class="nav pull-right top-menu">
              <!-- user login dropdown start-->
              <li class="dropdown">
                  <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                      <c:if test="${sessionScope.user != null}">
                          <span class="username">${sessionScope.user.username}</span>
                      </c:if>
                      <c:if test="${sessionScope.user == null}">
                          <span class="username">游客</span>
                      </c:if>
                      <b class="caret"></b>
                  </a>
                  <ul class="dropdown-menu extended logout">
                      <div class="log-arrow-up"></div>
                    <c:if test="${sessionScope.user != null}">
                      <li>
                          <a href="${pageContext.request.contextPath}/user/logout"><i class="icon_key_alt"></i> 退出登录</a>
                      </li>
                    </c:if>
                  </ul>
              </li>
              <!-- user login dropdown end -->
          </ul>
          <!-- notificatoin dropdown end-->
      </div>
</header> 