<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Animated Login Form</title>
	<link rel="stylesheet" type="text/css" href="/css/login.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="google-signin-client_id"
		content="1035257445971-ak3jovlghqfiqi6hf6mu310d4dhed13n.apps.googleusercontent.com">

</head>

<body>
	<img class="wave" src="/img/wave.png">
	<div class="container">
		<div class="flex">
			<div class="container-flex">
				<h2 class="new-item">NEW ITEM</h2>
				<div class="swiper-container-new mySwiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="/img/1.jpg"></div>
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
						<div class="swiper-slide"><img src="/img/1.jpg"></div>
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
					<li class="drop-down"><a href="#"><i class='bx-fw bx bxs-directions bx-tada-hover bx-xs'></i>전체</a>
						<ul>
							<li><a href="#">공지사항</a></li>
							<li><a href="#">사이트안내</a></li>
							<li><a href="#">신제품</a></li>
							<li><a href="#">인기제품</a></li>
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
				</ul>
				<ul>
					<li><a href="#">공지사항</a></li>
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
					<li class="drop-down"><a href="#">고객센터</a></li>
				</ul>
			</div>
			</nav>
			<main>
				<form action="/login/loginsuccess" method="post">
					<div><a href="#" class="logo"></a></div>
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
					<a href="#">비밀번호 찾기</a>
					<input type="submit" class="btn" value="로그인">
					<div class="login-api">
						<!-- <a href="#"><img src="/img/naver1.png"></a> -->
						<a id="naver_id_login" class="api">네이버로그인</a>
						<div class="g-signin2" data-width="300" data-height="50" data-longtitle="true"></div>
						<a href="javascript:kakaoLogin();"><img
								src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222"
								class="api" /></a>
					</div>

				</form>
		</div>
	</div>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script type="text/javascript" src="/js/login.js"></script>
	<script type="text/javascript" src="/js/login-slide.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="/js/kakao.js"></script>
	<script type="text/javascript" src="/js/google.js"></script>
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("wAn7o12sEkZPjEGZTzY6", "http://localhost:5500/loginsuccess.html");
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("green", 3, 60);
		naver_id_login.setDomain("http://localhost:5500/login.html");
		naver_id_login.setState(state);
		naver_id_login.setPopup();
		naver_id_login.init_naver_id_login();
	</script>
</body>

</html>