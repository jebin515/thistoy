<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/mypage_orderbox.css">
    <script src="https://kit.fontawesome.com/a216194d9c.js" crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
<%@ include file="../includes/header.jsp" %>
    <!-- ------------마이페이지---------- -->
    <section>
        <h3 class="mypage_logo">마이페이지</h3>
        <div class="mp">
            <!-- 왼쪽 -->
            <img class="left" src="/img/profile.jpg" alt="이미지없음">
            <!-- 오른쪽  -->
            <div class="right">
                <div>이름 : 윤재빈</div>
                <div>아이디 : jebin515</div>
                <div>이메일 : jebin515@naver.com</div>
                <div>기본 배송지 | 경기도 안양시 어쩌구 저쩌구 집이 멀어요 서울 사고싶다 도로명 주소는 뭐라고 써야하나</div>
            </div>
        </div>
        <div class="line"></div>
        <div class="mypage_inner">
            <div class="inner">
				<a href="/mypage/mypage" class="item">찜목록</a> <a
					href="/mypage/mypage_sellbox" class="item">등록한 판매글</a> <a
					href="/mypage/mypage_cart" class="item">장바구니</a> <a
					href="/mypage/mypage_orderbox" class="item">주문목록</a> <a
					href="/mypage/mypage_review" class="item">문의/후기</a>
			</div>
            <div style="position: relative;">
                <i class="fas fa-caret-left"></i>
            </div>
            <div class="flexcollum">
	            <c:forEach var="ob" items="${orderbox}">
                <div class="orderbox">
                    <a href="mypage_detailorderbox.html">
                        <img src="/upload/product/main/${ob.productImg}" alt="" class="orderimg">
                    </a>
                    <div class="order_info">
                        <a href="detailorderbox.html">
                            <div class="product_logo">This Toy</div>
                            <div class="product_name">${ob.productName}</div>
                        </a>
                        <span class="product_price">${ob.orderPrice}원</span>
                        <span>${ob.orderDate}</span>
                        <div class="order_line"></div>
                        <div class=" buytext">주문이 완료되었습니다. 이용해주셔서 감사합니다.</div>
                    </div>
                    <div class="seller_info">
                        <div>아이디(판매자)</div>
                        <div>010-1234-5678(판매자)</div>
                    </div>
                    <a href="" class="onemore">재구매</a>
                </div>
                </c:forEach>
                </div>
    </section>
    
    <%@ include file="../includes/footer.jsp" %>
</body>

</html>