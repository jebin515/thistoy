<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="/js/detail-main.js?ver=5" defer></script>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<title>Document</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/detail-main.css?ver=3" />
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div id="main">
		<!-- 메인 1 -->
		<div class="detail-head">
			<div class="img-section">
				<div class="swiper-container mySwiper2">
					<div class="swiper-wrapper">
						<c:forTokens var="fileName" items="${product.productMainImg}"
							delims=",">
							<div class="swiper-slide">
								<img src="/upload/product/main/${fileName}" class="reviewImage">
							</div>
						</c:forTokens>
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
				<div thumbsSlider="" class="swiper-container mySwiper">
					<div class="swiper-wrapper">
						<c:forTokens var="fileName" items="${product.productMainImg}"
							delims=",">
							<div class="swiper-slide">
								<img src="/upload/product/main/${fileName}" class="reviewImage">
							</div>
						</c:forTokens>
					</div>
				</div>
			</div>
			<div class="txt-section">
				<div class="txt-title">
					<c:out value="${product.productName}" />
				</div>
				<div class="txt-main">
					<table>
						<tr>
							<th><span>판매가</span></th>
							<td>
								<div class="price">
									<c:out value="${product.productPrice}" />
								</div>
							</td>
						</tr>
						<tr>
							<th><span>판매자</span></th>
							<td><c:out value="${product.userId}" /></td>
						</tr>
						<tr>
							<th><span>카테고리</span></th>
							<td>피규어</td>
						</tr>
						<tr>
							<th><span>재고</span></th>
							<td><div class="stock">
									<c:out value="${product.productStock}" />
								</div>개</td>
						</tr>
						<tr>
							<th><span>주문수량</span></th>
							<td><input type="number" class="product_num" value="1"
								oninput="inputnumber();" min="1" max="10" readonly />
								<button type="button" class="ea_btn" onclick="plus()">+</button>
								<button type="button" class="ea_btn" onclick="minus()">-</button>
							</td>
						</tr>
						<tr>
							<th><span>총합</span></th>
							<td>
								<div class="total">원</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="detail-head-button">
					<button class="directbuy">바로구매</button>
					<button class="cart">장바구니</button>
					<button class="hart">하트</button>
				</div>
			</div>
		</div>

		<!-- 메인 1 끝 -->

		<!-- 메인 2 시작 -->
		<div class="detail-menu">
			<ul>
				<li class="tab1"><a href="#">상품 설명</a></li>
				<li class="tab2"><a href="#">상품 리뷰</a></li>
				<li class="tab3"><a href="#">QnA</a></li>
				<li class="tab4"><a href="#">배송/교환/환불</a></li>
			</ul>
		</div>

		<div class="detail-content">
			<div class="title-plan">
				<span class="plan-title">상품설명</span>
			</div>
			<div class="plan">
				<table>
					<tr>
						<c:forTokens var="fileName" items="${product.productInfoImg}"
							delims=",">
							<td><img src="/upload/product/info/${fileName}"
								class="reviewImage"></td>
						</c:forTokens>
					</tr>
				</table>
			</div>
		</div>

		<div class="detail-content">
			<div class="write_review">REVIEW</div>
			<textarea name="reviewText" cols="30" rows="5" class="write_text"
				maxlength="1000"></textarea>
			<div class="img_rating">
				<!-- 				<label class="file-button" for="input-file">+사진추가</label> <input -->
				<!-- 					type="file" name="reviewImg" id="input-file" style="display: none;"> -->
				<select name="reviewRating" class="ratingop">
					<option value="5">&#xf005&#xf005&#xf005&#xf005&#xf005</option>
					<option value="4">&#xf005&#xf005&#xf005&#xf005</option>
					<option value="3">&#xf005&#xf005&#xf005</option>
					<option value="2">&#xf005&#xf005
					<option value="1">&#xf005</option>
				</select>
				<button class="review_register">등록</button>
			</div>
			<div class="title">
				<span>상품리뷰 (<span class="review">${pageMaker.total}</span>)
				</span>
			</div>
			<table class="reviewAll">
				<tr class="reviewlist">
					<th>별점</th>
					<th>내용</th>
					<th>작성자</th>
					<th>작성시간</th>
					<th></th>
				</tr>
				<c:forEach var="rv" items="${review}">
					<tr class="rv">
						<td><c:forEach var="rt" begin="1" end="${rv.reviewRating}">
								<i class="fa fa-star"> </i>
							</c:forEach> <c:forEach var="rt" begin="${rv.reviewRating+1}" end="5">
								<i class="fa fa-star-o"></i>
							</c:forEach></td>
						<td><c:out value="${rv.reviewText}" /></td>
						<td><c:out value="${rv.userId}" /></td>
						<td><fmt:formatDate var="date" value="${rv.reviewDate}"
								pattern="yyyy.MM.dd" /> ${date}</td>
						<c:if
							test="${userId.equals(rv.userId) or userId.equals(product.userId)}">
							<td><button class="delete_review" value="${rv.reviewCode}">삭제</button></td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
			<div class="page">
				<c:if test="${pageMaker.total!=0}">
					<a href="/product/detail_main?pc=${product.productCode}"> <i
						class="fas fa-angle-double-left"></i></a>
					<i class="fas fa-angle-left"></i>
					<span class="pageNumber"> <c:forEach var="num"
							begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
							<span class="pn" id="${pageMaker.pageNum==num? 'pageNum':''}">${num}</span>
						</c:forEach>
					</span>
					<i class="fas fa-angle-right" id="right"></i>
					<a
						href="/product/detail_main?pc=${product.productCode}&p=${pageMaker.realEnd}"><i
						class="fas fa-angle-double-right"></i></a>
				</c:if>
			</div>
		</div>
		<div class="detail-content">
			<div class="write_QnA">QnA</div>
			<textarea name="reviewText" cols="30" rows="3" class="QnA_text"
				value="" maxlength="1000" required
				oninvalid="this.setCustomValidity('문의를 입력해주세요.')"
				oninput="setCustomValidity('')"></textarea>
			<div class="QnA_buttonbox">
				<button class="QnA_register">등록</button>
			</div>
			<div class="title">
				<span>QnA (<span class="QnA">${QnACount}</span>)
				</span>
			</div>
			<table class="QnAtotal">
				<tr class="QnInfo">
					<th>답변상태</th>
					<th>내용</th>
					<th>작성자</th>
					<th>작성시간</th>
					<th></th>
				</tr>
				<c:forEach var="Qn" items="${QnA}">
					<input type="hidden" value="${Qn.questionCode}" />
					<tr class="QnAbox">
						<td>${Qn.replySituation}</td>
						<td class="QnAText"><c:out value="${Qn.questionText}" /></td>
						<td>${Qn.userId}</td>
						<td><fmt:formatDate var="date" value="${Qn.questionDate}"
								pattern="yyyy.MM.dd" /> ${date}</td>
						<c:if test="${userId.equals(Qn.userId) or userId.equals(product.userId)}">
							<td><button class="delete_QnA" value="${Qn.questionCode}">삭제</button></td>
						</c:if>
					</tr>
					<c:if
						test="${!userId.equals(product.userId) and !empty Qn.replyText and !userId.equals(Qn.userId)}">
						<tr>
							<td></td>
							<td class="reply_td" colspan="3"><i class="fas fa-reply"></i>
								<textarea cols="30" rows="2" class="reply_text" readonly>${Qn.replyText}</textarea></td>
						</tr>
					</c:if>
					<c:if
						test="${(userId==product.userId || userId== Qn.userId) and !empty userId and !empty Qn.replyText}">
						<tr>
							<td></td>
							<td class="reply_td" colspan="3"><i class="fas fa-reply"></i>
								<textarea name="replyText" cols="30" rows="2" class="reply_text"
									readonly>${Qn.replyText}</textarea></td>
						</tr>
						<tr class="clickText">
							<td colspan="4" class="reply_button">
								<button class="delete_button" value="${Qn.questionCode}">삭제</button>
							</td>
						</tr>
					</c:if>
					<c:if
						test="${userId.equals(product.userId) and !empty userId and empty Qn.replyText}">
						<tr>
							<td></td>
							<td class="reply_td" colspan="3"><i class="fas fa-reply"></i>
								<textarea name="replyText" cols="30" rows="2"
									class="reply_text reg"></textarea></td>
						</tr>
						<tr>
							<td colspan="4" class="reply_button">
								<button class="register_button" value="${Qn.questionCode}">등록</button>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
		<div class="add">
			<span class="addQnA">더보기</span>
		</div>
		<div class="detail-content">
			<div class="title">
				<span class="another">배송/교환/환불 (1)</span>
				<button>문의하기</button>
			</div>
			<table>
				<tr>
					<th>번호</th>
					<th>내용</th>
					<th>작성시간</th>
					<th>작성자</th>
				</tr>
				<tr>
					<td>1</td>
					<td>재뷘이 재뷘이 재뷘이 재뷘이 재뷘이 세빈이 ^^</td>
					<td>2021-07-14</td>
					<td>이진웅</td>
				</tr>
			</table>
		</div>
		<!-- 메인 2 끝 -->

	</div>
	<%@ include file="../includes/footer.jsp"%>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<!-- 	<script src="/js/index.js" defer></script> -->
	<script src="/js/detail-slide.js?ver=1" defer></script>
	<script type="text/javascript" defer>
		$(".fa-angle-right").click(function(){
			let lastn=Number($(".pn").last().text())+1;
			location.href="/product/detail_main?pc=${product.productCode}&p="+lastn;
		})
		$(".fa-angle-left").click(function(){
			let lastn=Number($(".pn").first().text())-1;
			location.href="/product/detail_main?pc=${product.productCode}&p="+lastn;
		})
		if(${pageMaker.total != 0}){
		if(${pageMaker.pageNum%5==0}){
			$(".pn").last().css('color','rgba(245, 96, 153, 0.9)');
		}else if(${pageMaker.pageNum%5==1}){
			$(".pn").first().css('color','rgba(245, 96, 153, 0.9)');
		}
		}
		$(document).on('click','.delete_review',function(){
			let reviewNum = $(this).val();
			location.href="/review/delete?rc="+reviewNum+"&pc=${QnA[0].productCode}";
		})
		$(document).on('click','.delete_QnA',function(){
			let QnANum = $(this).val();
			location.href="/QnA/delete?qc="+QnANum+"&pc=${QnA[0].productCode}";
		})
		$(document).on('click','.register_button',function(){
			let registerindex = $(".register_button").index(this);
			location.href="/QnA/reply?qc="+$(this).val()+"&rt="+$('.reg').eq(registerindex).val()+"&pc=${QnA[0].productCode}";
		})
		$(".directbuy")
				.click(
						function() {
							location.href = "/orders/direct?pdc=${product.productCode}&user=${userId}&st="
									+ $(".product_num").val();
						})
		/* ----------------------- 리뷰 작성 ajax 및 작성글 바로 띄우기 ----------------------   */
		$(document).on('click',".review_register",function() {
			let Text = $('.write_text').val();
			let Rating = Number($('.ratingop').val());
			let fullstar = "";
			let data = {
				reviewText : Text,
				reviewRating : Rating,
				productCode : '<c:out value="${product.productCode}"/>',
				userId : '<c:out value="${userId}"/>'
			};
			if($('.write_text').val() == null || $('.write_text').val() == ""){
				alert("리뷰를 입력해주세요");
				return;
			}
			if (data["userId"] == null || data["userId"] == "") {
				alert('로그인이 필요한 기능입니다.');
				$(".write_text").val("");
				return;
			}
			$.ajax({
				type : 'post',
				url : '/review/new',
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				success : function(result) {
					alert('리뷰를 등록하였습니다.');
					let pn="";
					let lastnum=Number(${pageMaker.endPage});
					let rvNum = Number($(".review").html());
					if(${pageMaker.total}!=0){
					if(Number(${pageMaker.endPage})%5==0){
						lastnum=5;
					}
					if(rvNum>=50){
					for(let i=Number(${pageMaker.startPage}%5); i<=5; i++){
						pn +='<span class="pn"> '+i+'</span> ';
					}
					$(".pageNumber").html("");
					$(".pageNumber").html(pn);
					}
					}else if(rvNum==0){
						pn ='<a href="/product/detail_main?pc=${product.productCode}"><i class="fas fa-angle-double-left"></i></a> '+
						'<i class="fas fa-angle-left"></i>'
						+'<span class="pageNumber">'+'<span class="pn"> '+1+'</span>'+
						'</span>'+
						' <i class="fas fa-angle-right" id="right"></i>' 
						+' <a href="/product/detail_main?pc=${product.productCode}&p=${pageMaker.realEnd}"><i class="fas fa-angle-double-right"></i></a>';
						$(".page").html(pn);
						$('.pn').first().css('color', 'rgba(245, 96, 153, 0.9)');
					}
					
					$(".write_text").val("");
					if(rvNum == 10){
						$(".pageNumber").append("<span class='pn'> "+2+"</span>");
					}
					if(rvNum == 20){
						$(".pageNumber").append("<span class='pn'> "+3+"</span>");
					}
					if(rvNum == 30){
						$(".pageNumber").append("<span class='pn'> "+4+"</span>");
					}
					if(rvNum == 40){
						$(".pageNumber").append("<span class='pn'> "+5+"</span>");
					}
					rvNum +=  1;
					if (rvNum > 10) {
						$(".reviewlist").nextAll().last().remove();
					}
					$(".review").html(rvNum);
					$(".file-button").text("+사진추가");
					
					$('.pn').first().css('color', 'rgba(245, 96, 153, 0.9)');
				},
				error : function(er) {
					alert(er);
				}
			})
		})
		/* ----------------------- 문의글 작성 ajax ----------------------------*/
		$(document).on('click','.QnA_register',function(){
			let today = new Date();
			let year = today.getFullYear();
			let month = ('0' + (today.getMonth() + 1)).slice(-2);
			let day = ('0' + today.getDate()).slice(-2);
			let dateString = year + '.' + month + '.' + day;
			let data = {
				questionText : $('.QnA_text').val(),
				productCode : '<c:out value="${product.productCode}"/>',
				userId : '<c:out value="${userId}"/>'
			}; 
			if($('.QnA_text').val() == null || $('.QnA_text').val() == ""){
				alert("문의를 입력해주세요");
				return;
			}
			if (data["userId"] == null || data["userId"] == "") {
				alert('로그인이 필요한 기능입니다.');
				$('.QnA_text').val('');
				return;
			}
			$.ajax({
				type : 'post',
				url : '/QnA/new',
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				success : function(rs) {
					$('.QnA_text').val('');
					let QnANum= Number($('.QnA').html());
					if(QnANum>=10){
						$('.QnAbox').last().remove();
					}
					QnANum +=1;
					let newQnA = '<tr>'+
					'<td>답변대기</td>'+
					'<td>'+data["questionText"]+'</td>'+
					'<td>'+data["userId"]+'</td>'+
					'<td>'+dateString+'</td>'+
					'</tr>';
					$(".QnInfo").after(newQnA);
					$('.QnA').html(QnANum);
					alert(rs);
					
				},
				error : function(er) {
					alert(er);
				}
			})
		})
		/* ----------------------- 문의글 더보기 ajax --------------------------*/
		$(document).on('click','.addQnA',function(){
			let QnANum = $('.QnAbox').length+10;
			$.ajax({
				type : 'get',
				url : '/QnA/more/${product.productCode}/'+QnANum,
				contentType : "application/json; charset=utf-8",
				success : function(rs) {
					$('.QnAtotal').html('');
					let QnAbox='<tr class="QnInfo"><th>답변상태</th><th>내용</th><th>작성자</th><th>작성시간</th><th></th></tr>';
					for(let i=0; i<rs.length; i++){
					QnAbox += '<input type="hidden" value="'+rs[i].questionCode+'"/>'+
						'<tr class="QnAbox"><td>'
						+ rs[i].replySituation
						+ '</td><td>'
						+ rs[i].questionText
						+ '</td><td>'
						+ rs[i].userId
						+ '</td><td>'
						+ moment(
								rs[i].questionDate)
								.format(
										"YYYY.MM.DD")
						+ '</td>';
						if(${userId.equals(rs[i].userId) or userId.equals(product.userId)}){
							QnAbox+='<td><button class="delete_QnA" value="'+rs[i].questionCode+'">삭제</button></td></tr>';
						}
					if(${!userId.equals(product.userId)} && rs[i].replyText != null && ${!userId.equals(Qn.userId)}){
						QnAbox += '<tr class="clickText"><td></td>'+
						'<td class="reply_td" colspan="3"><i class="fas fa-reply"></i>'+
							'<textarea cols="30" rows="2" class="reply_text" readonly>'+rs[i].replyText+'</textarea></td></tr>';
					}else if(${userId.equals(product.userId) and !empty userId} && rs[i].replyText!=null || ${userId.equals(Qn.userId)}){
						QnAbox += '<tr class="clickText"><td></td>+'
						+'<td class="reply_td" colspan="3"><i class="fas fa-reply"></i>'+
							'<textarea cols="30" rows="2" class="reply_text" readonly>'+rs[i].replyText+'</textarea></td></tr>'+
					'<tr class="clickText">'+
						'+<td colspan="4" class="reply_button"><button class="delete_button" value="'+rs[i].questionCode+'">삭제</button></td>'+
					'</tr>'
					}else if(${userId.equals(product.userId) and !empty userId} && rs[i].replyText == null){
						QnAbox += 
						'<tr class="clickText">'+
							'<td></td>'+
							'<td class="reply_td" colspan="3"><i class="fas fa-reply"></i>'+
								'<textarea  cols="30" rows="2" class="reply_text reg"></textarea></td>'+
						'</tr>'+
					'<tr class="clickText">'+
						'<td colspan="4" class="reply_button">'+
						'<button name="questionCode"  class="register_button" value="'+rs[i].questionCode+'">등록</button></td>'+
					'</tr>';
					}
				}
					$('.QnAtotal').html(QnAbox);
				},
				error : function(er) {
					alert(er);
				}
			})
		})
		/* ----------------------- 답글 삭제 ajax ----------------------------------*/
		$(document).on('click','.delete_button',function(){
			let questionCode= $(this).val();
			let code=$(this).parent().parent().prev().prev().prev().val();
			$(this).parent().parent().prev().prev().children().first().html('답변대기');
			$(this).parent().parent().prev().prev().after('<tr class="clickText">'+
					'<td></td>'+
					'<td class="reply_td" colspan="3"><i class="fas fa-reply"></i>'+
						'<textarea  cols="30" rows="2" class="reply_text reg"></textarea></td>'+
				'</tr>'+
			'<tr class="clickText">'+
				'<td colspan="4" class="reply_button">'+
				'<button name="questionCode"  class="register_button" value="'+code+'">등록</button></td>'+
			'</tr>');
			$(this).parent().parent().prev().remove();
			$(this).parent().parent().remove();
			$.ajax({
				type : 'delete',
				url : '/QnA/reply/delete/'+questionCode,
				contentType : "application/json; charset=utf-8",
				success : function(rs) {
					alert(rs);
					
				},
				error : function(er) {
					alert(er);
				}
			})
			
		})
		/* ----------------------- 장바구니에 물건넣기 ajax ----------------------   */
		$(".cart").click(function() {
			let data = {
				productCode : '<c:out value="${product.productCode}"/>',
				productEa : $(".product_num").val(),
				userId : '<c:out value="${userId}"/>'
			};
			if (data["userId"] == null || data["userId"] == "") {
				alert('로그인이 필요한 기능입니다.');
				return;
			}
			$.ajax({
				type : 'post',
				url : '/product/cart',
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				success : function(result) {
					alert(result);
				},
				error : function(er) {
					alert(er);
				}
			})

		})
		/* ----------------------- 찜목록 추가하기 ajax ----------------------   */
		$(".hart")
				.click(
						function() {
							let data = {
								productCode : '<c:out value="${product.productCode}"/>',
								userId : '<c:out value="${userId}"/>'
							};
							if (data["userId"] == null || data["userId"] == "") {
								alert('로그인이 필요한 기능입니다.');
								return;
							}
							$
									.ajax({
										type : 'post',
										url : '/product/wishList',
										data : JSON.stringify(data),
										contentType : "application/json; charset=utf-8",
										success : function(result) {
											if (result == '찜목록에 등록하였습니다.') {
												$(".hart").css(
														'background-color',
														'red');
											} else if (result == '찜목록에서 취소했습니다.') {
												$(".hart")
														.css(
																'background-color',
																'rgba(245, 96, 153, 0.9)');
											}
											alert(result);
										},
										error : function(er) {
											alert(er);
										}
									})

						})
		/*-----------------리뷰 페이징처리(ajax) -------------------  */
		$(document).on('click',".pn,.review_register",
						function() {
							let tag = "";
							$(".pn").css('color', 'black');
							if ($(this).hasClass("pn")) {
								tag = $(this).text();
								$(this).css('color', 'rgba(245, 96, 153, 0.9)');
							}else {
								tag = 1;
								$('.pn').first().css('color', 'rgba(245, 96, 153, 0.9)');
							}
							$
									.ajax({
										type : 'get',
										url : '/review/reviewpage/${product.productCode}'
												+ '/' + tag,
										contentType : "application/json; charset=utf-8",
										success : function(result) {
											let rvtable = "";
											let starRating = "";
											rvtable += '<tr class="reviewlist"><th>별점</th><th>내용</th><th>작성자</th><th>작성시간</th><th></tr></tr>';
											$(".reviewAll").html("");
											for (let i = 0; i < result.length; i++) {
												
												starRating = "";
												for (let j = 0; j < result[i].reviewRating; j++) {
													starRating += '<i class="fa fa-star"></i> ';
												}
												for (let j = result[i].reviewRating + 1; j <= 5; j++) {
													starRating += '<i class="fa fa-star-o"></i> ';
												}
												rvtable += '<tr class="rv"><td>'
														+ starRating
														+ '</td><td>'
														+ result[i].reviewText
														+ '</td><td>'
														+ result[i].userId
														+ '</td><td>'
														+ moment(
																result[i].reviewDate)
																.format(
																		"YYYY.MM.DD")
														+ '</td>'
														if(${userId.equals(result[i].userId) or userId.equals(product.userId)}){
														+'<td><button class="delete_review" value="'+result[i].reviewCode+'">삭제</button></tr>';
														}
											}
											$(".reviewAll").html(rvtable);
										},
										error : function(er) {
											alert(er);
										}
									})

						})
	</script>
</body>
</html>