<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8" />
			<meta http-equiv="X-UA-Compatible" content="IE=edge" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />
			<link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
			<link rel="stylesheet" href="/css/style.css" />
			<link rel="stylesheet" href="/css/orders.css" />
			<title>Document</title>
		</head>

		<body>
			<%@ include file="../includes/header.jsp" %>
				<main>
					<div class="container">
						<div class="title">주문/결제</div>
						<table class="list_table">
							<tr>
								<th>이미지</th>
								<th>제목</th>
								<th>상품정보</th>
								<th>판매자</th>
								<th>배송비</th>
								<th>수량</th>
								<th>상품금액</th>
								<!-- 
									if (상품 갯수 > 1 ) // 1개 이상이면 외 표시 {
										list[0] + 외 + count;
									} else { // 1개지
										list[]
									}
								 -->
							</tr>
							<%-- <c:forEach items="${select }">
								</c:forEach>
								--%>
								<tr>
									<td><img src="/img/cart2.png" /></td>
									<td>
										<%-- <c:out value="${select.orderCode}" /> --%>
									</td>
									<td>상품정보</td>
									<td>판매자</td>
									<td>3000원</td>
									<td>1개</td>
									<td>100원</td>
								</tr>
						</table>
						<hr />
						<div class="list_main">
							<div class="addr_list">
								<div class="title">
									<span>배송지정보</span>
								</div>
								<div class="addr_chk">
									<ul>
										<li><span>배송지선택</span></li>
										<li>
											<input type="radio" id="addr" name="addr_list" value="addr" onclick="none()"
												checked />
											<label for="addr">기본배송지</label>
										</li>
										<li>
											<input type="radio" id="new_addr" name="addr_list" value="new_addr"
												onclick="none()" />
											<label for="new_addr">신규배송지</label>
										</li>
									</ul>
								</div>
								<div class="addr_main" id="addr_main">
									<ul>
										<li>
											<input type="text" id="name" name="name" value="이진융" readonly />
										</li>
										<li>
											(<input type="text" id="old_member_post" value="18362" readonly />)
											<input type="text" id="old_member_addr"
												value="경기도 화성시 안녕남로 246-21(안녕동, 안녕동 우방아이유쉘)" readonly />
											<input type="text" id="old_member_detail" value="106동 1303호" readonly />
										</li>
									</ul>
								</div>
								<div class="addr_new_main" id="addr_new_main" style="display: none">
									<ul>
										<li>
											<span>수령인</span> :
											<input type="text" id="new_name" name="new_name" />
										</li>
										<li>
											<span>배송지</span> :
											<input id="member_post" name="new_member_post" type="text" placeholder="지번"
												readonly onclick="findAddr()" />
											<input id="member_addr" name="new_member_addr" type="text" placeholder="주소"
												readonly />
											<input type="text" name="new_member_detail" id="member_detail"
												placeholder="추가 주소" />
										</li>
									</ul>
								</div>
								<p id="addrData"></p>
								<p id="member_post_Data"></p>
							</div>
							<div class="user_list">
								<div class="title">
									<span>주문자정보</span>
								</div>
								<div class="user_main">
									<ul>
										<li>이진웅</li>
										<li>이진웅</li>
										<li>이진웅</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="totle">
							<div class="title">
								<span>결제상세</span>
							</div>
							<div class="totle_main">
								<ul>
									<li>상품금액</li>
									<li>100원</li>
								</ul>
								<ul>
									<li>+</li>
									<li>+</li>
								</ul>
								<ul>
									<li>배송비</li>
									<li>3000원</li>
								</ul>
								<ul>
									<li>=</li>
									<li>=</li>
								</ul>
								<ul>
									<li>총합</li>
									<li>
										<input type="hidden" class="price_total" value="100" /> 원
									</li>
								</ul>
							</div>
							<div class="totle_btn">
								<button id="check_module" type="button">결제하기</button>
							</div>
						</div>
					</div>
				</main>
				<%@ include file="../includes/footer.jsp" %>
					<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
					<script src="/js/address.js"></script>
					<script src="/js/orders.js"></script>
					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<!-- jQuery -->
					<script src="https://code.jquery.com/jquery-1.12.4.min.js"
						integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
						crossorigin="anonymous"></script>
					<!-- iamport.payment.js -->
					<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
					<script type="text/javascript">
						var nameValue = "";
						var member_post = "";
						var member_addr = "";
						var member_detail = "";
						$("#check_module").click(function () {
							var addrType = $("input[name='addr_list']:checked").val();
							nameValue =
								addrType == "addr" ? $("#name").val() : $("#new_name").val();
							member_post =
								addrType == "addr" ? $("#old_member_post").val() : $("#new_member_post").val();
							member_addr =
								addrType == "addr" ? $("#old_member_addr").val() : $("#new_member_addr").val();
							//가맹점 식별코드
							IMP.init("imp76068644");
							IMP.request_pay(
								{
									pg: "inicris",
									pay_method: "card",
									merchant_uid: "merchant_" + new Date().getTime(),
									name: nameValue, //결제창에서 보여질 이름 // 상품 이름
									amount: 100, //실제 결제되는 가격
									buyer_email: "iamport@siot.do",
									buyer_name: nameValue, // 구매자
									buyer_tel: "010-1234-5678",
									buyer_addr: member_addr,
									buyer_postcode: member_post,
								},
								function (rsp) {
									if (rsp.success) {
										console.log(rsp);
										// rsp . 결제 번호
										// 결제검증
										$.ajax({
											type: "POST",
											url: "/orders/" + rsp.imp_uid,
											contentType: "application/json",
											data: JSON.stringify({
												uid: rsp.imp_uid,
												price: rsp.paid_amount
											}),
										}).done(function (data) {
											if (rsp.paid_amount == data.response.amount) {
												location.href = "/orders/orderssuccess";
												console.log(data);
											} else {
												alert("결제 검증 실패");
											}
										});
									} else {
										alert("결제 실패")
									}
								}
							);
						});
					</script>
		</body>

		</html>