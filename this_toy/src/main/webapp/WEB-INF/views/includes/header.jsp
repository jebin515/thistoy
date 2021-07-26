<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/css/header.css">

<!-- <script defer> -->
<%-- 	var result = "<c:out value='${fail}'/>"; --%>
<!-- 	function fail() { -->
<!-- 		alert('로그인시 이용가능합니다.'); -->
<!-- 	} -->
<!-- 	if (result == 'fail') { -->
<!-- 		fail(); -->
<!-- 	} -->
<!-- </script> -->
<header id="header">
	<c:if test="${empty authInfo.userId}">
	<div class="header-full">
		<a href="#" class="logo">
			<nav class="header_nav">
				<div class="header_menu">
					<a href="/login/login" class="header_login"><i
						class='bx-fw bx bxs-rocket bx-tada-hover'></i>로그인</a> <a href="#"
						class="header_register"><i
						class='bx-fw bx bxs-user-plus bx-tada-hover'></i>회원가입</a>
				</div>
			</nav>
	</div>
	</c:if>
	<c:if test="${not empty authInfo.userId}">
	<div class="header-full">
		<a href="#" class="logo">
			<nav class="header_nav">
				<div class="header_menu">
					<a href="/login/logout" class="header_login">  <i
						class='bx-fw bx bxs-rocket bx-tada-hover'></i>로그아웃</a> <a href="#"
						class="header_register"><i
						class='bx-fw bx bxs-user-plus bx-tada-hover'></i>회원가입</a>
						<p> 반갑습니다 ${authInfo.userName}님</p>
				</div>
			</nav>
	</div>
	</c:if>
</header>
<div class="menu">
	<ul>
		<li class="drop-down"><a href="#"><i
				class='bx-fw bx bxs-directions bx-tada-hover bx-xs'></i>전체</a>
			<ul>
				<li><a href="#">공지사항</a></li>
				<li><a href="#">사이트안내</a></li>
				<li><a href="#">신제품</a></li>
				<li><a href="#">인기제품</a></li>
				<li><a href="#">판매글 작성</a></li>
				<li class="drop-down"><a href="#">카테고리</a>
					<ul>
						<li class="drop-down"><a href="#">피규어</a>
							<ul>
								<li><a href="#">애니</a></li>
								<li><a href="#">게임</a></li>
								<li><a href="#">연예인</a></li>
							</ul></li>
						<li class="drop-down"><a href="#">미니어쳐</a>
							<ul>
								<li><a href="#">소형</a></li>
								<li><a href="#">중형</a></li>
								<li><a href="#">대형</a></li>
							</ul></li>
						<li><a href="#">RC카</a></li>
						<li class="drop-down"><a href="#">기타</a>
							<ul>
								<li><a href="#">슬라임</a></li>
								<li><a href="#">굿즈</a></li>
							</ul></li>
					</ul></li>
			</ul></li>
	</ul>
	<ul>
		<li><a href="#">공지사항</a></li>
	</ul>
	<ul>
		<li><a href="#">사이트안내</a></li>
	</ul>
	<ul>
		<li class="drop-down"><a href="#">신제품/인기제품</a>
			<ul>
				<li><a href="#">신제품</a></li>
				<li><a href="#">인기제품</a></li>
			</ul></li>
	</ul>
	<ul>
		<li class="drop-down"><a href="#">고객센터</a></li>
	</ul>
	<ul>
		<li class="drop-down"><a href="#">카테고리</a>
			<ul>
				<li class="drop-down"><a href="#">피규어</a>
					<ul>
						<li><a href="#">애니</a></li>
						<li><a href="#">게임</a></li>
						<li><a href="#">연예인</a></li>
					</ul></li>
				<li class="drop-down"><a href="#">미니어쳐</a>
					<ul>
						<li><a href="#">소형</a></li>
						<li><a href="#">중형</a></li>
						<li><a href="#">대형</a></li>
					</ul></li>
				<li><a href="#">RC카</a></li>
				<li class="drop-down"><a href="#">기타</a>
					<ul>
						<li><a href="#">슬라임</a></li>
						<li><a href="#">굿즈</a></li>
					</ul></li>
			</ul></li>
	</ul>
	<ul>
		<li>
			<nav class="main_top">
				<div class="search">
					<form action="get">
						<input type="text" name="search" placeholder="search"
							class="search_text">
						<button type="submit">
							<i class='bx-fw bx bx-search bx-sm'></i>
						</button>
					</form>
				</div>
		</li>
	</ul>
</div>
</nav>
