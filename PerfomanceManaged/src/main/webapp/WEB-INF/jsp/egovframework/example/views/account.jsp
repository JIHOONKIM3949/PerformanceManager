
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/img/favicon.png"> 
  
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <title>회원가입</title>

  <!-- Bootstrap CSS -->
  <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="<%=request.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet" />
<script src="<%=request.getContextPath()%>/resources/js/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/respond.min.js"></script>
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/resources/js/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/respond.min.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
    
    <script>
    	function CheckForm(){
    		if(document.getElementById('userid').value.trim() == ""){
    			alert("아이디를 입력해주세요");
    			return false;
    		}
    		
    		if(document.getElementById('userpw').value.trim() == ""){
    			alert("비밀번호를 입력해주세요");
    			return false;
    		}
    		
    		if(document.getElementById('userpw2').value.trim() == ""){
    			alert("비밀번호 확인을 입력해주세요");
    			return false;
    		}
    		
    		if(document.getElementById('username').value.trim() == ""){
    			alert("이름을입력해주세요");
    			return false;
    		}
    		
    		if(document.getElementById('useremail').value.trim() == ""){
    			alert("이메일 입력해주세요");
    			return false;
    		}
    		
    		if(document.getElementById('userphone').value.trim() == ""){
    			alert("연락처 입력해주세요");
    			return false;
    		}
    		
    		if(document.getElementById('usercom').value.trim() == 0){
    			alert("소속을 입력해주세요");
    			return false;
    		}
    		
    		if(document.getElementById('userposi').value.trim() == ""){
    			alert("직급 입력해주세요");
    			return false;
    		}
    		
    	}
    	
    	function id_check(){
    		window.open("/home.do", "중복확인", "width=600, height=200, left=200, top=100");
    	}
    </script>
    
    <script type="text/javascript">
    	var text  = "";
    	var count = 0;
    
    	function validate(){
    		var id = document.getElementById('userid');
    		var pw = document.getElementById('userpw');
    		var pw2 = document.getElementById('userpw2');
    		var name = document.getElementById('username');
    		var email = document.getElementById('useremail');
    		var phone = document.getElementById('userphone');
    		var company = document.getElementById('usercom');
    		var position = document.getElementById('userposi');
    		
    		// 정규 표현식
    		var idPattern = /^[A-Za-z]{1}[A-Za-z0-9]{3,19}$/;
			var pwPattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
			var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			var phonePattern = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g;
			
			if(idPattern.test(id.value) == true){
				text += "ID : " + id.value + "\n";
			}
			else{
				alert("아이디를 잘못 입력 하셨습니다.")
			}
    	}
    </script>
    
    <style type="text/css">
    	.singup_label{
    	text-align:left;
    	font-weight: bold;
    	}
    	
    	.valid { color: green; 
    	text-align:left;
    	}
    	
    	.valid, .invalid { 
			font-size: 11px;
			font-weight: bold; 
		}
    	
    </style>
</head>

<body>
  <div class="page-404">
    <p class="text-404"></p>

    <h1 style="bold:3px;">회원 가입</h1>
    <br>
     
             <form action="Singup.do" method="post" role="form" class="contactForm" autocomplete="off" onsubmit="return CheckForm();">
              <div class="form-group">
              	<div class="singup_label">
              	<label class="singup_label" for="ID">아이디</label>
              	</div>
              	
              	<div style="display:block;	">
                	<input type="text" style="width:75%; float:left; disply:inline-block;" name="USER_ID" class="form-control" id="userid" placeholder="ID" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                	<a class="btn btn-default" style="display:inline-block;" href="javascript:id_check()">중복확인</a><br/><br/>
                </div>
                <div class="valid" style="display:block;">아이디를 입력하세요. (영문 소문자, 숫자 입력)</div>
				
				                                
              </div>
              
              
               <div class="form-group">
               <div class="singup_label">
              	<label class="singup_label" for="PW">비밀번호</label>
              	 <input type="hidden" name="USER_TOKEN" class="form-control" value="${token}"/>
              	</div>
                <input type="password" name="USER_PW" class="form-control" id="userpw" placeholder="PASSWORD" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="valid">비밀번호를 입력하세요. (영/대소문자, 숫자 포함)</div>
              </div>
              
              <div class="form-group">
              <div class="singup_label">
              	<label class="singup_label" for="ConfirmPW">비밀번호 확인</label>
              	</div>
                <input type="password" name="USER_PW_CHECK" class="form-control" id="userpw2" placeholder="Confirm Password" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="valid">비밀번호를 다시 입력하세요.</div>
              </div>
              
              <div class="form-group">
	              <div class="singup_label">
	              	<label class="singup_label" for="Name">이름</label>
	              	</div>
                <input type="text" name="USER_NAME" class="form-control" id="username" placeholder="Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="valid">이름을 입력하세요.</div>
              </div>
              
              <div class="form-group">
              	<div class="singup_label">
              	<label class="singup_label" for="Email">이메일</label>
              	</div>
                <input type="email" class="form-control" name="USER_EMAIL" id="useremail" placeholder="Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="valid">이메일을 입력하세요.</div>
              </div>
              
              <div class="form-group">
              	<div class="singup_label">
              	<label class="singup_label" for="phoneNumber">휴대폰 번호 ('-'제외)</label>
              	</div>
                <input type="text" class="form-control" name="USER_PHONE" id="userphone" placeholder="Phone Number" data-rule="email" data-msg="Please enter at least 4 chars"  />
                <div class="valid">휴대폰 번호를 입력하세요.</div>
              </div>
              
              <div class="form-group">
              <div class="singup_label">
              	<label class="singup_label" for="id">소속</label>
              	</div>
              <div class="btn-group" style="width:100%;">
                      <select class="form-control" name="FK_COM_ID" id="usercom">
                                                  <option value="0">==== Please select a Company ====</option>
                                                  <c:forEach var="company" items="${companyList}">
                                                  <option value="${company.COM_ID}">${company.COM_NAME}</option>
                                                  </c:forEach>
                      </select>
                    </div>
              </div>
                        
              <div class="form-group" width="100%">
              	<div class="singup_label">
              	<label class="singup_label" for="id">직급</label>
              	</div>
                <input width="100%" type="text" class="form-control" name="USER_POSI" id="userposi" placeholder="Rank" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject"/>
                <div class="validation"></div>
              </div>
              

              <div class="text-center">
              <button type="submit" class="btn btn-primary btn-lg" style="margin-right:20px;">가입</button>
              <button type="button" onclick="location.href='<%=request.getContextPath()%>/'" class="btn btn-danger btn-lg">취소</button>
              </div>
             </form>
            <br/>
    <!-- <a href="/PerfomanceManaged">돌아가기</a></p> -->
  </div>

  <script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="<%=request.getContextPath()%>/resources/js/jquery.scrollTo.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="<%=request.getContextPath()%>/resources/js/scripts.js"></script>

</body>

</html>
