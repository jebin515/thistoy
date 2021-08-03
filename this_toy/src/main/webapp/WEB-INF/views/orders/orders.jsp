<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/css/orders.css?var=2" />
<title>Document</title>
</head>

<body>
	<%@ include file="../includes/header.jsp"%>
	<main>
		<div class="container">
			<div class="title">주문/결제</div>
			<table class="list_table">
				<tr>
					<th>이미지</th>
					<th>제목</th>
					<th>판매자</th>
					<th>배송비</th>
					<th>수량</th>
					<th>상품금액</th>
				</tr>
				<c:set var="count" value="0" />
				<c:forEach var="pdc" items="${pdc}" varStatus="stauts">
					<c:set var="i" value='${fn:indexOf(pdc.productMainImg,",")}' />
					<c:set var="mimg" value="${fn:substring(pdc.productMainImg,0,i)}" />
					<tr>
						<input type="hidden" name="productCode" value="${pdc.productCode}">

						<td><input type="hidden" name="productImg" value="${mimg}">
							<img src="/upload/product/main/${mimg}" /></td>
						<td><input type="hidden" name="productName"
							value="${pdc.productName}"> <c:out
								value="${pdc.productName}" /></td>
								<td><input type="hidden" name="userId" value="${pdc.userId}">
							<c:out value="${pdc.userId}" /></td>
						<td><input type="hidden" value="배송비">3000원</td>

						<td><input type="hidden" name="orderEa"
							value="${pdc.productEa}"> <c:out value="${pdc.productEa}" />
						</td>
						<td><input type="hidden" name="orderPrice"
							value="${pdc.productPrice}"> <c:out
								value="${pdc.productPrice}" /></td>
					</tr>
					<c:set var="count"
						value="${count + (pdc.productPrice * pdc.productEa)}" />
					<c:set var="pricecount" value="${stauts.count-1}" />
					<c:if test="${stauts.index ==0}">
						<c:set var="pricefirstname" value="${pdc.productName}" />
					</c:if>

				</c:forEach>
			</table>
			<hr />
			<div class="list_main">
				<div class="addr_list">
					<div class="title">
						<span>배송지정보</span>
					</div>
					<div class="addr_chk">
						<ul>
							<li><input type="radio" id="addr" name="addr_list"
								value="addr" onclick="none()" checked /> <label for="addr">기본배송지</label>
							</li>
							<li><input type="radio" id="new_addr" name="addr_list"
								value="new_addr" onclick="none()" /> <label for="new_addr">신규배송지</label>
							</li>
						</ul>
					</div>
					<div class="addr_main" id="addr_main">
						<ul>
							<li>
								<input type="hidden" id="name" name="name" value=" <c:out value='${user.userName}'/>" />
								<h6>수령인</h6> ${user.userName}
							</li>
							<li>
								<input type="hidden" id="userTel" name="userTel" value=" <c:out value='${user.userTel}'/>" />
								<h6>전화번호</h6> ${user.userTel}
							</li>

							<li>
								<input type="hidden" id="old_member_post" name="orderAddressPost" value="<c:out value='${user.userAddressPost}'/>" /> 
								<input type="hidden" id="old_member_addr" name="orderAddress" value="<c:out value='${user.userAddress}'/>" /> 
								<input type="hidden" id="old_member_detail" name="orderAddressDetail" value="<c:out value='${user.userAddressDetail}'/>" />
								<h6>배송지</h6> ${user.userAddressPost} &nbsp;&nbsp; ${user.userAddress} &nbsp;&nbsp; ${user.userAddressDetail}
							</li>
						</ul>
					</div>
					<div class="addr_new_main" id="addr_new_main" style="display: none">
						<ul>
							<li>
								<h6>수령인</h6> <input type="text" id="new_name" name="new_name" placeholder="수령인을 적어주세요!"/>
							</li>
							<li>
								<h6>전화번호</h6> <input type="text" id="new_tel" name="new_tel" placeholder="전화번호를 적어주세요!"/>
							</li>
							<li>
								<h6>배송지</h6> <input id="member_post" name="orderAddressPost"
								type="text" placeholder="지번" readonly onclick="findAddr()" required/> <input
								id="member_addr" name="orderAddress" type="text"
								placeholder="주소" readonly /> <input type="text"
								name="orderAddressDetail" id="member_detail" placeholder="추가 주소" />
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
							<li><c:out value="${user.userId}" /></li>
							<li><c:out value="${user.userName}" /></li>
							<li id="postuser"></li>
							<li id="postusertel"></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="totle">
				<div class="title">
					<span>총합</span>
				</div>
				<div class="totle_main">
					<ul>
						<li><h5>총&nbsp; 상품가격</h5>&nbsp; <h6>${count}</h6> &nbsp;<h5>원</h5></li>
					</ul>
					<ul>
						<li><i class='bx-fw bx bx-plus-circle bx-sm'></i></li>
					</ul>
					<ul>
						<li><h5>총&nbsp; 배송비</h5>&nbsp;<h6>3000</h6> &nbsp;<h5>원</h5></li>
					</ul>
					<ul>
						<li>=</li>
					</ul>
					<ul>
						<li>
							<input type="hidden" class="price_total" value="${count + 3000}" /> 
							<h5>총&nbsp; 주문금액</h5>&nbsp;<h2>${count + 3000}</h2> &nbsp;<h5>원</h5>
						</li>
					</ul>
				</div>
				<div class="totle_btn">
					<button id="check_module">결제하기</button>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="../includes/footer.jsp"%>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
	<script src="/js/address.js"></script>
	<script src="/js/orders.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<!-- iamport.payment.js -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script type="text/javascript">
		var nameValue = "";
		var telValue = "";
		var member_post = "";
		var member_addr = "";
		var member_detail = "";
		var orderCode = [];
		var orderPrice = [];
		var productCode = [];
		var productName = [];
		var orderEa = [];
		var productImg = [];
		$(document).ready(function() {
			$("#new_name").keyup(function() {
				$("#postuser").text($("#new_name").val());
			});
		});
		$(document).ready(function() {
			$("#new_tel").keyup(function() {
				$("#postusertel").text($("#new_tel").val());
			});
		});
		$("#check_module")
				.click(
						function() {
							var addrType = $("input[name='addr_list']:checked")
									.val();
							nameValue = addrType == "addr" ? $("#name").val()
									: $("#new_name").val();
							telValue = addrType == "addr" ? $("#userTel").val()
									: $("#new_tel").val();
							member_post = addrType == "addr" ? $(
									"#old_member_post").val() : $(
									"#member_post").val();
							member_addr = addrType == "addr" ? $(
									"#old_member_addr").val() : $(
									"#member_addr").val();
							member_detail = addrType == "addr" ? $(
									"#old_member_detail").val() : $(
									"#member_detail").val();

							console.log(nameValue + "" + telValue);
							console.log(member_post + "" + member_addr + ""
									+ member_detail);

							$('input[name=productCode]').each(function(i) {
								orderCode.push($(this).val());
								productCode.push($(this).val());
							});
							$('input[name=orderPrice]').each(function(i) {
								orderPrice.push($(this).val());
							});
							$('input[name=productName]').each(function(i) {
								productName.push($(this).val());
							});
							$('input[name=orderEa]').each(function(i) {
								orderEa.push($(this).val());
							});
							$('input[name=productImg]').each(function(i) {
								productImg.push($(this).val());
							});

							//가맹점 식별코드
							IMP.init("imp76068644");
							IMP
									.request_pay(
											{
												pg : "inicris",
												pay_method : "card",
												merchant_uid : "merchant_"
														+ new Date().getTime(),
												name : ('${pricecount}' == 0) ? '${pricefirstname}'
														: '${pricefirstname}'
																+ '외'
																+ '${pricecount}'
																+ '개', //결제창에서 보여질 이름 // 상품 이름
												amount : '${count + 3000}', //실제 결제되는 가격
												buyer_email : "${user.userEmail}",
												buyer_name : nameValue, // 구매자
											},
											function(rsp) {
												if (rsp.success) {
													$
															.ajax(
																	{
																		type : "POST",
																		url : "/orders/"
																				+ rsp.imp_uid,
																		dataType : "json",
																		contentType : "application/json; charset=UTF-8",
																		traditional : true,
																		data : JSON
																				.stringify({
																					imp_uid : rsp.imp_uid,
																					merchant_uid : rsp.merchant_uid,
																					orderCode : orderCode,
																					orderPrice : orderPrice,
																					productCode : productCode,
																					userId : '<c:out value="${user.userId}" />',
																					newuser_Name : nameValue,
																					newuser_Tel : telValue,
																					productName : productName,
																					orderEa : orderEa,
																					productImg : productImg,
																					orderAddressPost : member_post,
																					orderAddress : member_addr,
																					orderAddressDetail : member_detail
																				}),

																	})
															.done(
																	function(
																			data) {
																		console
																				.log(data);
																		if (rsp.paid_amount == data.response.amount) {
																			location.href = "/orders/orderssuccess";
																			console
																					.log(data);
																		} else {
																			alert("결제 검증 실패");
																		}
																	});
												} else {
													alert("결제 실패")
												}
											});
						});
	</script>
</body>

</html>