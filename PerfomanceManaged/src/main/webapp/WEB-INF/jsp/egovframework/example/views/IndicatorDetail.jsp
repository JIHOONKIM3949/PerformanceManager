<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="kr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/img/favicon.png">

  <title>Elements | Creative - Bootstrap 3 Responsive Admin Template</title>

  <!-- Bootstrap CSS -->
  <link href="<%=application.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <%-- <link href="<%=application.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet"> --%>
  <!--external css-->
  <!-- font icon -->
  <link href="<%=application.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<%=application.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="<%=application.getContextPath()%>/resources/css/style.css" rel="stylesheet">
  <link href="<%=application.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body>
<div>
    <jsp:include page="/WEB-INF/jsp/egovframework/example/include/header.jsp" />
    <jsp:include page="/WEB-INF/jsp/egovframework/example/include/menu.jsp" />
    </div>

  <!-- container section start -->


    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-list-alt"></i> Components</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="fa fa-desktop"></i>UI Fitures</li>
              <li><i class="fa fa-list-alt"></i>Components</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <!--tab nav start-->
            <section class="panel">
              <header class="panel-heading tab-bg-primary ">
                <ul class="nav nav-tabs">
                  <li class="active">
                    <a data-toggle="tab" href="#home">캘린더</a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#about">간트차트</a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#profile">게시판</a>
                  </li>
<!--                   <li class="">
                    <a data-toggle="tab" href="#contact">Contact</a>
                  </li> -->
                </ul>
              </header>
              <div class="panel-body">
                <div class="tab-content">
                  <div id="home" class="tab-pane active">
                  <jsp:include page="/WEB-INF/jsp/egovframework/example/views/fullCalendar_Example2.jsp" />
                  </div>
                  <div id="about" class="tab-pane">간트차트</div>
                  <div id="profile" class="tab-pane">게시</div>
                  <div id="contact" class="tab-pane">Contact</div>
                </div>
              </div>
            </section>
            <!--tab nav start-->
            <!--tab nav start-->
<!--             <section class="panel">
              <header class="panel-heading tab-bg-primary">
                <ul class="nav nav-tabs">
                  <li>
                    <a data-toggle="tab" href="#home-2">
                                          <i class="icon-home"></i>
                                      </a>
                  </li>
                  <li class="active">
                    <a data-toggle="tab" href="#about-2">
                                          <i class="icon-user"></i>
                                          About
                                      </a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#contact-2">
                                          <i class="icon-envelope"></i>
                                          Contact
                                      </a>
                  </li>
                </ul>
              </header>
              <div class="panel-body">
                <div class="tab-content">
                  <div id="home-2" class="tab-pane ">
                    Home
                  </div>
                  <div id="about-2" class="tab-pane active">About</div>
                  <div id="contact-2" class="tab-pane ">Contact</div>
                </div>
              </div>
            </section> -->
            <!--tab nav start-->

<!--             tab nav start
            <section class="panel">
              <header class="panel-heading tab-bg-primary tab-right ">
                <ul class="nav nav-tabs pull-right">
                  <li class="active">
                    <a data-toggle="tab" href="#home-3">
                                          <i class="icon-home"></i>
                                      </a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#about-3">
                                          <i class="icon-user"></i>
                                          About
                                      </a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#contact-3">
                                          <i class="icon-envelope"></i>
                                          Contact
                                      </a>
                  </li>
                </ul>
                <span class="hidden-sm wht-color">Right tab</span>
              </header>
              <div class="panel-body">
                <div class="tab-content">
                  <div id="home-3" class="tab-pane active">
                    Home
                  </div>
                  <div id="about-3" class="tab-pane">About</div>
                  <div id="contact-3" class="tab-pane">Contact</div>
                </div>
              </div>
            </section> -->
            <!--tab nav start-->

   <!--          navigation start
            <nav class="navbar navbar-default" role="navigation">
              Brand and toggle get grouped for better mobile display
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                                  <span class="sr-only">Toggle navigation</span>
                                  <span class="icon-bar"></span>
                                  <span class="icon-bar"></span>
                                  <span class="icon-bar"></span>
                              </button>
                <a class="navbar-brand" href="#">Brand</a>
              </div>

              Collect the nav links, forms, and other content for toggling
              <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                  <li class="active"><a href="#">Link</a></li>
                  <li><a href="javascript:;">Link</a></li>
                  <li class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Action</a></li>
                      <li><a href="#">Another action</a></li>
                      <li><a href="#">Something else here</a></li>
                      <li><a href="#">Separated link</a></li>
                      <li><a href="#">One more separated link</a></li>
                    </ul>
                  </li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="javascript:;">Link</a></li>
                  <li class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Action</a></li>
                      <li><a href="#">Another action</a></li>
                      <li><a href="#">Something else here</a></li>
                      <li><a href="#">Separated link</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              /.navbar-collapse
            </nav>
 -->
          </div>
          
            

      
          </div>


      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div>
  </section>
  <!-- container section end -->

  <!-- javascripts -->
  <script src="<%=application.getContextPath()%>/resources/js/jquery.js"></script>
  <%-- <script src="<%=application.getContextPath()%>/resources/js/bootstrap.min.js"></script> --%>
  <!-- nice scroll -->
  <script src="<%=application.getContextPath()%>/resources/js/jquery.scrollTo.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- gritter -->

  <!-- custom gritter script for this page only-->
  <script src="<%=application.getContextPath()%>/resources/js/gritter.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="<%=application.getContextPath()%>/resources/js/scripts.js"></script>




</body>


</html>
