<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=980" />
<link rel="stylesheet" href="/css/style.css">
<link href="/css/main.css?ver=1" rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<title>This Toy</title>
</head>
<script defer>
	var result = "<c:out value='${passupdate}'/>";
	function success() {
		alert('비밀번호가 변경이 깔끔하게 성공했습니다 ^^.');
	}
	if (result == '성공') {
		success();
	}
</script>
<body>
	<%@ include file="includes/header.jsp"%>
	<main>
		<div class="main-slide">
			<div class="swiper-container-main mySwiper-main">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/디지니.png">
						<div class="slide-info">
							<h4>디지니</h4>
							<p>이진웅</p>
							<div class="slide-link">
								<a href="/product/detail_main?pc=${productCode}"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<img src="/img/고양이.png">
					</div>
					<div class="swiper-slide">
						<img src="/img/디지니.png">
					</div>
					<div class="swiper-slide">
						<img src="/img/고양이.png">
					</div>
				</div>
				<div class="swiper-pagination-main"></div>
			</div>
		</div>

		<div class="item">
			<h2>
				<span class="item-border">신제품</span>
			</h2>
			<div class="swiper-container mySwiper">
				<div class="swiper-wrapper">
					<c:forEach var="nw" items="${newproduct}">
						<c:set var="j" value='${fn:indexOf(nw.productMainImg,",")}' />
						<c:set var="nimg" value="${fn:substring(nw.productMainImg,0,j)}" />
						<div class="swiper-slide">
						<img src="/upload/product/main/${nimg}">
						<div class="slide-info">
							<h4>${nw.productName}</h4>
							<p>${nw.productPrice}원</p>
							<div class="slide-link">
								<a href="/product/detail_main?pc=${nw.productCode}"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
				<div class="swiper-pagination"></div>
			</div>
		</div>

		<div class="item">
			<h2><span class="item-border">인기제품</span></h2>
			<div class="swiper-container mySwiper">
				<div class="swiper-wrapper">
					<c:forEach var="bs" items="${best}">
					
						<c:set var="i" value='${fn:indexOf(bs.productMainImg,",")}' />
						<c:set var="mimg" value="${fn:substring(bs.productMainImg,0,i)}" />
						<div class="swiper-slide"><img src="/upload/product/main/${mimg}">
						<div class="slide-info">
							<h4>${bs.productName}</h4>
							<p>${bs.productPrice}원</p>
							<div class="slide-link">
								<a href="/product/detail_main?pc=${bs.productCode}"><i class="bx bx-link"></i></a>
							</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="swiper-pagination"></div>
			</div>
		</div>
	</main>
	<%@ include file="includes/footer.jsp"%>
	<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="/js/slide.js"></script>
</body>
</html>