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
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<title>Document</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/detail-main.css?ver=2" />
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
						<!-- 							<img src="/img/서브2.jpg" /> -->
						<!-- 						<div class="swiper-slide"> -->
						<!-- 							<img src="/img/서브1.jpg" /> -->
						<!-- 						</div> -->
						<!-- 						<div class="swiper-slide"> -->
						<!-- 							<img src="/img/서브1.jpg" /> -->
						<!-- 						</div> -->
						<!-- 						<div class="swiper-slide"> -->
						<!-- 							<img src="/img/서브1.jpg" /> -->
						<!-- 						</div> -->
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
							<th><span>주문수량</span></th>
							<td><input type="text" class="product_num" value="1"
								oninput="inputnumber();" min="1" max="99" />
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
					<button class="directbuy">바로구매</button> <button class="cart">장바구니</button>
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
				value="" maxlength="1000"></textarea>
			<div class="img_rating">
				<label class="file-button" for="input-file">+사진추가</label> <input
					type="file" name="reviewImg" id="input-file" style="display: none;">
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
				<span class="review">상품리뷰 (${count})</span>
			</div>
			<table>
				<tr class="reviewlist">
					<th>별점</th>
					<th>내용</th>
					<th>작성자</th>
					<th>작성시간</th>
				</tr>
				<c:forEach var="rv" items="${review}">
					<tr>
						<td><c:forEach var="rt" begin="1" end="${rv.reviewRating}">
								<i class="fa fa-star">
								</i>
							</c:forEach> <c:forEach var="rt" begin="${rv.reviewRating+1}" end="5">
								<i class="fa fa-star-o"></i>
							</c:forEach></td>
						<td><c:out value="${rv.reviewText}" /></td>
						<td><c:out value="${rv.userId}" /></td>
						<td><fmt:formatDate var="date" value="${rv.reviewDate}"
								pattern="yyyy.MM.dd" /> ${date}</td>
					</tr>
				</c:forEach>
			</table>

		</div>

		<div class="detail-content">
			<div class="title">
				<span class="QnA">QnA (1)</span>
				<button onclick="winpop();">문의하기</button>
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
				<tr>
					<td>1</td>
					<td>재뷘이 재뷘이 재뷘이 재뷘이 재뷘이 세빈이 ^^</td>
					<td>2021-07-14</td>
					<td>이진웅</td>
				</tr>
			</table>
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
	<script src="/js/index.js" defer></script>
	<script src="/js/detail-slide.js?ver=1" defer></script>
	<script src="/js/detail-main.js?ver=1" defer></script>
	<script type="text/javascript">
// 		function winpop() {
// 			var open = window.open("questionpop.html", "parent",
// 					"resizable=no, scrollbars=0");
// 		}
		$(".directbuy").click(function(){
			location.href="/orders/direct?pdc=${product.productCode}&user=${userId}&st="+$(".product_num").val();
		})
		/* ----------------------- 리뷰 작성 ajax 및 작성글 바로 띄우기 ----------------------   */
		$(".review_register")
				.click(
						function() {
							let today = new Date();
							let year = today.getFullYear();
							let month = ('0' + (today.getMonth() + 1))
									.slice(-2);
							let day = ('0' + today.getDate()).slice(-2);
							let dateString = year + '.' + month + '.' + day;
							let Text = $('.write_text').val();
							let Rating = Number($('.ratingop').val());
							let fullstar = "";
							function rt() {
								for (let i = 1; i <= Rating; i++) {
									fullstar += '<i class="fa fa-star"></i> ';
								}
								for (let i = Rating + 1; i <= 5; i++) {
									fullstar += '<i class="fa fa-star-o"></i> ';
								}
							}
							rt();
							console.log(fullstar + 'hi');
							let data = {
								reviewText : Text,
								reviewRating : Rating,
								productCode : '<c:out value="${product.productCode}"/>',
								userId : '<c:out value="${userId}"/>'
							};
							if(data["userId"]==null || data["userId"]==""){
								alert('로그인이 필요한 기능입니다.');
								$(".write_text").val("");
								return;
							}
							$
									.ajax({
										type : 'post',
										url : '/review/new',
										data : JSON.stringify(data),
										contentType : "application/json; charset=utf-8",
										success : function(result) {
											alert('리뷰를 등록하였습니다.');
											$(".reviewlist")
													.after(
															'<tr><td>'
																	+ fullstar
																	+ '</td>'
																	+ '<td>'
																	+ data["reviewText"]
																	+ '</td>'
																	+ '<td>'
																	+ data["userId"]
																	+ '</td>'
																	+ '<td>'
																	+ dateString
																	+ '</td></tr>');
											if(${count+1}>10){
											$(".reviewlist").nextAll().last()
													.remove();
											}
											$(".write_text").val("");
											$(".review").html("상품리뷰 ("+${count+1}+")");
											$(".file-button").text("+사진추가");
										},
										error : function(er) {
											alert(er);
										}
									})
						})
				/* ----------------------- 장바구니에 물건넣기 ajax ----------------------   */
				$(".cart").click(function(){
					let data = {
							productCode: '<c:out value="${product.productCode}"/>',
							productEa: $(".product_num").val(),
							userId: '<c:out value="${userId}"/>'
					};
					if(data["userId"]==null || data["userId"]==""){
						alert('로그인이 필요한 기능입니다.');
						return;
					}
					$.ajax({
						type : 'post',
						url : '/product/cart',
						data : JSON.stringify(data),
						contentType : "application/json; charset=utf-8",
						success:function(result) {
							alert(result);
						},
						error : function(er) {
							alert(er);
						}
					})
					
				})
				/* ----------------------- 찜목록 추가하기 ajax ----------------------   */
				$(".hart").click(function(){
					let data = {
							productCode: '<c:out value="${product.productCode}"/>',
							userId: '<c:out value="${userId}"/>'
					};
					if(data["userId"]==null || data["userId"]==""){
						alert('로그인이 필요한 기능입니다.');
						return;
					}
					$.ajax({
						type : 'post',
						url : '/product/wishList',
						data : JSON.stringify(data),
						contentType : "application/json; charset=utf-8",
						success:function(result) {
							if(result=='찜목록에 등록하였습니다.'){
								$(".hart").css('background-color','red');
							}else if(result=='찜목록에서 취소했습니다.'){
								$(".hart").css('background-color','rgba(245, 96, 153, 0.9)');
							}
							alert(result);
						},
						error : function(er) {
							alert(er);
						}
					})
					
				})
	</script>
</body>
</html>