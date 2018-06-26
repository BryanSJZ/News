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
    <link href="${pageContext.request.contextPath}/resources/css/datatables.css" rel="stylesheet">
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
                <!-- Start Panel -->
                    <div class="col-md-12">
                      <div class="panel panel-default">
                        <div class="panel-body table-responsive">

                            <table id="example" class="table display">
                                <thead>
                                    <tr>
                                        <th>栏目名称</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                             
                                <tbody>
                                    <c:forEach items="${list}" var = "module">
                                        <tr data-id="${module.id}">
                                            <td>${module.module}</td>
                                            <td>
                                                <div class="btn-group">
                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/module/update/${module.id}">修改</a>
                                                    <a class="btn btn-danger del" href="${pageContext.request.contextPath}/module/delete" data-id="${module.id}">删除</a>
                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/news/list/${module.id}">该类新闻列表</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                      </div>
                    </div>
                <!-- End Panel -->
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
    <script src="${pageContext.request.contextPath}/resources/js/datatables/datatables.min.js"></script>
<script>
$(document).ready(function() {
    var table = $('#example').DataTable({
        language: {  
              "sProcessing": "处理中...",  
              "sLengthMenu": "显示 _MENU_ 项结果",  
              "sZeroRecords": "没有匹配结果",  
              "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",  
              "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",  
              "sInfoFiltered": "(由 _MAX_ 项结果过滤)",  
              "sInfoPostFix": "",  
              "sSearch": "搜索:",  
              "sUrl": "",  
              "sEmptyTable": "表中数据为空",  
              "sLoadingRecords": "载入中...",  
              "sInfoThousands": ",",  
              "oPaginate": {  
                  "sFirst": "首页",  
                  "sPrevious": "上页",  
                  "sNext": "下页",  
                  "sLast": "末页"  
              },  
              "oAria": {  
                  "sSortAscending": ": 以升序排列此列",  
                  "sSortDescending": ": 以降序排列此列"  
              }  
          },
    });
 
    // Order by the grouping
    $('#example tbody').on( 'click', 'tr.group', function () {
        var currentOrder = table.order()[0];
        if ( currentOrder[0] === 2 && currentOrder[1] === 'asc' ) {
            table.order( [ 2, 'desc' ] ).draw();
        }
        else {
            table.order( [ 2, 'asc' ] ).draw();
        }
    });

    $('.del').click(function() {
        let id = $(this).data('id')
        $.ajax({
            url: '/delete',
            type: 'GET',
            dataType: 'json',
            data: {
                id: id
            },
            success: function(data){
                if (data.code == 1) {
                    $(`tr[data-id=${id}]`).remove()
                }
            }
        })
    });
});
</script>
  </body>
</html>
