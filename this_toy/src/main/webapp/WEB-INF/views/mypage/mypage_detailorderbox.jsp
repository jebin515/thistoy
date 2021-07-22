<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mypage_detailorderbox.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <title>Document</title>
</head>

<body>
<%@ include file="../includes/header.jsp" %>

    <article>
        <div>주문상세정보</div>
        <table class="ordertop">
            <tr>
                <td>주문일자 2021.07.14</td>
                <td>주문번호 20210714123123</td>
                <td><a href="#" class="order_remove">주문내역 삭제</a></td>
            </tr>
        </table>
        <table class="ordermiddle">
            <tr class="thead">
                <th><strong>상품코드</strong></th>
                <th>상품정보</th>
                <th>상품금액(수량)</th>
                <th>판매자</th>
                <th>진행상태</th>
            </tr>
            <tr>
                <td>0123344405</td>
                <td>
                    <div class="orderinfo">
                        <img src="/img/mable.jpg" alt="" class="orderimg">
                        <div class="orderinfo_text">
                            <div class="product_logo">This Toy</div>
                            <div>마블 아이언맨 피규어</div>
                        </div>
                    </div>
                </td>
                <td>
                    <div>9,900원</div>
                    <div>(1개)</div>
                </td>
                <td>
                    <div>판매자 아이디</div>
                    <div>판매자 전화번호</div>
                </td>
                <td>
                    <div class="delivering">배송중</div>
                    <a href="" class="order_cancle">주문취소</a>
                </td>
                <td></td>
            </tr>
        </table>
        <div>배송지 정보</div>
        <table class="order_bottom">
            <tr>
                <th>수령인</th>
                <td>윤재빈</td>
                <td class="orderer_info first">주문자정보</td>
            </tr>
            <tr>
                <th>연락처</th>
                <td>010-6865-6036</td>
                <td rowspan="2" class="orderer_info">
                    윤재빈<br />
                    010-6865-6036</td>
            </tr>
            <tr>
                <th>배송지</th>
                <td>
                    13938<br />
                    경기도 안양시 ~~~~~~~~~~~<br />
                    1111111호
                </td>
            </tr>
        </table>
    </article>
    
    <%@ include file="../includes/footer.jsp" %>
</body>

</html>