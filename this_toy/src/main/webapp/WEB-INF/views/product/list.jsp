<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/list.css?ver=3">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<script src="/js/list.js" defer></script>
<title>전체글보기</title>
</head>

<body>
	<!--------------header---------S----->
	<%@ include file="../includes/header.jsp"%>
	<!-- ------------------리스트(article)----------------- -->
	<article>
		<div class="title">
			<c:out value="${dcname.downCaName}" />
			<c:if test="${!empty search}">
				<c:if test="${pageMaker.total+0 == 0}">
					<c:out value="${search}" />에 대한 검색결과는 없습니다.
				</c:if>
				<c:if test="${pageMaker.total+0 != 0}">
					<c:out value="${search}" />에 대한 검색결과 입니다.
				</c:if>
			</c:if>
		</div>
		<div class="line"></div>
		<div class="list">
			<div class="aside">
				<button type="button" class="item nodrop">피규어</button>
				<div style="position: relative;">
					<i class="fas fa-sort-down"></i> <i class="fas fa-sort-up"></i>
				</div>
				<div class="dropbox">
					<button type="button" class="item drop"
						value='<c:out value="${dcList[0].downCaCode}"/>'>애니</button>
					<button type="button" class="item drop"
						value='<c:out value="${dcList[1].downCaCode}"/>'>게임</button>
					<button type="button" class="item drop"
						value='<c:out value="${dcList[2].downCaCode}"/>'>연예인</button>
				</div>
				<button type="button" class="item nodrop">하우스</button>
				<div style="position: relative;">
					<i class="fas fa-sort-down"></i> <i class="fas fa-sort-up"></i>
				</div>
				<div class="dropbox">
					<button type="button" class="item drop"
						value='<c:out value="${dcList[3].downCaCode}"/>'>소형</button>
					<button type="button" class="item drop"
						value='<c:out value="${dcList[4].downCaCode}"/>'>중형</button>
					<button type="button" class="item drop"
						value='<c:out value="${dcList[5].downCaCode}"/>'>대형</button>
				</div>
				<button type="button" class="item nodrop">RC</button>
				<div style="position: relative;">
					<i class="fas fa-sort-down"></i> <i class="fas fa-sort-up"></i>
				</div>
				<div class="dropbox">
					<button type="button" class="item drop"
						value='<c:out value="${dcList[6].downCaCode}"/>'>육</button>
					<button type="button" class="item drop"
						value='<c:out value="${dcList[7].downCaCode}"/>'>해</button>
					<button type="button" class="item drop"
						value='<c:out value="${dcList[8].downCaCode}"/>'>공</button>
				</div>
				<button type="button" class="item nodrop">기타</button>
				<div style="position: relative;">
					<i class="fas fa-sort-down"></i> <i class="fas fa-sort-up"></i>
				</div>
				<div class="dropbox">
					<button type="button" class="item drop"
						value='<c:out value="${dcList[9].downCaCode}"/>'>슬라임</button>
					<button type="button" class="item drop"
						value='<c:out value="${dcList[10].downCaCode}"/>'>굿즈</button>
				</div>
				<button type="button" class="item nodrop">Best</button>
				<button type="button" class="item nodrop">New</button>
			</div>
			<div style="position: relative;">
				<i class="fas fa-caret-left"></i>
			</div>
			<div class="gridContainer">
				<c:if test="${pageMaker.total+0 == 0}">
					<div class="noproduct">상품준비중입니다....</div>
				</c:if>
				<c:forEach var="pdinfo" items="${pdList}">
					<c:set var="i" value='${fn:indexOf(pdinfo.productMainImg,",")}' />
					<c:set var="mimg"
						value="${fn:substring(pdinfo.productMainImg,0,i)}" />
					<div class="gridItem">
						<a href="/product/detail_main?pc=${pdinfo.productCode}"> <img
							src="/upload/product/main/${mimg}" alt="" class="mainImg" />
						</a>
						<div class="product_info">
							<a href="/product/detail_main?pc=${pdinfo.productCode}"> <span
								class="product_name"><span class="product_logo">This
										Toy</span> <c:out value='${pdinfo.productName}' /></span>
							</a>
							<div class="product_price">
								가격 :
								<c:out value='${pdinfo.productPrice}' />
								원
							</div>
							<div class="product_deliver_price">배송비 : 3,000원</div>
							<div class="ratingbox">
								<div class="rating rating2">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="rating rating1">
									<i class="fa fa-star-o"></i>
									<!--비어있는 별5개  -->
									<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
								</div>
								<br />4.5
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<c:if test="${!empty pageMaker}">
			<div class="page">
				<a
					href="/product/list?dcc=${dcname.downCaCode}&p=1&search=${search}"><i
					class="fas fa-angle-double-left"></i></a> <a
					href="/product/list?dcc=${dcname.downCaCode}&p=${pageMaker.startPage-1}&search=${search}"><i
					class="fas fa-angle-left"></i></a>
				<c:forEach var="num" begin="${pageMaker.startPage}"
					end="${pageMaker.endPage}">
					<a
						href="/product/list?dcc=${dcname.downCaCode}&p=${num}&search=${search}"
						class="${pageMaker.pageNum==num? 'pageNum':''}">${num}</a>
				</c:forEach>
				<a
					href="/product/list?dcc=${dcname.downCaCode}&p=${pageMaker.endPage+1}&search=${search}"><i
					class="fas fa-angle-right"></i></a> <a
					href="/product/list?dcc=${dcname.downCaCode}&p=${pageMaker.realEnd}&search=${search}"><i
					class="fas fa-angle-double-right"></i></a>
			</div>
		</c:if>
	</article>
	<!-- -----------------footer----------------- -->
	<%@ include file="../includes/footer.jsp"%>
	<script>
		let downca = document.querySelectorAll('.drop');
		let downcode = '${dcname.downCaCode}';
		function category() {
			for (let i = 0; i < downca.length; i++) {
				if (downcode == downca[i].value) {
					let parent1 = downca[i].parentElement;
					downca[i].parentElement.style.display = "block";
					downca[i].style.background = 'rgb(162, 109, 236)';
					downca[i].parentElement.previousElementSibling.children[0].style.display = "none";
					downca[i].parentElement.previousElementSibling.children[1].style.display = "block";
				}
			}
		}
		category();
		for (let i = 0; i < downca.length; i++) {
			downca[i].addEventListener('click', function() {
				let dcn = downca[i].value;
				location.href = "/product/list?dcc=" + dcn;
			})
		}
	</script>
</body>
</html>