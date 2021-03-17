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
    
    <script type="text/javascript" onload="SelectListIndicator()"">
	    function SelectListIndicator(){
 	    	$.ajax({
				url : "GetIndicatorList.do",
				method : "get",
				success : function(data) {
					$("#IndicatorListArea").html(data);
				}
			}); 
	    }
    </script>
</head>

<body onload="SelectListIndicator()">
  <!-- container section start -->
  <section id="container" class="">
    <jsp:include page="/WEB-INF/jsp/egovframework/example/include/header.jsp" />
    <jsp:include page="/WEB-INF/jsp/egovframework/example/include/menu.jsp" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-table"></i>지표 정보관리</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="fa fa-th-list"></i>지표정보 관리</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                	지표 정보
                	
          	 <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal" style="float:right;">지표정보 등록</button>

              </header>

              <table class="table table-striped table-advance table-hover">
                <tbody id="IndicatorListArea">
                  <tr>
                    <th><i class="icon_cogs"></i>　유형명</th>
                    <th><i class="icon_calendar"></i>　지표명</th>
                    <th><i class="icon_pin_alt"></i>　지표 내용</th>
                    <th><i class="icon_pin_alt"></i>　등록 날짜</th>
                    <th><i class="icon_mobile"></i>　지표 통계 단위</th>
                    <!-- <th><i class="icon_profile"></i> 통계 결과 단위</th> -->
                    <th><i class="icon_cogs"></i> 수정 /삭제</th>
                  </tr>
                  
	<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			 <form action="Add_Indicator.do" method="post" role="form" class="contactForm" autocomplete="off" >
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-heax`der">
			     
			        <h5 class="modal-title" id="exampleModalLabel">지표 정보등록(저장미구현)</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			  
			  <div class="form-group">
              <div class="btn-group" style="width:100%;">
                      <select class="form-control" name="FK_TYP_ID">
                                                  <option value="0">- 유형 선택(필수) -</option>
                                             <c:forEach var="item" items="${TypeList}">
                                                  <option value="${item.TYP_ID}">${item.TYP_TITLE}</option>
                                             </c:forEach>
                                                  <option value="mac">유형1</option>
                                                  <option value="lotte">유형2</option>
                                                  <option value="berger">유형3</option>
                      </select>
                    </div>
              </div>       
              <div class="form-group">
                <input type="text" name="COM_NAME" class="form-control" id="userid" placeholder="지표 명" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>                
              </div>
              
              <div class="form-group">
                <input type="text" name="COM_ADDR" class="form-control" id="COM_ADDR" placeholder="지표 설명" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              			  <div class="form-group">
              <div class="btn-group" style="width:100%;">
                      <select class="form-control" name="FK_TYP_ID">
                                                  <option value="0">- 측정 값 선택(필수) -</option>
                                             <c:forEach var="item" items="${TypeList}">
                                                  <option value="${item.TYP_ID}">${item.TYP_TITLE}</option>
                                             </c:forEach>
                                                  <option value="mac">갯수</option>
                                                  <option value="lotte">점수</option>
                                                  <option value="berger">퍼센트</option>
                      </select>
                    </div>
              </div> 
             
              
              

              
            
			      </div>
			      <div class="modal-footer">
			        
			        <button type="submit" class="btn btn-primary">저장</button>
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
			       
			      </div>
			    </div>
			  </div>
			   </form>
			</div>
			<!-- Modal End -->
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
