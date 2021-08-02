<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h3 class="mypage_logo">마이페이지</h3>
<div class="mp">
	<!-- 왼쪽 -->
	<img class="left" src="/img/profile.jpg" alt="이미지없음">
	<!-- 오른쪽  -->
	<div class="right">
		<div>이름 : ${user.userName}</div>
		<div>아이디 : ${user.userId}</div>
		<div>이메일 : ${user.userEmail}</div>
		<div>
			기본 배송지 :<br /> ${user.userAddressPost}<br />${user.userAddress}<br />${user.userAddressDetail}</div>
	</div>
</div>
<div class="line"></div>
<div class="mypage_inner">
	<div class="inner">
		<a href="/mypage/mypage_wishlist" class="item">찜목록</a> <a
			href="/mypage/mypage_sellbox" class="item">등록한 판매글</a> <a
			href="/mypage/mypage_cart" class="item">장바구니</a> <a
			href="/mypage/mypage_orderbox" class="item">주문목록</a> <a
			href="/mypage/mypage_review" class="item">리뷰/QnA</a>
	</div>
	<div style="position: relative;">
		<i class="fas fa-caret-left"></i>
	</div>