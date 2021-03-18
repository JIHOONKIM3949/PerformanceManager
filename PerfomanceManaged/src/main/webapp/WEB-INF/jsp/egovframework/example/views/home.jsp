<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/img/favicon.png">

  <title>성과 관리프로그램</title>

  <!-- Bootstrap CSS -->
  <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="<%=request.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" />
  <!-- full calendar css-->
  <link href="<%=request.getContextPath()%>/resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="<%=request.getContextPath()%>/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.css" type="text/css">
  <link href="<%=request.getContextPath()%>/resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
  <!-- Custom styles -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/fullcalendar.css">
  <link href="<%=request.getContextPath()%>/resources/css/widgets.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/css/xcharts.min.css" rel=" stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
  <!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
  
  
  
  <style type="text/css">
  td.total-td{
  	text-align: center;
  }
  </style>
  
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">




	<jsp:include page="/WEB-INF/jsp/egovframework/example/include/header.jsp" />
    <jsp:include page="/WEB-INF/jsp/egovframework/example/include/menu.jsp" />
    
  

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="home.do">Home</a></li>
              <li><i class="fa fa-laptop"></i>Dashboard</li>
            </ol>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box blue-bg">
              <i class="fa fa-cloud-download"></i>
              <i class="far fa-handshake"></i>
              <div class="count">72%</div>
              <div class="title">총 성과 달성률</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box brown-bg">
              <i class="fa fa-shopping-cart"></i>
              <div class="count">80점</div>
              <div class="title">평균 만족도</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box dark-bg">
              <i class="fa fa-thumbs-o-up"></i>
              <div class="count">12곳</div>
              <div class="title">참여 업체 수</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box green-bg">
              <i class="fa fa-cubes"></i>
              <div class="count">120개</div>
              <div class="title">총 지표수</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

        </div>
        <!--/.row-->

<!-- 
        <div class="row">
          <div class="col-lg-9 col-md-12">

            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-map-marker red"></i><strong>Countries</strong></h2>
                <div class="panel-actions">
                  <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                  <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                  <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                </div>
              </div>
              <div class="panel-body-map">
                <div id="map" style="height:380px;"></div>
              </div>

            </div>
          </div>
          <div class="col-md-3">
            List starts
            <ul class="today-datas">
              List #1
              <li>
                Graph
                <div><span id="todayspark1" class="spark"></span></div>
                Text
                <div class="datas-text">11,500 visitors/day</div>
              </li>
              <li>
                <div><span id="todayspark2" class="spark"></span></div>
                <div class="datas-text">15,000 Pageviews</div>
              </li>
              <li>
                <div><span id="todayspark3" class="spark"></span></div>
                <div class="datas-text">30.55% Bounce Rate</div>
              </li>
              <li>
                <div><span id="todayspark4" class="spark"></span></div>
                <div class="datas-text">$16,00 Revenue/Day</div>
              </li>
              <li>
                <div><span id="todayspark5" class="spark"></span></div>
                <div class="datas-text">12,000000 visitors every Month</div>
              </li>
            </ul>
          </div>


        </div>
 -->

        <!-- Today status end -->


<style>
.hometitle{
text-align: center;

}
</style>
        <div class="row">

          <div class="col-lg-12 col-md-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-flag-o red"></i><strong>목표 및 현황</strong></h2>
                <div class="panel-actions">
                  <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                  <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                  <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                </div>
              </div>
              <div class="panel-body">
                <table class="table bootstrap-datatable">
                  <thead>
<!--                     <tr>
                      <th colspan="7" class="hometitle">연차별 달성 목표</th>
                    </tr> -->
                    <tr>
                    <th  class="hometitle" valign="middle">구분</th>
                      <th class="hometitle" valign="middle">유형</th>
                      <th  class="hometitle" valign="middle">지표</th>
	                    <th class="hometitle">1차년도<br> (달성 / 목표)</th>
	                    <th class="hometitle">2차년도<br> (달성 / 목표)</th>
	                    <th class="hometitle">3차년도<br> (달성 / 목표)</th>
	                    <th class="hometitle">합계<br> (달성 / 목표)</th>
                    </tr>
                    <!-- 지표갯수만큼 tr생성 -->
                    <c:forEach var="indi" items="${indiList}">
                    <tr>
                    	<td class="total-td">구분</td>
                    	<td class="total-td">${indi.TYP_TITLE}</td>
                    	<td class="total-td">${indi.INDI_TITLE}</td>
                    	<td class="total-td">1/10</td>
                    	<td class="total-td">1/10</td>
                    	<td class="total-td">1/10</td>
                    	<td class="total-td">1/10</td>
                    </tr>
                    </c:forEach>
                    <tr>
                    	<!-- 총목표달성률 -->
                    </tr>
                    
                  </thead>
                </table>
              </div>
            </div>
          </div>
          </div>
      </section>
      <div class="text-right">
        <div class="credits">

        </div>
      </div>
    </section>
    <!--main content end-->
  </section>
  <!-- container section start -->

  <!-- javascripts -->
  <script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery-ui-1.10.4.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="<%=request.getContextPath()%>/resources/js/jquery.scrollTo.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="<%=request.getContextPath()%>/resources/assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="<%=request.getContextPath()%>/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <<script src="<%=request.getContextPath()%>/resources/js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="<%=request.getContextPath()%>/resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="<%=request.getContextPath()%>/resources/js/calendar-custom.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery.customSelect.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <%-- <script src="<%=request.getContextPath()%>/resources/js/scripts.js"></script> --%>
    <!-- custom script for this page-->
    <script src="<%=request.getContextPath()%>/resources/js/sparkline-chart.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/easy-pie-chart.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/xcharts.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.autosize.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.placeholder.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/gdp-data.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/morris.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/sparklines.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/charts.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>

</html>
