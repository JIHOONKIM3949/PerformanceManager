<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/img/favicon.png">

  <title>Basic Table | Creative - Bootstrap 3 Responsive Admin Template</title>

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
    
    <script>
    function DisapprovedMemberDelete(infoid){
    	if(confirm("삭제 하시겠습니까?") == true){
  		  $.ajax({
  			  url:"DisapprovedMemberDelete.do",
  			  method:"get",
  			  data:{infoid:infoid},
  			  success:function(data){
  				  alert("삭제 되었습니다.");
  				  location.href = "Success.do";
  			  }
  		  });
    	}
    }
    
    function MemberSuccess(infoid){
    	if(confirm("승인 하시겠습니까?") == true){
  		  $.ajax({
  			  url:"UserSuccess.do",
  			  method:"get",
  			  data:{infoid:infoid},
  			  success:function(data){
  				  alert("승인 되었습니다.");
  				  location.href = "Success.do";
  			  }
  		  });
    	}
    }
    </script>
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
            <h3 class="page-header"><i class="fa fa-table"></i>회원 승인관리</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="fa fa-th-list"></i>회원 승인관리</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                	승인 대기중인 회원목록
              </header>

              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                    <th><i class="icon_cogs"></i>　회원가입일</th>
                    <th><i class="icon_calendar"></i>　아이디</th>
                    <th><i class="icon_pin_alt"></i>　이름</th>
                    <th><i class="icon_mobile"></i>　연락처</th>
                    <th><i class="icon_profile"></i> 이메일</th>
                    <th><i class="icon_cogs"></i> Action</th>
                  </tr>
                  <c:forEach var="DisapprovedMember" items="${DisapprovedMembers}">
                  <tr>
                  
                  
                    <td><fmt:formatDate value="${DisapprovedMember.USER_DATE}"
                     pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td>${DisapprovedMember.USER_ID}</td>
                    <td>${DisapprovedMember.USER_NAME}</td>
                    <td>${DisapprovedMember.USER_PHONE}</td>
                    <td>${DisapprovedMember.USER_EMAIL}</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="javascript:MemberSuccess(${DisapprovedMember.INFO_ID})">승인</a>
                        <!-- <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a> -->
                        <a class="btn btn-danger" href="javascript:DisapprovedMemberDelete(${DisapprovedMember.INFO_ID});">삭제</a>
                      </div>
                    </td>
                  </tr>
                  </c:forEach>  
                </tbody>
              </table>
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
  <!-- nicescroll -->
  <%-- <script src="<%=request.getContextPath()%>/resources/js/jquery.scrollTo.min.js"></script> --%>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="<%=request.getContextPath()%>/resources/js/scripts.js"></script>


</body>

</html>
