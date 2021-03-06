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
            <h3 class="page-header"><i class="fa fa-table"></i>???????????? ??????</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="fa fa-th-list"></i>???????????? ??????</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                	???????????? ??????
              </header> 
            
            
			<script>
				<!-- ?????? ??? ?????? ????????????-->
			</script>


              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                    <th><i class="icon_cogs"></i>????????????</th>
                    <th><i class="icon_calendar"></i>????????????</th>
                    <th><i class="icon_calendar"></i>???????????????</th>
                    <th><i class="icon_pin_alt"></i>?????????</th>
                    <th><i class="icon_profile"></i> ?????????</th>
                    <th><i class="icon_mobile"></i>????????????</th>
                    <th><i class="icon_mobile"></i>?????????</th>
                    <th><i class="icon_mobile"></i>?????????</th>
                    <th><i class="icon_mobile"></i>?????????</th>
                    <th><i class="icon_cogs"></i> Action</th>
                  </tr>
                  <c:forEach var="user" items="${UserList}" varStatus="status">
                  <!-- Modal -->
			<div class="modal fade" id="exampleModal${status.index}"
				tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
				aria-hidden="true">
				<form action="editCompany.do" method="post" role="form"
					class="contactForm" autocomplete="off">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-heax`der">

								<h5 class="modal-title" id="exampleModalLabel">?????? ????????????</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							
							<div class="modal-body">
								<div class="form-group">
									<input type="hidden" name="INFO_ID" class="form-control"
										id="INFO_ID" placeholder="??????PK" data-rule="minlen:4"
										value="${user.INFO_ID}"
										data-msg="Please enter at least 4 chars" /> <input
										type="text" name="USER_ID" class="form-control" id="userid"
										placeholder="?????? ?????????" data-rule="minlen:4"
										value="${user.USER_ID}"
										data-msg="Please enter at least 4 chars" />
									<div class="validation"></div>
								</div>

								<div class="form-group">
									<input type="text" name="USER_ID" class="form-control"
										id="USER_ID" placeholder="?????? ??????" data-rule="minlen:4"
										value="${user.USER_NAME}"
										data-msg="Please enter at least 4 chars" />
									<div class="validation"></div>
								</div>

								<div class="form-group">
									<input type="text" class="form-control" name="USER_PHONE"
										id="USER_PHONE" placeholder="?????? ?????????" data-rule="milen:10"
										value="${user.USER_PHONE}"
										data-msg="Please enter a valid email" />
									<div class="validation"></div>
								</div>

								<div class="form-group">
									<input type="text" class="form-control" name="USER_EMAIL"
										id="USER_EMAIL" placeholder="?????? ?????????" data-rule="milen:10"
										value="${user.USER_EMAIL}"
										data-msg="Please enter a valid email" />
									<div class="validation"></div>
								</div>

								<div class="form-group">
									<div class="btn-group" style="width: 100%;">
										<select class="form-control" id="USER_COM" name="USER_COM">
											<option value="not">- ?????? ?????? -</option>
											<option value="iworks">?????????</option>
											<option value="mac">?????????</option>
											<option value="lotte">?????????</option>
											<option value="berger">?????????</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<input type="text" class="form-control" name="USER_POSI"
										id="USER_POSI" placeholder="?????? ??????" data-rule="milen:10"
										value="${user.USER_POSI}"
										data-msg="Please enter a valid email" />
									<div class="validation"></div>
								</div>
							</div>
							
							<div class="modal-footer">

								<button type="submit" class="btn btn-primary">??????</button>
								<button type="submit" class="btn btn-secondary"
									data-dismiss="modal">??????</button>

							</div>
						</div>
					</div>
				</form>
			</div>
			<!-- Modal End -->
                  
                  
                  
                  <tr>
                  <td><fmt:formatDate value="${user.USER_DATE}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td>${user.USER_ID}</td>
                    <td><a class="btn btn-default btn-sm" href="javascript:ResetPW(${user.INFO_ID})" title="Bootstrap 3 themes generator">???????????? ?????????</a></td>
                    <td>${user.USER_NAME}</td>
                    <td>${user.USER_PHONE}</td>
                    <td>${user.USER_EMAIL}</td>
                    <td>${user.COM_NAME}</td>
                    <td>${user.USER_POSI}</td>
                    <td>
                    	<c:if test="${user.USER_FAILE_COUNT == 5}">
                    		<a class="btn btn-default btn-sm" href="javascript:UnLock(${user.INFO_ID})" title="Bootstrap 3 themes generator">????????????</a>
                    	</c:if>
                    	<c:if test="${user.USER_FAILE_COUNT != 5}">
                    		???????????? ??????
                    	</c:if>
                    
                    </td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" data-toggle="modal" data-target="#exampleModal${status.index}" href="#">??????</a>
                       <!-- <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a> -->
                        <a class="btn btn-danger" href="javascript:member_Delete(${user.INFO_ID})">??????</a>
                      </div>
                    </td>
                  </tr>
                  
                  
  				  </c:forEach>
  				  
  				  <script type="text/javascript">
  				  	function member_Delete(infoID){
                  	  if(confirm("?????? ?????????????????????????") == true){
                		  $.ajax({
                			  url:"DeleteMember.do",
                			  method:"get",
                			  data:{infoID:infoID},
                			  success:function(data){
                				  alert("?????? ???????????????.");
                				  location.href = "Member.do";
                			  }
                		  });
                	  }
                	  else{
                		  return;
                	  }
  				  	}
  				  	function ResetPW(infoID){
                    	  if(confirm("????????? ??????????????? '123'?????????.\n?????? ????????? ???????????????????") == true){
                    		  $.ajax({
                    			  url:"ResetPw.do",
                    			  method:"get",
                    			  data:{infoID:infoID},
                    			  success:function(data){
                    				  alert("????????? ???????????????.");
                    				  location.href = "Member.do";
                    			  }
                    		  });
                    	  }
                    	  else{
                    		  return;
                    	  }	
  				  	}
  				  	
  				  	function UnLock(infoID){
  				  	if(confirm("?????? ???????????? ????????? ?????? ???????????????????") == true){
              		  $.ajax({
              			  url:"UnLockUser.do",
              			  method:"get",
              			  data:{infoID:infoID},
              			  success:function(data){
              				  alert("???????????? ???????????????.");
              				  location.href = "Member.do";
              			  }
              		  });
              	  }
              	  else{
              		  return;
              	  }	
  				  	}
  				  </script>
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
