<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="sidebar.jsp" />
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	<link href="${pageContext.request.contextPath}/resources/css/datatables.css" rel="stylesheet">
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
     
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li>
                      <a class="" href="${pageContext.request.contextPath}/index/">
                          <i class="icon_house_alt"></i>
                          <span>主页</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>栏目管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="${pageContext.request.contextPath}/module/list">栏目列表</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/module/add">增添栏目</a></li>
                      </ul>
                  </li>       
                  <li class="sub-menu active">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>新闻管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="${pageContext.request.contextPath}/news/list">新闻列表</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/news/add">增添新闻</a></li>
                      </ul>
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
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
                                        <th>标题</th>
                                        <th>作者</th>
                                        <th>栏目</th>
                                        <th>内容</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                             
                                <tbody>
                                    <c:forEach items="${list}" var="news">
                                        <tr data-id="${news.id}">
                                            <td>${news.title}</td>
                                            <td>${news.author}</td>
                                            <td>${news.type}</td>
                                            <td>${news.content}</td>
                                            <td>
                                                <div class="btn-group">
                                                    <a class="btn btn-success" href="${pageContext.request.contextPath}/news/detail/${news.id}">查看</a>
                                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/news/update/${news.id}">修改</a>
                                                    <a class="btn btn-danger del" href="${pageContext.request.contextPath}/news/delete" data-id="${news.id}">删除</a>
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
