<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="/css/detail-writer.css?ver=2" />
</head>
<script defer>
	var result = "<c:out value='${fail}'/>";
	function fail() {
		alert('최소 하나의 슬라이드이미지와 설명이미지가 필요합니다.');
	}
	if (result == 'noimg') {
		fail();
	}
	if(${userId eq null}){
		alert('로그인이 필요한 기능입니다.')
		location.href="/";
	}
</script>

<body>
	<!-- ------------------재빈 상품 판매글 작업------------------ -->
	<%@ include file="../includes/header.jsp"%>
	<!-- 메인 진입 -->
	<div id="main">
		<form action="/product/detail_writer" method="post"
			enctype="multipart/form-data">
			<div id="write">
				<div class="write-form">
					<div class="write-img">
						<table>
							<thead>
								
								<th>슬라이드</th>
								<th>상품설명</th>
							</thead>
							<tbody>
								<tr>
									
									<td><input type="file" id="slide-1" name="mainFiles">
										<label for="slide-1" id="slide-1-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
									<td><input type="file" id="main-1" name="infoFiles">
										<label for="main-1" id="main-1-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
								</tr>
								<tr>
									
									<td><input type="file" id="slide-2" name="mainFiles">
										<label for="slide-2" id="slide-2-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
									<td><input type="file" id="main-2" name="infoFiles">
										<label for="main-2" id="main-2-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
								</tr>
								<tr>
								
									<td><input type="file" id="slide-3" name="mainFiles">
										<label for="slide-3" id="slide-3-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
									<td><input type="file" id="main-3" name="infoFiles">
										<label for="main-3" id="main-3-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
								</tr>
								<tr>
									
									<td><input type="file" id="slide-4" name="mainFiles">
										<label for="slide-4" id="slide-4-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
									<td><input type="file" id="main-4" name="infoFiles">
										<label for="main-4" id="main-4-view">
											<div class="upload">
												<span>업로드</span>
											</div>
									</label></td>
								</tr>
							</tbody>
						</table>
					</div>
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
								<th><span>판매자</span></th>
								<td><input type="text" readonly="readonly" name="userId"
									value='<c:out value="${userId}"/>' /></td>
							</tr>
							<tr>
								<th><span>상품명</span></th>
								<td><input type="text" name="productName" class="pdname" required /></td>
							</tr>
							<tr>
								<th><span>판매가</span></th>
								<td><input type="number" class="price" name="productPrice" required />
								</td>
							</tr>
							<tr>
								<th><span>카테고리</span></th>
								<td><select name="downCaCode">
										<c:forEach var="down" items="${list}">
											<option value="<c:out value='${down.downCaCode}'/>"><c:out
													value="${down.downCaName}" /></option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<th><span>재고</span></th>
								<td><input type="number" class="product_num"
									name="productStock"  required/>
									<button type="button" class="ea_btn" onclick="plus()">+</button>
									<button type="button" class="ea_btn" onclick="minus()">-</button>
								</td>
							</tr>
						</table>
					</div>
					<div class="detail-head-button">
						<input type="submit" value="등록">
					</div>
				</div>
			</div>
		</form>



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