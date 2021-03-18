<%@ page contentType="text/html; charset=UTF-8"%>


  <!-- Bootstrap CSS -->
  <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <%-- <link href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet"> --%>
  <!--external css-->
  <!-- font icon -->
  <link href="<%=request.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet" />
  <script src="<%=request.getContextPath()%>/resources/js/html5shiv.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/respond.min.js"></script>  
  <script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="<%=request.getContextPath()%>/resources/js/jquery.scrollTo.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="<%=request.getContextPath()%>/resources/js/scripts.js"></script>


<!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="active">
            <a class="" href="<%=request.getContextPath()%>/home.do">
                          <i class="icon_house_alt"></i>
                          <span>대시보드</span>
                      </a>
          </li>
      

          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>게시판</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="<%=request.getContextPath()%>/DataSubmitBorder.do">자료 제출</a></li>
              <li><a class="" href="/DataSubmitBorder.do">자유 게시판</a></li>
              <li><a class="" href="egovSampleList.do"><span>질문 게시판</span></a></li>
            </ul>
          </li>


          
          <li>
            <a class="" href="<%=request.getContextPath()%>/fullcalendar.do">
            <i class="icon_genius"></i>
            <span>캘린더</span>
            </a>
          </li>
          
		  <li>
            <a class="" href="<%=request.getContextPath()%>/fullcalendar.do">
            <i class="icon_genius"></i>
            <span>간트차트</span>
            </a>
          </li>          
          
          <li class="sub-menu">
            <a href="javascript:;" class="">
            <i class="icon_desktop"></i>
            <span>관리자 페이지</span>
            <span class="menu-arrow arrow_carrot-right"></span>
            </a>
            <ul class="sub">
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Member.do">회원정보 관리</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Indicator.do">지표정보 관리</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Company.do">업체정보 관리</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Type.do">유형정보 관리</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Success.do">회원승인 관리</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/Auth.do">회원권한 관리</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/UserLog.do">회원기록 관리</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/BoardLog.do">게시물 이력관리</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/Admin/CommentLog.do">댓글 이력관리</a></li>
            </ul>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->