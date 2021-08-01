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
<link rel="stylesheet" href="/css/mypage_sellbox.css">
<!-- <script src="/js/mypage.js" defer></script> -->
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
		<%@ include file="../includes/mypage.jsp"%>
		<div class="gridContainer">
			<c:forEach var="sb" items="${sellbox}">
				<c:set var="i" value='${fn:indexOf(sb.productMainImg,",")}' />
				<c:set var="simg" value="${fn:substring(sb.productMainImg,0,i)}" />
				<div class="gridItem">
					<a href="/product/detail_main?pc=${sb.productCode}"><img
						src="/upload/product/main/${simg}" alt="" class="sellImg" /> </a>
					<div class="product_info">
						<a href="/product/detail_main?pc=${sb.productCode}"> <span
							class="product_name"><span class="product_logo">This
									Toy</span>${sb.productName}</span>
						</a>
						<div class="product_price">가격 : ${sb.productPrice}원</div>
						<div class="product_deliver_price">배송비 : 3,000원</div>
					</div>
				</div>
			</c:forEach>
		</div>
		</div>
	</section>
	<%@ include file="../includes/footer.jsp"%>
</body>

</html>