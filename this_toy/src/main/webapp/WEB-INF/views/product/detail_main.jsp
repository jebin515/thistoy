<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>Document</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/detail-main.css" />
</head>
<body>
	<%@ include file="../includes/header.jsp" %>
	<div id="main">
		<!-- 메인 1 -->
		<div class="detail-head">
			<div class="img-section">
				<div class="swiper-container mySwiper2">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img src="/img/서브2.jpg" />
						</div>
						<div class="swiper-slide">
							<img src="/img/서브1.jpg" />
						</div>
						<div class="swiper-slide">
							<img src="/img/서브1.jpg" />
						</div>
						<div class="swiper-slide">
							<img src="/img/서브1.jpg" />
						</div>
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
				<div thumbsSlider="" class="swiper-container mySwiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img src="/img/서브1.jpg" />
						</div>
						<div class="swiper-slide">
							<img src="/img/서브1.jpg" />
						</div>
						<div class="swiper-slide">
							<img src="/img/서브1.jpg" />
						</div>
						<div class="swiper-slide">
							<img src="/img/서브1.jpg" />
						</div>
					</div>
				</div>
			</div>
			<div class="txt-section">
				<div class="txt-title">[만옥] 테스트 제목 입니다~</div>
				<input type="text" id="txt-title" value="테스트" style="display: none;">
				<div class="txt-main">
					<table>
						<tr>
							<th><span>판매가</span></th>
							<td>
								<div class="price">36000</div>
							</td>
						</tr>
						<tr>
							<th><span>판매자</span></th>
							<td>아이디</td>
							<input id="sell_id" type="text" value="이진웅"
								style="display: none;">
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
					<button>바로구매</button>
					<button>장바구니</button>
					<button>하트</button>
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
						<td><img src="//참고 파일/박성주/coupang_ex/상품2.jpg"></td>
						<td><img src="/img/slide-1.jpg"></td>
						<td><img src="/img/slide-2.jpg"></td>
						<td><img src="/img/fit1.jpg"></td>
						<td><img src="/img/서브1.jpg"></td>
					</tr>
				</table>
			</div>
		</div>

		<div class="detail-content">
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
	<%@ include file="../includes/footer.jsp" %>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="/js/index.js" defer></script>
	<script src="/js/editor.js"></script>
	<script src="/js/detail-slide.js"></script>
	<script type="text/javascript">
		function winpop() {
			var open = window.open("questionpop.html", "parent",
					"resizable=no, scrollbars=0");
		}
	</script>
</body>
</html>