<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Profile | Creative - Bootstrap 3 Responsive Admin Template</title>

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

</head>

<body>
  <!-- container section start -->
  <section id="container" class="">
      <jsp:include page="/WEB-INF/jsp/egovframework/example/include/header.jsp" />
    <jsp:include page="/WEB-INF/jsp/egovframework/example/include/menu.jsp" />

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-user-md"></i> Profile</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="icon_documents_alt"></i>Pages</li>
              <li><i class="fa fa-user-md"></i>Profile</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <!-- profile-widget -->
          <div class="col-lg-12">
            <div class="profile-widget profile-widget-info">
              <div class="panel-body">
                <div class="col-lg-2 col-sm-2">
                  <h4>${member.USER_NAME}</h4>
                  <div class="follow-ava">
                    <img src="<%=request.getContextPath()%>/resources/img/icon-user-default.png" alt="">
                  </div>
                  <h6>${member.USER_POSI}</h6>
                </div>
                <div class="col-lg-4 col-sm-4 follow-info">
                 <!--  <p>아이웍스 기업부설 연구소</p> -->
                  <h6>
                                    <!-- <span><i class="icon_clock_alt"></i>마지막 로그인날짜</span>
                                    <span><i class="icon_pin_alt"></i>회사명</span> -->
                                </h6>
                </div>
                <div class="col-lg-2 col-sm-6 follow-info weather-category">
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading tab-bg-info">
                <ul class="nav nav-tabs">
                  <li>
                    <a data-toggle="tab" href="#profile">
                                          <i class="icon-user"></i>
                                          나의 정보
                                      </a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#edit-profile"><i class="icon-envelope"></i>개인정보 수정</a>
                  </li>
                </ul>
              </header>
              <div class="panel-body">
                <div class="tab-content">

                  <!-- profile -->
                  <div id="profile" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <h1>Bio Graph</h1>
                        <div class="row">
                          <div class="bio-row">
                            <p><span>이 름 </span>: ${member.USER_NAME}</p>
                          </div>
                          <div class="bio-row">
                            <p><span>연락처 </span>: ${member.USER_PHONE}</p>
                          </div>
                          <div class="bio-row">
                            <p><span>소속 </span>: ${member.COM_NAME}</p>
                          </div>
                          
                          <div class="bio-row">
                            <p><span>직책 </span>: ${member.USER_POSI}</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Email </span>: ${member.USER_EMAIL}</p>
                          </div>


                        </div>
                      </div>
                    </section>
                    <section>
                      <div class="row">
                      </div>
                    </section>
                  </div>
                  <!-- edit-profile -->
                  <div id="edit-profile" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <h1> 나의 정보</h1>
                        <form class="form-horizontal" action="EditMemberInfo.do" role="form">



                          <!-- <div class="form-group">
                            <label class="col-lg-2 control-label">About Me</label>
                            <div class="col-lg-10">
                              <textarea name="" id="" class="form-control" cols="30" rows="5"></textarea>
                            </div>
                          </div> -->
                          <div class="form-group">
                            <label class="col-lg-2 control-label">연락처</label>
                            <div class="col-lg-6">
                              <input type="text" name="USER_PHONE" class="form-control" id="c-name" placeholder=" ">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">이메일</label>
                            <div class="col-lg-6">
                              <input type="text" name="USER_EMAIL" class="form-control" id="b-day" placeholder=" ">
                            </div>
                          </div>
                          
						  <div class="form-group">
                            <label class="col-lg-2 control-label">직책</label>
                            <div class="col-lg-6">
                              <input type="text" name="USER_POSI" class="form-control" id="f-name" placeholder=" ">
                            </div>
                          </div>

								<div class="form-group">
									<label class="col-lg-2 control-label">비밀번호</label>
									<div class="col-lg-6">
									<input type="password" name="USER_PW" class="form-control" id="f-name" placeholder="">
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-2 control-label">변경 할 비밀번호</label>
									<div class="col-lg-6">
										<input type="password" name="USER_PW" class="form-control" id="f-name" placeholder="">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">변경 할 비밀번호 확인</label>
									<div class="col-lg-6">
										<input type="password" name="USER_PW" class="form-control" id="f-name" placeholder="">
									</div>
								</div>
								
							  <div class="form-group">
                              <div class="col-lg-offset-2 col-lg-10">
                              <button type="submit" class="btn btn-primary">저장</button>
                              <button type="button" class="btn btn-danger">취소</button>
                              </div>
                          </div>
                        </form>
                      </div>
                    </section>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
        <!-- page end-->
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
  <script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="<%=request.getContextPath()%>/resources/js/jquery.scrollTo.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- jquery knob -->
  <script src="<%=request.getContextPath()%>/resources/assets/jquery-knob/js/jquery.knob.js"></script>
  <!--custome script for all page-->
  <script src="<%=request.getContextPath()%>/resources/js/scripts.js"></script>

  <script>
    //knob
    $(".knob").knob();
  </script>


</body>

</html>
