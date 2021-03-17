<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login - Brand</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets2/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets2/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets2/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets2/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets2/css/untitled.css">
    <!-- 구글 API -->
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="751260527804-2k0lihreprpbr8sd72m473vr6ds57t89.apps.googleusercontent.com">
	<!-- 구글 API -->    
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

<body class="bg-gradient-primary" style="background: rgb(72,182,136);" onload="javascript:signOut(${loginResult})">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-12 col-xl-10">
                <div class="card shadow-lg o-hidden border-0 my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-login-image"
                                 style="background-image: url(&quot;<%=request.getContextPath()%>/resources/assets2/img/dogs/image3.jpeg&quot;);"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h4 class="text-dark mb-4">Welcome Back!</h4>
                                    </div>
                                    <form class="user" onsubmit="return CheckForm(${googletoken});" method="POST"  action="Login.do">
                                        <div class="form-group"><input class="form-control form-control-user" type="text" id="userId" aria-describedby="emailHelp" placeholder="아이디를 입력하세요" name="USER_ID"></div>
                                        <input type="hidden" name="USER_TOKEN" class="form-control" id="COM_ID" placeholder="회사 명" data-rule="minlen:4" value="${googletoken}" data-msg="Please enter at least 4 chars" />
                                        <div class="form-group"><input class="form-control form-control-user" type="password" id="userPw" placeholder="비밀번호를 입력하세요" name="USER_PW"></div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <div class="form-check"><input class="form-check-input custom-control-input" type="checkbox" id="formCheck-1"><label class="form-check-label custom-control-label" for="formCheck-1">Remember Me</label></div>
                                            </div>
                                        </div><button class="btn btn-primary btn-block text-white btn-user" type="submit">Login</button>
                                        <hr>
                                        <!-- <a id="my-signin2"class="btn btn-primary btn-block text-white btn-google btn-user" role="button"><i class="fab fa-google"></i>&nbsp; Login with Google</a> -->
                                        
                                        <div id="my-signin2" style="width: 100%;"></div>
                                        <hr>
                                    </form>
                                    
                                    <div class="text-center"><a class="small" href="forgot-password.html">Forgot Password?</a></div>
                                    <div class="text-center"><a class="small" href="<%=request.getContextPath()%>/account.do">Create an Account!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
    <script src="<%=request.getContextPath()%>/resources/assets2/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets2/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets2/js/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets2/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets2/js/theme.js"></script>
</body>

</html>
