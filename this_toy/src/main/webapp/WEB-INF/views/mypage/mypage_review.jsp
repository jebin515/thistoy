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
<link rel="stylesheet" href="/css/mypage_review.css?ver=3">
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
			<div class="review">리뷰</div>
			<table class="reviewbox">
				<tr class="thead">
					<th class="titem">별점</th>
					<th class="titem titem2">내용</th>
					<th class="titem">작성자</th>
					<th class="titem">작성일</th>
					<th></th>
				</tr>
				<c:forEach var="re" items="${review}">
					<tr class="review_list">
						<td class="titem">
							<div class="ratingbox">
								<div class="rating rating1">
									<c:forEach var="i" begin="1" end="${re.reviewRating}">
										<i class="fa fa-star"></i>
										<!--비어있는 별5개  -->
									</c:forEach>
									<c:forEach var="i" begin="${re.reviewRating+1}" end="5">
										<i class="fa fa-star-o"></i>
									</c:forEach>
								</div>
							</div>
						</td>
						<td class="titem titem2"><a
							href="/product/detail_main?pc=${re.productCode}" class="plink">${re.reviewText}</a></td>
						<td class="titem">${re.userId}</td>
						<td class="titem"><fmt:formatDate var="date"
								value="${re.reviewDate}" pattern="yyyy.MM.dd" /> ${date}</td>
						<td class="delete"><a
							href="/mypage/reviewdelete?rc=${re.reviewCode}">삭제</a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="question">QnA</div>
			<table class="questbox">
				<tr>
					<th class="titem">답변상태</th>
					<th class="titem titem2">내용</th>
					<th class="titem">작성자</th>
					<th class="titem">작성일</th>
					<th></th>
				</tr>
				<c:forEach var="qa" items="${qna}">
					<tr class="quest_list">
						<td class="titem">${qa.replySituation}</td>
						<td class="titem titem2"><a
							href="/product/detail_main?pc=${qa.productCode}" class="plink">${qa.questionText}</a></td>
						<td class="titem">${qa.userId}</td>
						<td class="titem"><fmt:formatDate var="date"
								value="${qa.questionDate}" pattern="yyyy.MM.dd" /> ${date}</td>
						<td class="delete"><a
							href="/mypage/QnAdelete?qc=${qa.questionCode}">삭제</a></td>
					</tr>
					<c:if test="${!empty qa.replyText}">
					<tr>
						<td></td>
						<td class="reply_td" colspan="3"><i class="fas fa-reply"></i>
							<textarea cols="30" rows="2" class="reply_text" readonly>${qa.replyText}</textarea></td>
					</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
	</section>
	<%@ include file="../includes/footer.jsp"%>
</body>

</html>