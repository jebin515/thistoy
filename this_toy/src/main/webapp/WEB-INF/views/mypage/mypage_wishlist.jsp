<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<title>Document</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/mypage_wishlist.css?ver=1">
<!-- <script src="js/mypage.js" defer></script> -->
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
</head>

<body>
	<%@ include file="../includes/header.jsp"%>
	<!-- ------------마이페이지---------- -->
	<section>
		<h3 class="mypage_logo">마이페이지</h3>
		<div class="mp">
			<!-- 왼쪽 -->
			<img class="left" src="/img/profile.jpg" alt="이미지없음">
			<!-- 오른쪽  -->
			<div class="right">
				<div>이름 : 윤재빈</div>
				<div>아이디 : jebin515</div>
				<div>이메일 : jebin515@naver.com</div>
				<div>기본 배송지 | 경기도 안양시 어쩌구 저쩌구 집이 멀어요 서울 사고싶다 도로명 주소는 뭐라고 써야하나</div>
			</div>
		</div>
		<div class="line"></div>
		<div class="mypage_inner">
			<div class="inner">
				<a href="/mypage/mypage_wishlist" class="item">찜목록</a> <a
					href="mypage_sellbox.html" class="item">등록한 판매글</a> <a
					href="mypage_cart.html" class="item">장바구니</a> <a
					href="mypage_orderbox.html" class="item">주문목록</a> <a
					href="mypage_review.html" class="item">문의/후기</a>
			</div>
			<div style="position: relative;">
				<i class="fas fa-caret-left"></i>
			</div>
			<div class="gridContainer">
				<c:forEach var="ws" items="${wishList}">
					<c:set var="i" value='${fn:indexOf(ws.productMainImg,",")}' />
					<c:set var="mimg"
						value="${fn:substring(ws.productMainImg,0,i)}" />
					<div class="gridItem">
						<i class="fas fa-times"></i> <a
							href="/product/detail_main?pc=${ws.productCode}"> <img
							src="/upload/product/main/${mimg}" alt="" class="wishImg"/>
						</a>
						<div class="product_info">
							<a href="/product/detail_main?pc=${ws.productCode}"> <span
								class="product_name"><span class="product_logo">This
										Toy </span>${ws.productName}</span>
							</a>
							<div class="product_price">가격 : ${ws.productPrice}원</div>
							<div class="product_deliver_price">배송비 : 3,000원</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- -----------푸터------------- -->
	<%@ include file="../includes/footer.jsp"%>
</body>

</html>