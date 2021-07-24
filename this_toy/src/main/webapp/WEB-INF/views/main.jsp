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
<link href="/css/main.css" rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<title>Document</title>
</head>

<body>
	<%@ include file="includes/header.jsp"%>
	<main>
		<div class="main-slide">
			<div class="swiper-container-main mySwiper-main">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="/img/KakaoTalk_20210705_213510675.jpg">
						<div class="slide-info">
							<h4>거북이</h4>
							<p>이진웅</p>
							<div class="slide-link">
								<a href="#"><i class="bx bx-plus"></i></a> <a href="#"><i
									class="bx bx-link"></i></i></a>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<img src="/img/1.jpg">
						<div class="title">dadad</div>
					</div>
					<div class="swiper-slide">
						<img src="/img/1.jpg">
					</div>
					<div class="swiper-slide">
						<img src="/img/1.jpg">
					</div>
					<div class="swiper-slide">
						<img src="/img/1.jpg">
					</div>
					<div class="swiper-slide">
						<img src="/img/1.jpg">
					</div>
					<div class="swiper-slide">
						<img src="/img/1.jpg">
					</div>
					<div class="swiper-slide">
						<img src="/img/1.jpg">
					</div>
					<div class="swiper-slide">
						<img src="/img/1.jpg">
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
								<a href="#?ncc=${nw.productCode}"><i class="bx bx-plus"></i></a> 
								<a href="#"><i class="bx bx-link"></i></a>
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
						<div class="swiper-slide"><img src="/upload/product/main/${mimg}"></div>
						
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