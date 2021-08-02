<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>나의장바구니</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/mypage_cart.css?ver=2">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
</head>

<body>
	<%@ include file="../includes/header.jsp"%>

	<!-- 장바구니 영역 -->
	<div class="main">
		<!-- CART 글씨영역 -->
		<div class="title">CART</div>
		<!-- 장바구니 form 설정 -->
		<c:if test="${cartlist eq null}">
			<br />
			<div>빈 페이지입니다.</div>
		</c:if>
		<c:if test="${cartlist ne null}">
			<form name="orderform" id="orderform" method="post" class="orderform"
				action="/orders/cart">
				<input type="hidden" name="cmd" value="order">

				<!-- 장바구니 표 -->
				<table class="basketdiv" id="basket">
					<!-- 표 카테고리 -->
					<tr class="row head">
						<td class="img">이미지</td>
						<td class="pname">상품명</td>
						<td class="basketprice">가격</td>
						<td class="num">수량</td>
						<td class="sum">합계</td>
						<td class="basketcmd">삭제</td>
					</tr>

					<!-- 장바구니 내역 1번째 줄 -->
					<c:set var="cnum" value="0" />
					<c:forEach var="cl" items="${cartlist}">
						<c:set var="i" value='${fn:indexOf(cl.productMainImg,",")}' />
						<c:set var="cimg" value="${fn:substring(cl.productMainImg,0,i)}" />
						<c:set var="cnum" value="${cnum + 1}" />

						<tr class="row data">
							<!-- 선택 -->

							<!-- 제품 이미지 -->
							<td>
								<div class="img">
									<img src="/upload/product/main/${cimg}" width="100px">
								</div>
							</td>

							<!-- 상품명 -->
							<td class="pname">${cl.productName}</td>

							<!-- 가격 -->
							<td>
								<div class="basketprice">
									<input type="hidden" name="productPrice" id="p_price${cnum}"
										class="bp" value="${cl.productPrice}">
									${cl.productPrice}원
								</div>
							</td>

							<!-- 수량 -->
							<td>
								<div class="num">
									<div class="updown">
										<!-- 최대개수 99까지로 설정: maxlength="2" -->
										<input type="text" name="st" id="p_num${cnum}" size="2"
											maxlength="2" class="p_num" value="${cl.productEa}"
											onkeyup="javascript:basket.changePNum(${cnum});">
										<!-- 증가 -->
										<i class="fas fa-chevron-circle-up up"
											onclick="javascript:basket.changePNum(${cnum});"></i>
										<!-- 감소 -->
										<i class="fas fa-chevron-circle-down down"
											onclick="javascript:basket.changePNum(${cnum});"></i>
									</div>
								</div>
							</td>

							<!-- 합계 -->
							<td>
								<div class="sum">${cl.productPrice}원</div>
							</td>
							<!-- 삭제 -->
							<td><input type="hidden" value="${cl.productCode}" name="pdc" />
								<div class="basketcmd">
									<a href="javascript:void(0)" class="abutton delete"
										onclick="javascript:basket.delItem();"> 삭제 </a>
								</div></td>
						</tr>
					</c:forEach>

				</table>
				<!-- 전체 삭제 -->
				<div class="cart_bottom">
					<div class="right-align basketrowcmd">
						<a href="javascript:void(0)" class="abutton alldelete"
							onclick="javascript:basket.delAllItem();">전체상품삭제</a>
					</div>

					<div class="total">
						<div class="bigtext sumcount" id="sum_p_num">총 4개의 상품 금액</div>
						<div class="plusicon">
							<i class="fas fa-plus-circle"></i>
						</div>
						<div class="delpay">배송비 3,000원</div>
						<div class="totalpay">
							<i class="fab fa-creative-commons-nd"></i>
						</div>
						<div class="bigtext box blue summoney" id="sum_p_price"></div>
					</div>

					<div id="goorder" class="">
						<div class="clear"></div>
						<div class="buttongroup center-align cmd">
							<input type="submit" value="주문하기" />
						</div>
					</div>
				</div>
		</c:if>
	</div>
	</form>
	</div>
	<%@ include file="../includes/footer.jsp"%>
	<input type="hidden" value="${userId}" class="uId" />
	<script type="text/javascript" src="/js/cart_3.js?ver=3"></script>
</body>

</html>
<script defer>
$(document).on('click','.delete',function(){
	let userId = $('.uId').val();
	let pcode = $(this).parent().prev().val();
	$.ajax({
		type : 'delete',
		url : '/mypage/cart/delete/'+pcode+'/'+userId,
		contentType : "application/json; charset=utf-8",
		success : function(result) {
			alert(result);
			if($('.data').length==0){
				$('.basketdiv').remove();
				$('.cart_bottom').remove();
				$('.title').after('<br/>빈 페이지입니다');
			}
		},
		error : function(er) {
			alert(er);
		}
	});
});
$(document).on('click','.alldelete ',function(){
	let userId = $('.uId').val();
	$.ajax({
		type : 'delete',
		url : '/mypage/cart/alldelete/'+userId,
		contentType : "application/json; charset=utf-8",
		success : function(result) {
			alert(result);
			$('.basketdiv').remove();
			$('.cart_bottom').remove();
			$('.title').after('<br/>빈 페이지입니다');
		},
		error : function(er) {
			alert(er);
		}
	});
});
</script>