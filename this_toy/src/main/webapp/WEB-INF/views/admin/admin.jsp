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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/mypage_sellbox.css">
<link rel="stylesheet" href="/css/admin.css?var=2">
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
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
				<a href="/admin/admin" class="item">회원 관리</a> 
				<a href="/admin/admin_delivery" class="item">배송 관리</a> 
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
						<td class="member_delete"></td>
					</tr>

					<!-- 회원정보 -->
					<c:forEach var="admin" items="${admin}">

						<form action="/admin/delete/${admin.userId}" method="post"
							class="admin_delete">
							<tr class="table_data">
								<td class="member_date"><fmt:formatDate value="${admin.userDate}" pattern="yy-MM-dd HH:mm:ss" /></td>
								<td class="member_id"><c:out value="${admin.userId}" /></td>
								<td class="member_name"><c:out value="${admin.userName}" /></td>
								<td class="member_phone"><c:out value="${admin.userTel}" /></td>
								<td class="member_email"><c:out value="${admin.userEmail}" /></td>
								<td class="member_address"><c:out value="${admin.userAddress}" /></td>
								<td class="delete"><button class="delete_button">삭제</button></td>
							</tr>
						</form>

					</c:forEach>
				</table>
				<div class="paging">
					<div class="middle_page">
						<ul>
							<li><a href="/admin/admin?p=1"> 
									<i class="fas fa-angle-double-left"></i></a></li>
							<li><a href="/admin/admin?p=${userListPaging.startPage-1}">
									<i class="fas fa-angle-left"></i>
							</a></li>

							<c:forEach var="page" begin="${userListPaging.startPage}" end="${userListPaging.endPage}">
								<li><a href="/admin/admin?p=${page}" class="${userListPaging.pageNum==page? 'pageNum':''}">${page}</a></li>
							</c:forEach>

							<li><a href="/admin/admin?p=${userListPaging.endPage+1}">
									<i class="fas fa-angle-right"></i>
							</a></li>
							<li><a href="/admin/admin?p=${userListPaging.realEnd}">
									<i class="fas fa-angle-double-right"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
	</section>
	<!-- -----------푸터------------- -->
	<%@ include file="../includes/footer.jsp"%>
</body>

</html>
<script>
	$(document).on('click', '.delete_button', function() {
		let ok = confirm('정말 삭제하시겠습니까?');
		let index = $('.delete_button').index(this);
		if (ok == true) {
			$('.admin_delete:eq(' + index + ')').submit();
		}
	});
	$(function(){
		$(".item:nth-child(1)").css("background-color" , "rgb(162, 109, 236)");
		$(".item:nth-child(2)").css("background-color" , "rgb(193, 122, 241)");
	});
</script>