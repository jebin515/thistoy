<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
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
	<%@ include file="../includes/header.jsp"%>
	<!-- 메인 진입 -->
	<div id="main">
		<div id="write">
			<div class="write-form">
				<form>
					<div class="write-img">
						<table>
							<thead>
								<th>순서</th>
								<th>슬라이드</th>
								<th>상품설명</th>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><input type="file" id="slide-1"> <label
										for="slide-1" id="slide-1-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
									<td><input type="file" id="main-1"> <label
										for="main-1" id="main-1-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
								</tr>
								<tr>
									<td>2</td>
									<td><input type="file" id="slide-2"> <label
										for="slide-2" id="slide-2-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
									<td><input type="file" id="main-2"> <label
										for="main-2" id="main-2-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
								</tr>
								<tr>
									<td>3</td>
									<td><input type="file" id="slide-3"> <label
										for="slide-3" id="slide-3-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
									<td><input type="file" id="main-3"> <label
										for="main-3" id="main-3-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
								</tr>
								<tr>
									<td>4</td>
									<td><input type="file" id="slide-4"> <label
										for="slide-4" id="slide-4-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
									<td><input type="file" id="main-4"> <label
										for="main-4" id="main-4-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="write-text">
						<textarea></textarea>
						<input type="submit">
					</div>
				</form>
			</div>
		</div>


		<!-- 메인 1 -->
		<div class="detail-head">
			<div class="img-section">
				<div class="swiper-container mySwiper2">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img src="/img/500x500.png" id="slide-1-img">
						</div>
						<div class="swiper-slide">
							<img src="/img/500x500.png" id="slide-2-img" />
						</div>
						<div class="swiper-slide">
							<img src="/img/500x500.png" id="slide-3-img" />
						</div>
						<div class="swiper-slide">
							<img src="/img/500x500.png" id="slide-4-img" />
						</div>
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
			</div>
			<div class="txt-section">
				<div class="txt-title">미리보기</div>
				<div class="txt-main">
					<table>
						<tr>
							<th><span>판매가</span></th>
							<td>
								<div class="price">100</div>
							</td>
						</tr>
						<tr>
							<th><span>판매자</span></th>
							<td>이진웅</td>
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
				<li class="tab3"><a href="#">Q&A</a></li>
				<li class="tab4"><a href="#">문의하기</a></li>
				<li class="tab4"><a href="#">배송/교환/환불</a></li>
			</ul>
		</div>

		<div class="detail-content">
			<div class="title-plan">
				<span class="plan">상품설명</span>
			</div>
			<div class="plan">
				<table>
					<tr>
						<td><img src="/img/500x500.png" id="main-1-img"></td>
						<td><img src="/img/500x500.png" id="main-2-img"></td>
						<td><img src="/img/500x500.png" id="main-3-img"></td>
						<td><img src="/img/500x500.png" id="main-4-img"></td>
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
				<span class="Q&A">Q&A (1)</span>
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

	<!-- 메인 끝 -->
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="/js/index.js" defer></script>
	<script src="/js/editor.js"></script>
	<script src="/js/priview.js"></script>
	<script src="/js/detail-write.js"></script>

</body>

</html>