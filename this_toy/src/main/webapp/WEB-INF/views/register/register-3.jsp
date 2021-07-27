<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=980" />
<link rel="stylesheet" href="/css/style.css">
<link href="/css/register.css" rel="stylesheet">
<link href="/css/register-3.css" rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<title>Document</title>
</head>

<body>
	<%@ include file="../includes/header.jsp"%>
	<main>
		<div class="title">
			<span>회원가입</span>
		</div>
		<div class="register-main">
			<div class="register-menu">
				<span class="one">약관동의</span> <i class='bx-fw bx bxs-chevron-right'></i>
				<span class="two">회원입력</span> <i class='bx-fw bx bxs-chevron-right'></i>
				<span class="three">회원가입완료</span>
			</div>
			<div class="wrap">
				<div class="register-success">
					<div class="register-logo">
						<i class=' bx bx-check-circle bx-big'></i>
					</div>
					<div class="content">
						<h2>
							This Toy <span>회원가입이 완료</span>되었습니다
						</h2>
						<p>회원님은 ThisToy의 모든 기능을 사용하실 수 있습니다 회원접속 후 이용가능 합니다</p>
					</div>
					<div class="register-success-btn">
						<a href="/login/login">로그인페이지로 이동</a>
					</div>
				</div>
			</div>
		</div>
	</main>
<%@ include file="../includes/footer.jsp" %>
	<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
	<script src="/js/register-1.js"></script>
</body>

</html>