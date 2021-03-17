<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
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

	<!-- 토스트 적용 -->
	<link rel="stylesheet" href="https://uicdn.toast.com/tui-grid/latest/tui-grid.css" />
	<script src="https://uicdn.toast.com/tui-grid/latest/tui-grid.js"></script>
	<!-- 토스트 적용 -->
	
	<!-- jscolor -->
	<script src="<%=request.getContextPath()%>/resources/jscolor-2.4.5/jscolor.js"></script>
	<!-- jscolor -->





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
            <h3 class="page-header"><i class="fa fa-table"></i>업체 정보 관리</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="fa fa-th-list"></i>업체정보 관리</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                	업체정보 리스트
                	
                <!-- 	<a class="btn btn-success">
                	<i class="icon_plus_alt2"></i>
                	업체 정보등록</a> -->
                	
                	 <button type="button" value="#FF0000" class="btn btn-success" data-toggle="modal" data-target="#exampleModal" style="float:right;">
  업체정보 등록
</button>
              </header>
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			 <form action="addCompany.do" method="post" role="form" class="contactForm" autocomplete="off" >
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-heax`der">
			     
			        <h5 class="modal-title" id="exampleModalLabel">업체 정보등록</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			         
              <div class="form-group">
                <input type="text" name="COM_NAME" class="form-control" id="userid" placeholder="회사 명" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>                
              </div>
              
              <div class="form-group">
                <input type="text" name="COM_ADDR" class="form-control" id="COM_ADDR" placeholder="회사 주소" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              
              <div class="form-group">
                <input type="text" class="form-control" name="COM_PHONE" id="COM_PHONE" placeholder="회사 연락처" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
              
              
              <div class="form-group">
              <div class="btn-group" style="width:100%;">
                      <select class="form-control" name="USER_COM">
                                                  <option value="not">- 담당자 선택(필수) -</option>
                                                  <option value="iworks">김두식</option>
                                                  <option value="mac">마동석</option>
                                                  <option value="berger">선풍기</option>
                      </select>
                    </div>
              </div>
              
			  <div class="form-group">
              		색상: <input type="text" class="form-control" name="COM_COLOR" id="COM_COLOR" data-jscolor="{}">
              </div>
			      </div>
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-primary">저장</button>
			        <button type="submit" class="btn btn-secondary" data-dismiss="modal">취소</button>
			      </div>
			    </div>
			  </div>
			   </form>
			</div>
			<!-- Modal End -->
			
			

              <table class="table table-bordered">
                <tbody>
                  <tr>
                  
                    <th><i class="icon_cogs"></i>　업체명</th>
                    <th><i class="icon_calendar"></i>　등록일</th>
                    <th><i class="icon_pin_alt"></i>　업체 주소</th>
                    <th><i class="icon_mobile"></i>　연락처</th>
                    <th><i class="icon_cogs"></i> Action</th>
                  
                  </tr>
				<c:forEach var="company" items="${companylist}" varStatus="status">
                  <tr>
                  <fmt:formatDate value="${board.bdate}"
											pattern="yyyy-MM-dd HH:mm:ss" /></li>
                    <td>${company.COM_NAME}</td>
                    <td><fmt:formatDate value="${company.COM_DATE}"
                     pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td>${company.COM_ADDR}</td>
                    <td>${company.COM_PHONE}</td>
                    
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="javascript:com_edit();"  data-toggle="modal" data-target="#exampleModal${status.index}"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-danger" href="javascript:com_delete(${company.COM_ID});"><i class="icon_close_alt2"></i></a>
                      </div>      
                    </td>
                    
            <!-- Modal -->
			<div class="modal fade" id="exampleModal${status.index}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			 <form action="editCompany.do" method="post" role="form" class="contactForm" autocomplete="off" >
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-heax`der">
			     
			        <h5 class="modal-title" id="exampleModalLabel">업체 정보등록</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			         
              <div class="form-group">
              	 <input type="hidden" name="COM_ID" class="form-control" id="COM_ID" placeholder="회사 명" data-rule="minlen:4" value="${company.COM_ID}" data-msg="Please enter at least 4 chars" />
                <input type="text" name="COM_NAME" class="form-control" id="userid" placeholder="회사 명" data-rule="minlen:4" value="${company.COM_NAME}" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>                
              </div>
              
              <div class="form-group">
                <input type="text" name="COM_ADDR" class="form-control" id="COM_ADDR" placeholder="회사 주소" data-rule="minlen:4" value="${company.COM_ADDR}" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              
              <div class="form-group">
                <input type="text" class="form-control" name="COM_PHONE" id="COM_PHONE" placeholder="회사 연락처" data-rule="milen:10" value="${company.COM_PHONE}" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
              
              
              <div class="form-group">
              <div class="btn-group" style="width:100%;">
                      <select class="form-control" name="USER_COM">
                                                  <option value="not">- 담당자 선택(필수) -</option>
                                                  <option value="iworks">김두식</option>
                                                  <option value="mac">마동석</option>
                                                  <option value="lotte">문재인</option>
                                                  <option value="berger">선풍기</option>
                      </select>
                    </div>
              </div>
			      </div>
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-primary">저장</button>
			        <button type="submit" class="btn btn-secondary" data-dismiss="modal">취소</button>
			       
			      </div>
			    </div>
			  </div>
			   </form>
			</div>
			<!-- Modal End -->
                  </tr>
                  </c:forEach>  
                  <script>

                      function com_delete(comid){
                    	  if(confirm("정말 삭제하시겠습니까?") == true){
                    		  $.ajax({
                    			  url:"DeleteCompany.do",
                    			  method:"get",
                    			  data:{comid:comid},
                    			  success:function(data){
                    				  alert("삭제 되었습니다.");
                    				  location.href = "Company.do";
                    			  }
                    		  });
                    		  
                    		  
                    	  }
                    	  else{
                    		  return;
                    	  }
                      }
                    	  function com_edit(comid){
                    	  if(confirm("수정 하시겠습니까?") == true){
                    		  $.ajax({
                    			  url:"editCompany.do",
                    			  method:"get",
                    			  data:{comid:comid},
                    			  success:function(data){
                    				  alert("수정 되었습니다.");
                    				  location.href = "Company.do";
                    			  }
                    		  });	  
                    	  }
                      	}
                      
                      </script>
                </tbody>
              </table>
              
              
              <!-- 토스트 -->
              <div id="grid"></div>
	<script>
        // 웹서버에서 GRID 데이터를 가져오는 방법을 설정한다.
        // GRID 를 생성한다.
		var grid = new tui.Grid( {
			el: document.getElementById('grid'),
			
			columns: [
				{
					header: '이름',
					name: 'name',
					editor: 'text',
					onKeyDown(ev){
						console.log('sdfsdfsdfsdfsdf');
					}
				},
				{
					header: '나이',
					name: 'value',
					editor: 'text'
				}
			],
			data: [	
					{
						rowKey: 1,
						name: "홍길동",
						value: "20세"
					},
					{
						name: "홍길동",
						value: "20세"
					}
					
				]
		});
        
     
        /* 마우스 클릭시 수정 이벤트 */
        grid.on('mousedown', ev=>{
        	console.log('눌림');
        	console.log(ev.rowKey+"/"+ev.columnName);
        	grid.startEditing(ev.rowKey, ev.columnName, true);
        	
					        	/* 키보드 입력 이벤트  */
					        	/*
					        	window.addEventListener("keydown", function(e) {
					        	    if([32, 37, 38, 39, 40].indexOf(e.keyCode) > -1) {
					        	    	console.log(ev.rowKey+"/"+ev.columnName);    	
					        	    	grid.finishEditing(ev.rowKey,ev.columnName);
					        	        console.log("방향키 down");
					        	    }
					        	}, false);
					        	*/
        	}
        }); 
   
	</script>
 --> -->
<!-- 토스트 -->
              
              
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
