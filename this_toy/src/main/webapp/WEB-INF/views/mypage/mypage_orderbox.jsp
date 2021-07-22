<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mypage_orderbox.css">
    <!-- <script src="js/mypage.js" defer></script> -->
    <script src="/js/chatbot.js" defer></script>
    <script src="/js/back-to-top.js" defer></script>
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
                <a href="mypage_wishlist.html" class="item">찜목록</a>
                <a href="mypage_sellbox.html" class="item">등록한 판매글</a>
                <a href="mypage_cart.html" class="item">장바구니</a>
                <a href="mypage_orderbox.html" class="item">주문목록</a>
                <a href="mypage_review.html" class="item">문의/후기</a>
            </div>
            <div style="position: relative;">
                <i class="fas fa-caret-left"></i>
            </div>
            <div class="flexcollum">
                <div class="orderbox">
                    <a href="mypage_detailorderbox.html">
                        <img src="/img/mable.jpg" alt="" class="orderimg">
                    </a>
                    <div class="order_info">
                        <a href="detailorderbox.html">
                            <div class="product_logo">This Toy</div>
                            <div class="product_name">마블 아이언맨</div>
                        </a>
                        <span class="product_price">3,000원</span>
                        <span>2021-07-15</span>
                        <div class="order_line"></div>
                        <div class=" buytext">주문이 완료되었습니다. 이용해주셔서 감사합니다.</div>
                    </div>
                    <div class="seller_info">
                        <div>jebin515(판매자)</div>
                        <div>010-1234-5678(판매자)</div>
                    </div>
                    <a href="" class="onemore">재구매</a>
                </div>
                <div class="orderbox">
                    <a href="">
                        <img src="/img/mable.jpg" alt="" class="orderimg">
                    </a>
                    <div class="order_info">
                        <a href="">
                            <div class="product_logo">This Toy</div>
                            <div class="product_name">마블 아이언맨</div>
                        </a>
                        <span class="product_price">3,000원</span>
                        <span>2021-07-15</span>
                        <div class="order_line"></div>
                        <div class=" buytext">주문이 완료되었습니다. 이용해주셔서 감사합니다.</div>
                    </div>
                    <div class="seller_info">
                        <div>jebin515(아이디)</div>
                        <div>010-1234-5678(전화번호)</div>
                    </div>
                    <a href="" class="onemore">재구매</a>
                </div>
                <div class="orderbox">
                    <a href="">
                        <img src="/img/mable.jpg" alt="" class="orderimg">
                    </a>
                    <div class="order_info">
                        <a href="">
                            <div class="product_logo">This Toy</div>
                            <div class="product_name">마블 아이언맨</div>
                        </a>
                        <span class="product_price">3,000원</span>
                        <span>2021-07-15</span>
                        <div class="order_line"></div>
                        <div class=" buytext">주문이 완료되었습니다. 이용해주셔서 감사합니다.</div>
                    </div>
                    <div class="seller_info">
                        <div>jebin515(아이디)</div>
                        <div>010-1234-5678(전화번호)</div>
                    </div>
                    <a href="" class="onemore">재구매</a>
                </div>
            </div>
            <!-- <div class="order_table">
                <tr class="ordertr">
                    <td>
                        <a href="">
                            <img src="img/mable.jpg" alt="" class="orderimg">
                        </a>
                    </td>
                    <td class="order_info">
                        <a href="">
                            <div class="product_logo">This Toy</div>
                            <div>마블 아이언맨</div>
                        </a>
                        <span class="product_price">3,000원</span>
                        <span>2021-07-15</span>
                        <div class="order_line"></div>
                        <div class=" buytext">주문이 완료되었습니다. 이용해주셔서 감사합니다.</div>
                    </td>
                    <td>
                        <div>jebin515(아이디)</div>
                        <div>010-1234-5678(전화번호)</div>
                    </td>
                    <td>
                        <a href="" class="onemore">재구매</a>
                    </td>
                </tr>
            </div> -->
    </section>
    
    <%@ include file="../includes/footer.jsp" %>
</body>

</html>