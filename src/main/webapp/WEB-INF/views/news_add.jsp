<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="sidebar.jsp" />
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.png">

    <title>主页</title>

    <!-- Bootstrap CSS -->    
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="${pageContext.request.contextPath}/resources/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="${pageContext.request.contextPath}/resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="${pageContext.request.contextPath}/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fullcalendar.css">
    <link href="${pageContext.request.contextPath}/resources/css/widgets.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style-responsive.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/xcharts.min.css" rel=" stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <!-- =======================================================
        Theme Name: NiceAdmin
        Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
     
    

      
      <!--main content start-->
      <section id="main-content">
        <section class="wrapper">
            <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              增添新闻
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form class="form-validate form-horizontal" id="feedback_form" method="post" action="${pageContext.request.contextPath}/news/add">
                                      <div class="form-group">
                                          <label for="cname" class="control-label col-lg-2">新闻名称 <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control" id="cname" name="title" minlength="5" type="text" required />
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label for="cemail" class="control-label col-lg-2">作者 <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control" id="cemail" type="text" name="author" value="${sessionScope.user.username}" required />
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <div class="form-group">
                                              <label class="control-label col-lg-2" for="inputSuccess">类型 </label>
                                              <div class="col-lg-10">
                                                  <select class="form-control m-bot15" name="type">
                                                      <c:forEach items="${list}" var="m">
                                                          <option value="${m.id}">
                                                                  ${m.module}
                                                          </option>
                                                      </c:forEach>
                                                  </select>
                                              </div>
                                          </div>
                                      </div>
                                                                           
                                      <div class="form-group">
                                            <label class="control-label col-sm-2">内容</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control ckeditor" name="content" rows="6"></textarea>
                                            </div>
                                      </div>
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-primary" type="submit">提交</button>
                                          </div>
                                      </div>
                                  </form>
                              </div>

                          </div>
                      </section>
                  </div>
              </div>
        </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section start -->

    <!-- javascripts -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.10.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="${pageContext.request.contextPath}/resources/assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.js" ></script>
    <!-- jQuery full calendar -->
    <script src="${pageContext.request.contextPath}/resources/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
    <script src="${pageContext.request.contextPath}/resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="${pageContext.request.contextPath}/resources/js/calendar-custom.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.customSelect.min.js" ></script>
    <script src="${pageContext.request.contextPath}/resources/assets/chart-master/Chart.js"></script>
   
    <!--custome script for all page-->
    <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="${pageContext.request.contextPath}/resources/js/sparkline-chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/xcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.autosize.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.placeholder.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/gdp-data.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/sparklines.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/charts.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/ckeditor/ckeditor.js"></script>

  </body>
</html>
