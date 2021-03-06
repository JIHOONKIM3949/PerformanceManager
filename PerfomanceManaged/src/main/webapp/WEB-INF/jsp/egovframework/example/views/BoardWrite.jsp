<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">
<script src="<%=request.getContextPath()%>/resources/js/ckeditor.js"></script>
  <title>Blank | Creative - Bootstrap 3 Responsive Admin Template</title>

  <!-- Bootstrap CSS -->
  <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="<%=request.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet" />
<script src="https://cdn.ckeditor.com/ckeditor5/12.3.1/classic/ckeditor.js"></script>
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
    
    
     <style type="text/css">
	.ck-editor__editable {
	       min-height: 500px;
	}
	
	.image img {
		width: 100%;
	}
	
	   .blog_list_content{  	
   			overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 3; 
            -webkit-box-orient: vertical;
   }
	
</style>
    
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">
    	<!-- header start -->
       <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="<%=request.getContextPath()%>/home.do" class="logo">I <span class="lite">Works</span></a>
      <!--logo end-->

      <div class="nav search-row" id="top_menu">
        <!--  search form start -->
        <ul class="nav top-menu">
          <li>
            <form class="navbar-form">
              <input class="form-control" placeholder="Search" type="text">
            </form>
          </li>
        </ul>
        <!--  search form end -->
      </div>

      <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">

          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username">${user}??? ???????????????.</span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="<%=request.getContextPath()%>/MemberEdit.do"><i class="icon_profile"></i>?????? ??????</a>
              </li>

              <li>
                <a href="<%=request.getContextPath()%>/LoginPage.do"><i class="icon_key_alt"></i> Log Out</a>
              </li>

            </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
    </header>
    <!--header end-->

  <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="active">
            <a class="" href="<%=request.getContextPath()%>/home.do">
                          <i class="icon_house_alt"></i>
                          <span>????????????</span>
                      </a>
          </li>
      

          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>?????????</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="<%=request.getContextPath()%>/DataSubmitBorder.do">?????? ??????</a></li>
              <li><a class="" href="/DataSubmitBorder.do">?????? ?????????</a></li>
              <li><a class="" href="egovSampleList.do"><span>?????? ?????????</span></a></li>
            </ul>
          </li>


          
          <li>
            <a class="" href="<%=request.getContextPath()%>/fullcalendar.do">
            <i class="icon_genius"></i>
            <span>?????????</span>
            </a>
          </li>
          
		  <li>
            <a class="" href="<%=request.getContextPath()%>/fullcalendar.do">
            <i class="icon_genius"></i>
            <span>????????????</span>
            </a>
          </li>          
          
          <li class="sub-menu">
            <a href="javascript:;" class="">
            <i class="icon_desktop"></i>
            <span>????????? ?????????</span>
            <span class="menu-arrow arrow_carrot-right"></span>
            </a>
            <ul class="sub">
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Member.do">???????????? ??????</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Indicator.do">???????????? ??????</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Company.do">???????????? ??????</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Type.do">???????????? ??????</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Success.do">???????????? ??????</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Auth.do">???????????? ??????</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/UserLog.do">???????????? ??????</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/BoardLog.do">????????? ????????????</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/CommentLog.do">?????? ????????????</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa fa-bars"></i> Pages</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="fa fa-bars"></i>Pages</li>
              <li><i class="fa fa-square-o"></i>Pages</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-6">
            <div class="recent">
              <h3>???????????? ????????? ??????</h3>
            </div>
            <div id="sendmessage">Your message has been sent. Thank you!</div>
            <div id="errormessage"></div>
            <form id="boardWriteForm" enctype="multipart/form-data" action="SaveContent.do" method="post" role="form" class="contactForm">
              <div class="form-group">
              	
              
                <input type="text" name="BOR_TITLE" class="form-control" id="BOR_TITLE" placeholder="????????? ????????? ???????????????" data-rule="required" data-msg="????????? ????????? ??????????????? ?????????." />
                <div class="validation"></div>
              </div>
              
              <div class="form-group">
              <input style="height: 40px;" type="file" id="attach" name="attach" class="form-control" multiple/>
              </div>
              
              <div class="form-group">
              	<textarea style="width: 100%; height: 200px;"  id="BOR_CONTENT" name="BOR_CONTENT" placeholder="????????? ????????? ???????????????" ></textarea>
<!--                 <textarea class="form-control" id="bcontent" name="bcontent" rows="5" data-rule="required" data-msg="????????? ????????? ????????? ?????????????????????." placeholder="????????? ????????? ???????????????"></textarea> -->
                <div class="validation"></div>
              </div>
              <div align="center">
              <div class="text-center" style="display: inline-block;"><button type="submit" class="btn btn-primary btn-lg">?????????</button></div>
              <div class="text-center" style="display: inline-block;"><button type="submit" class="btn btn-danger btn-lg">??????</button></div>
              </div>
            </form>
          </div>

          <div class="col-lg-6">
            <div class="recent">
              <h3>?????? ????????????</h3>
              <div class="panel-body">
              	<ul>
              	
              	<c:forEach var="list" items="${companylist}" varStatus="status">
              	
              		<li><label for="checkbox${status.index}" style="cursor:pointer" value="${list}"><input type="checkbox" id="checkbox${status.index}"/>${list.COM_NAME}</label></li>
              	</c:forEach>
              	
              	</ul>
              </div>
            </div>
             <script type="text/javascript">
             	function boardWrite();
             	
             	var btitle = $("#BOR_TITLE").val().trim();
             	var bcontent = $("#BOR_CONTENT").val().trin();
             	var formdata = new FormData();
             	
             	formdata.append("btitle", btitle);
             	formdata.append("bcontent", bcontent);
             	
             	
             	
             </script>
          </div>
        </div>
        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
      <div class="credits">
          
        </div>
    </div>
  </section>
  <!-- container section end -->
  <!-- javascripts -->
  <script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="<%=request.getContextPath()%>/resources/js/jquery.scrollTo.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="<%=request.getContextPath()%>/resources/js/scripts.js"></script>
  <script src="<%=request.getContextPath()%>/resources/contactform/contactform.js"></script>
  <!-- CKEditor -->
  
<script
	src="<%=request.getContextPath()%>/resources/js/ckeditor.js"></script>
</body>

</html>
