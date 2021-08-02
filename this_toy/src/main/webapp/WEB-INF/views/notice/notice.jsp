<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<link href="/css/style.css" rel="stylesheet">
<link href="/css/notice.css?ver=1" rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<title>공지사항</title>
</head>

<body>

	<%@ include file="../includes/header.jsp"%>

	<!-- main  -->
	<main>
		<div class="container">
			<div class="title">
				<h1>NOTICE</h1>
			</div>
			<table>
				<thead>
					<tr>
						<th>NO.</th>
						<th>SUBJECT</th>
						<th>DATE</th>
						<th>WRITER</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="notice">
						<tr>
							<td>${notice.num}</td>
							<td><a class="subject-list"
								href='notice_detail?noticeNum=<c:out value="${notice.noticeNum}" />&p=${pageMaker.pageNum}'><c:out
										value="${notice.noticeTitle}" /></a></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${notice.noticeDate}"></fmt:formatDate></td>
							<td>${notice.userId}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="page-number">
				<tr>
					<div class='pull-right'>
						<a href="/notice/notice"><i class="fas fa-angle-double-left"></i></a><a
							href="/notice/notice?p=${pageMaker.startPage-1}"><i
							class="fas fa-angle-left"></i></a> <span class="pageNumber"> <c:forEach
								var="num" begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}">
								<a href="/notice/notice?p=${num}" class="pn"
									id="${pageMaker.pageNum==num? 'pageNum':''}">${num}</a>
							</c:forEach>
						</span> <a href="/notice/notice?p=${pageMaker.endPage+1}"><i
							class="fas fa-angle-right" id="right"></i></a><a
							href="/notice/notice?p=${pageMaker.realEnd}"><i
							class="fas fa-angle-double-right"></i></a>
					</div>
				</tr>
			</div>
		</div>
		<c:if test="${userId eq 'admin'}">
			<button id='board-writer' type="button" class="board-writer"
				onclick="location.href='notice_writer' ">글쓰기</button>
		</c:if>
		<div>
						<div class="notice-search">
							<form id='searchForm' action="/notice/notice" method="get">
								<select name="type">
									<option value="T">제목</option>
									<option value="C">내용</option>
									<option value="TC">제목+내용</option>
								</select> <input type='text' name='keyword'>
								<button class='btn btn-defauit'>검색</button>
							</form>
						</div>
		</div>
	</main>
	<%@ include file="../includes/footer.jsp"%>

</body>
</html>