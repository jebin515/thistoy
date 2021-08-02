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
		<img class="wave" src="/img/wave.png">
		<div class="container">
			<div class="flex">
				<div class="container-flex">
					<h2 class="new-item">NEW ITEM</h2>
					<div class="swiper-container-new mySwiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="/img/1.jpg">
							</div>
							<div class="swiper-slide">Slide 2</div>
							<div class="swiper-slide">Slide 3</div>
							<div class="swiper-slide">Slide 4</div>
							<div class="swiper-slide">Slide 5</div>
							<div class="swiper-slide">Slide 6</div>
							<div class="swiper-slide">Slide 7</div>
							<div class="swiper-slide">Slide 8</div>
							<div class="swiper-slide">Slide 9</div>
						</div>
						<div class="swiper-pagination-new"></div>
					</div>
				</div>
				<div class="container-flex">
					<h2 class="hot-item">HOT ITEM</h2>
					<div class="swiper-container-hot mySwiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="/img/1.jpg">
							</div>
							<div class="swiper-slide">Slide 2</div>
							<div class="swiper-slide">Slide 3</div>
							<div class="swiper-slide">Slide 4</div>
							<div class="swiper-slide">Slide 5</div>
							<div class="swiper-slide">Slide 6</div>
							<div class="swiper-slide">Slide 7</div>
							<div class="swiper-slide">Slide 8</div>
							<div class="swiper-slide">Slide 9</div>
						</div>
						<div class="swiper-pagination-hot"></div>
					</div>
				</div>
			</div>

			<div class="login-content">
				<div class="menu">
					<ul>
						<li class="drop-down"><a href="#"><i
									class='bx-fw bx bxs-directions bx-tada-hover bx-xs'></i>전체</a>
							<ul>
								<li><a href="#">공지사항</a></li>
								<li><a href="#">사이트안내</a></li>
								<li><a href="#">신제품</a></li>
								<li><a href="#">인기제품</a></li>
								<li><a href="#">판매글작성</a></li>
								<li class="drop-down"><a href="#">카테고리</a>
									<ul>
										<li><a href="#">피규어</a></li>
										<li><a href="#">미니어쳐</a></li>
										<li><a href="#">RC카</a></li>
										<li class="drop-down"><a href="#">기타</a>
											<ul>
												<li><a href="#">슬라임</a></li>
												<li><a href="#">굿즈</a></li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li class="drop-down"><a href="#"><i class='bx-fw bx  bx-tada-hover bx-xs'></i>카테고리</a>
							<ul>
								<li class="drop-down"><a href="">피규어</a>
									<ul>
										<li><a href="#">애니</a></li>
										<li><a href="#">게임</a></li>
										<li><a href="#">연예인</a></li>
									</ul>
								</li>
								<li class="drop-down"><a href="">하우스</a>
									<ul>
										<li><a href="#">소형</a></li>
										<li><a href="#">중형</a></li>
										<li><a href="#">대형</a></li>
									</ul>
								</li>
								<li class="drop-down"><a href="">RC</a>
									<ul>
										<li><a href="#">육</a></li>
										<li><a href="#">해</a></li>
										<li><a href="#">공</a></li>
									</ul>
								</li>
								<li class="drop-down"><a href="">기타</a>
									<ul>
										<li><a href="#">슬라임</a></li>
										<li><a href="#">굿즈</a></li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
					<ul>
						<li class="drop-down"><a href="#">신제품/인기제품</a>
							<ul>
								<li><a href="#">신제품</a></li>
								<li><a href="#">인기제품</a></li>
							</ul>
						</li>
					</ul>
					<ul>
						<li><a href="#">공지사항</a></li>
					</ul>
					<ul>
						<li class="drop-down"><a href="#">고객센터</a></li>
					</ul>
				</div>
				</nav>
				<main>
					<form action="/login/loginsuccess" method="post">
						<div>
							<a href="#" class="logo"></a>
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
								<label> <a><input type="checkbox" id="idSaveCheck" />
										아이디 기억</a>
								</label>
							</div>
							<div>
								<a href="../register/register-1">회원가입</a>
							</div>
							<a href="../login/findpw"
								onclick="window.open(this.href, '_blank', 'width=900px,height=500px,toolbars=no,scrollbars=no'); return false;">비밀번호
								찾기</a>
						</div>
						<input type="submit" class="btn" value="로그인">
					</form>
					<div class="login-api">
						<form name="socialLogin">
						
							<div class="k-signin">
								<img src="/img/kakao1.png" width=25; id="kao" onclick="kakaoLogin()" />
							</div>
							
							<div class="g-signin2" data-onsuccess="onSignIn" data-width="25" data-height="25" data-longtitle="false"></div>
								
							<div class="n-signin" id="naver_id_login">
								<img src="/img/naver1.png" width=25; id="na" onclick="naverLogin()" />
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
		<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
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
			naver_id_login.setButton("green", 1, 25);
			naver_id_login.setDomain("http://thistoy.duckdns.org");
			naver_id_login.setState(state);
			//naver_id_login.setPopup();
			naver_id_login.init_naver_id_login();

		</script>
	</body>

	</html>