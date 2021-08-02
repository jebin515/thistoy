<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h3 class="mypage_logo">마이페이지</h3>
<div class="mp">
	<!-- 왼쪽 -->
	<img class="left" src="/upload/user/${user.userImg}" alt="이미지없음">
	<!-- 오른쪽  -->
	<div class="right">
		<div><h6>이름</h6>${user.userName}</div>
		<div><h6>아이디</h6>${user.userId}</div>
		<div><h6>이메일</h6>${user.userEmail}</div>
		<div>
			<ul>
			<li><h6>기본 배송지</h6></li>
			<li> ${user.userAddressPost}</li>
			<li>${user.userAddress}</li>
			<li>${user.userAddressDetail}</li>
			</ul>
		</div>
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