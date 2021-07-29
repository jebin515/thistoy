<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<title>Document</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/mypage_sellbox.css">
<link rel="stylesheet" href="/css/admin.css">
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
</head>

<body>
	<%@ include file="../includes/header.jsp"%>

	<!-- ------------ 관리자 페이지 ---------- -->
	<section>
		<div>
			<h2 class="title">관리자 페이지</h2>
		</div>

		<div class="line"></div>
		<div class="mypage_inner">
			<div class="inner">
				<a href="mypage_wishlist.html" class="item">판매글 관리</a> <a
					href="mypage_sellbox.html" class="item">리뷰 관리</a> <a
					href="mypage_cart.html" class="item">문의/답글 관리</a> <a
					href="mypage_orderbox.html" class="item">회원관리</a>
			</div>
			<div style="position: relative;">
				<i class="fas fa-caret-left"></i>
			</div>

			<div class="container">
				<table class="delete_table">
					<!-- 표 카테고리 -->
					<tr class="table_head">
						<td class="member_date">가입날짜</td>
						<td class="member_id">아이디</td>
						<td class="member_name">이름</td>
						<td class="member_phone">핸드폰</td>
						<td class="member_email">이메일</td>
						<td class="member_address">주소</td>
						<td class="member_delete">삭제</td>
					</tr>

					<!-- 회원정보 -->
					<c:forEach var="admin" items="${admin}">
						<tr class="table_data">
							<td class="member_date"><fmt:formatDate value="${admin.userDate}" type="both" pattern="yy-MM-dd" /></td>
							<td class="member_id"><c:out value="${admin.userId}" /></td>
							<td class="member_name"><c:out value="${admin.userName}" /></td>
							<td class="member_phone"><c:out value="${admin.userTel}" /></td>
							<td class="member_email"><c:out value="${admin.userEmail}" /></td>
							<td class="member_address"><c:out value="${admin.userAddress}" /></td>
							<td class="delete"><a href="#" >삭제</a></td>
						</tr>
					</c:forEach>

				</table>
			</div>
	</section>

	<!-- -----------푸터------------- -->
	<%@ include file="../includes/footer.jsp"%>
</body>

</html>