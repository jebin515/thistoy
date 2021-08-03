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
<link href="/css/notice.css?ver=2" rel="stylesheet">
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
			<c:if test="${pageMaker ne null}">
				<div class="page-number">
					<tr>
						<div class='pull-right'>
							<ul>
								<li><a
									href="/notice/notice?type=${param.type}&keyword=${param.keyword}"><i
										class="fas fa-angle-double-left"></i></a></li>
								<li><a
									href="/notice/notice?p=${pageMaker.startPage-1}&type=${param.type}&keyword=${param.keyword}"><i
										class="fas fa-angle-left"></i></a></li>

								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
									<li><a
										href="/notice/notice?p=${num}&type=${param.type}&keyword=${param.keyword}"
										class="pn" id="${pageMaker.pageNum==num? 'pageNum':''}">${num}</a></li>
								</c:forEach>
								<li><a
									href="/notice/notice?p=${pageMaker.endPage+1}&type=${param.type}&keyword=${param.keyword}"><i
										class="fas fa-angle-right" id="right"></i></a></li>
								<li><a
									href="/notice/notice?p=${pageMaker.realEnd}&type=${param.type}&keyword=${param.keyword}"><i
										class="fas fa-angle-double-right"></i></a></li>

							</ul>
						</div>
					</tr>
				</div>
				</c:if>
		</div>
		<c:if test="${userId eq 'admin'}">
			<button id='board-writer' type="button" class="board-writer"
				onclick="location.href='notice_writer' ">글쓰기</button>
		</c:if>
		<c:if test="${pageMaker ne null}">
			<div>
				<div class="notice-search">
					<form id='searchForm' action="/notice/notice" method="get">
						<select name="type">
							<option value="1">제목</option>
							<option value="2">내용</option>
							<option value="3">제목+내용</option>
						</select> <input type='text' class="keyword" name='keyword'>
						<button class='btn-defauit'>검색</button>
					</form>
				</div>
			</div>
		</c:if>
	</main>
	<%@ include file="../includes/footer.jsp"%>

</body>
</html>