<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<title>Document</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/mypage_orderbox.css?ver=1">
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
</head>

<body>
	<%@ include file="../includes/header.jsp"%>
	<!-- ------------마이페이지---------- -->
	<section>
		<%@ include file="../includes/mypage.jsp"%>
		<div class="flexcollum">
		<c:if test="${empty orders}">
		<div class="empty">주문목록이 없습니다.</div>
		</c:if>
		<c:if test="${orders ne null}">
			<c:forEach var="ob" items="${orders}">
				<c:set var="i" value='${fn:indexOf(ob.productImg,",")}' />
				<c:set var="simg" value="${fn:substring(ob.productImg,0,i)}" />
				<div class="orderbox">
					<a href="/mypage/mypage_detailorderbox?pc=${ob.productCode}&oc=${ob.orderCode}&seller=${ob.userId}"> <img
						src="/upload/product/main/${simg}" alt=""
						class="orderimg">
					</a>
					<div class="order_info">
						<a href="/mypage/mypage_detailorderbox?pc=${ob.productCode}&oc=${ob.orderCode}&seller=${ob.userId}">
							<div class="product_logo">This Toy</div>
							<div class="product_name">${ob.productName}</div>
						</a> <span class="product_price">${ob.orderPrice*ob.orderEa}원</span> <span>
						<fmt:formatDate var="date" value="${ob.orderDate}" pattern="yyyy.MM.dd" /> ${date}</span>
						<div class="order_line"></div>
						<div class=" buytext">주문이 완료되었습니다. 이용해주셔서 감사합니다.</div>
					</div>
					<div class="seller_info">
						<div>${ob.userId}</div>
						<div>${ob.userTel}</div>
					</div>
					<a href="/product/detail_main?pc=${ob.productCode}" class="onemore">재구매</a>
				</div>
			</c:forEach>
			</c:if>
		</div>
	</section>

	<%@ include file="../includes/footer.jsp"%>
</body>

</html>