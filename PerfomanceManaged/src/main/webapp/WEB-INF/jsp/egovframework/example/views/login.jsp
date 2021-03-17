<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="kr" >

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <meta name="google-signin-client_id" content="751260527804-2k0lihreprpbr8sd72m473vr6ds57t89.apps.googleusercontent.com">
  <!-- <link rel="shortcut icon" href="img/favicon.png"> -->

  <title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin Template</title>

  <!-- Bootstrap CSS -->
  <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="<%=request.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/resources/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet" />
  
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="js/htmlq5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

     <script>
    	function CheckForm(token){

    		var userId = document.getElementById('userId').value;
    		var userPw = document.getElementById('userPw').value;
			if(userId == ""){
    			alert("아이디를 입력하세요 ");
    			return false;
    		}else if(userPw == ""){
    			alert("비밀번호를 입력하세요");
    			return false;
    		}
			if(token != null){
				$.ajax({
					url:"Login.do",
					method:"get",
					data:{token:token},
					success:function(data){
						alert("토큰 전송");
					}
					
				});
			}
			
    	}
    	
    	 function onSuccess(googleUser) {
    		 
    		 signOut();
    	      console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
    		  var profile = googleUser.getBasicProfile();
    		  var id_token = googleUser.getAuthResponse().id_token;
    		  
    		  console.log('Token : '+ id_token);
    		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    		  console.log('Name: ' + profile.getName());
    		  console.log('Image URL: ' + profile.getImageUrl());
    		  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
    		 
    		  $.ajax({
    			  url:"GetToken.do",
    			  method:"post",
    			  data:{id_token:id_token},
    			  error:function(request,status,error){
    				  alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
    			  },
    			  success:function(data){
    				  
      				  if(data.result == "success"){
    					  location.href = "home.do";
    				  }else if(data.result == "failed"){
    					  if(confirm("연동된 계정이 존재하지 않습니다. 기존 계정이 존재합니까?")==true){
    						  alert("기존 아이디로 로그인하시기 바랍니다.");
    						  location.href="LoginPage.do?google="+id_token;
    					  }
    					  else{
    						  location.href = "account.do?google="+id_token;
    					  }
    				  }   
    			  }
     		});
    	    }
    	    function onFailure(error) {
    	      console.log(error);
    	    }
    	    function renderButton() {
    	      gapi.signin2.render('my-signin2', {
    	        'scope': 'profile email',
    	        'width': 307,
    	        'height': 50,
    	        'longtitle': true,
    	        'theme': 'dark',
    	        'onsuccess': onSuccess,
    	        'onfailure': onFailure
    	      });
    	    }
    </script>
    
    <script type="text/javascript">
    
/*     var revokeAllScopes = function() {
    	  gapi.auth2.getAuthInstance().disconnect();
    	}
 */
    
    function signOut(result) {
	 	/* alert("실행");
	 	alert(result);
	 	if(result == "AccountLock"){
	 		alert("잠긴 계정입니다. 관리자에게 문의하세요");
	 	}else if(result == "NotMatchPassword"){
	 		alert("비밀번호가 틀렸습니다");
	 	}else if(result == "NotMatchId"){
	 		alert("일치하는 회원정보가 없습니다.");
	 	} */
	 
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
          console.log('User signed out.');
        });
        
        var revokeAllScopes = function() {
        	  gapi.auth2.getAuthInstance().disconnect();
        	}
      }
    </script>

</head>

<body class="login-img3-body" onload="javascript:signOut(${loginResult})">

  <div class="container">

    <form class="login-form" onsubmit="return CheckForm(${googletoken});" method="POST"  action="Login.do" >
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="text" id="userId" name="USER_ID" class="form-control" placeholder="USER ID" autofocus>
          <input type="hidden" name="USER_TOKEN" class="form-control" id="COM_ID" placeholder="회사 명" data-rule="minlen:4" value="${googletoken}" data-msg="Please enter at least 4 chars" />
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" id="userPw" name="USER_PW" class="form-control" placeholder="Password">
        </div>
        <label class="checkbox">
                <input type="checkbox" value="remember-me"> 기억하기
                <span class="pull-right"> <a href="#"> 비밀번호 찾기</a></span>
        </label>
        <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
        <button type="button" class="btn btn-success btn-lg btn-block" style="margin-bottom: 6px;"  onclick='location.href="<%=request.getContextPath()%>/account.do"'>Signup</button>
		<div id="my-signin2" ></div>
			<a href="#" onclick="signOut();">Sign out</a>
      </div>
    </form>
    
    <div class="text-right">
      <div class="credits">

        </div>
    </div>
  </div>
<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
 <script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
</body>

</html>
