<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
					<a href=""><button>바로구매</button></a> <a href=""><button>장바구니</button></a>
					<a href=""><button>하트</button></a>
				</div>
			</div>
		</div>

		<!-- 메인 1 끝 -->

		<!-- 메인 2 시작 -->
		<div class="detail-menu">
			<ul>
				<li class="tab1"><a href="#">상품 설명</a></li>
				<li class="tab2"><a href="#">상품 후기</a></li>
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
			<textarea name="" cols="30" rows="5" class="write_text"
				maxlength="1000"></textarea>
			<div class="img_rating">
				<label class="file-button" for="input-file">+사진추가</label> <input
					type="file" name="rvImg" id="input-file" style="display: none;">
				<select>
					<option value="5">&#xf005&#xf005&#xf005&#xf005&#xf005</option>
					<option value="4">&#xf005&#xf005&#xf005&#xf005</option>
					<option value="3">&#xf005&#xf005&#xf005</option>
					<option value="2">&#xf005&#xf005
					<option value="1">&#xf005</option>
				</select> <input type="submit" value="등록">
			</div>
			<div class="title">
				<span class="review">상품후기 (1)</span>
				<button>후기 작성하기</button>
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
		function winpop() {
			var open = window.open("questionpop.html", "parent",
					"resizable=no, scrollbars=0");
		}
	</script>
</body>
</html>