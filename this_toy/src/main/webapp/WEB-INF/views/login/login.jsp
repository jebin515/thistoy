<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<title>Animated Login Form</title>
		<link rel="stylesheet" type="text/css" href="/css/login.css">
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
		<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="google-signin-scope" content="profile email">
		<meta name="google-signin-client_id"
			content="1035257445971-ak3jovlghqfiqi6hf6mu310d4dhed13n.apps.googleusercontent.com">
		<script src="https://apis.google.com/js/platform.js" async defer></script>
	</head>

	<body>

		<div class="container">
			<div class="login-content">
				<main>
					<form action="/login/loginsuccess" method="post">
						<div>
							<a href="/" class="logo"></a>
						</div>
						<div class="input-div one">
							<div class="i">
								<i class='bx-fw bx bx-user'></i>
							</div>
							<div class="div">
								<h5>아이디</h5>
								<input type="text" class="input" name="userId">
							</div>
						</div>
						<div class="input-div pass">
							<div class="i">
								<i class='bx-fw bx bx-lock-alt'></i>
							</div>
							<div class="div">
								<h5>비밀번호</h5>
								<input type="password" class="input" name="userPasswd">
							</div>
						</div>
						<div class="gomid">
							<div class="checkbox">
								<label> 
								<a><input type="checkbox" id="idSaveCheck" />아이디 기억</a>
								</label>
							</div>
							<ul>							
								<li>
									<a href="../login/findpw"
										onclick="window.open(this.href, '_blank', 'width=900px,height=500px,toolbars=no,scrollbars=no'); return false;">비밀번호
										찾기</a> 
								<li>
								
								<li>
									<a>|</a>
								</li>
								
								<li>
									<div>
										<a href="../register/register-1">회원가입</a>
									</div>
								<li>
								
							</ul>
						</div>
						<input type="submit" class="btn" value="로그인">
					</form>
					<div class="login-api">
						<form name="socialLogin">
							<div class="social">
								<div class="k-signin">
									<img src="/img/kakao.png" width=50; id="kao" onclick="kakaoLogin()">
								</div>

								<div class="g-signin2" data-onsuccess="onSignIn" data-width="50" data-height="50"
									data-longtitle="false"></div>

								<div class="n-signin" id="naver_id_login">
									<img src="/img/naver1.png" width=50; height=50; id="na" onclick="naverLogin()" />
								</div>

								<input type="hidden" id="userId" name="userId" value="" />
								<input type="hidden" id="userSocial" name="userSocial" value="" />
							</div>
						</form>
					</div>
			</div>

			<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
			<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
			<script type="text/javascript" src="/js/login.js"></script>
			<script type="text/javascript" src="/js/loginremember.js"></script>
			<script type="text/javascript" src="/js/login-slide.js"></script>
			<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
				charset="utf-8"></script>
			<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
			<!-- 		<script type="text/javascript" src="/js/kakao.js"></script> -->
			<script type="text/javascript">
				window.history.forward();
				function noBack() {
					window.history.forward();
				}

				function onSignIn(googleUser) {
					var profile = googleUser.getBasicProfile();
					console.log("ID: " + profile.getId());
					var email = profile.getEmail();
					$('#userId').val(email);
					$('#userSocial').val('구글');
					console.log("Email: " + email);
					var frm = document.socialLogin;
					frm.action = "/login/socailLogin";
					frm.method = "get";
					frm.submit();
				}

				//카카오로그인
				function kakaoLogin() {
					window.Kakao.init("13619e9636e06d61523807197bc1058b");
					window.Kakao.Auth.login({
						scope: 'profile_nickname, account_email',
						success: function (authObj) {
							console.log(authObj);
							window.Kakao.API.request({
								url: '/v2/user/me',
								success: res => {
									const kakao_account = res.kakao_account;
									var email = kakao_account.email;
									console.log("email : " + email);
									$('#userId').val(email);
									$('#userSocial').val('카카오');
									console.log($('#userId').val());
									var frm = document.socialLogin;
									frm.action = "/login/socailLogin";
									frm.method = "get";
									frm.submit();
								}
							});
						}
					});
				}

				//네이버로그인
				var naver_id_login = new naver_id_login("5sh4TrG6DyRbb_FeQOmr", "http://thistoy.duckdns.org/login/navercallback");
				var state = naver_id_login.getUniqState();
				naver_id_login.setButton("green", 1, 50);
				naver_id_login.setDomain("http://thistoy.duckdns.org");
				naver_id_login.setState(state);
				//naver_id_login.setPopup();
				naver_id_login.init_naver_id_login();

			</script>
	</body>

	</html>