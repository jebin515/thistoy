<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/mypage_detailorderbox.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <title>Document</title>
</head>

<body>
<%@ include file="../includes/header.jsp" %>
    <article>
        <div>주문상세정보</div>
        <table class="ordertop">
            <tr>
                <td>주문일자 <fmt:formatDate var="date" value="${order.orderDate}" pattern="yyyy.MM.dd" /> ${date}</td>
                <td>주문번호 <c:out value="${order.orderCode}"/></td>
                <td><a href="/mypage/orderdelete?oc=${order.orderCode}" class="order_remove">주문내역 삭제</a></td>
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
                <td><c:out value="${product.productCode}"/></td>
                <td>
                    <div class="orderinfo">
                    <c:set var="i" value='${fn:indexOf(product.productMainImg,",")}' />
					<c:set var="simg" value="${fn:substring(product.productMainImg,0,i)}" />
                        <img src="/upload/product/main/${simg}" alt="" class="orderimg">
                        <div class="orderinfo_text">
                            <div class="product_logo">This Toy</div>
                            <div><c:out value="${product.productName}"/></div>
                        </div>
                    </div>
                </td>
                <td>
                    <div><c:out value="${product.productPrice}"/>원</div>
                    <div>(1개)</div>
                </td>
                <td>
                    <div>판매자 <c:out value="${seller.userId}"/></div>
                    <div>판매자 <c:out value="${seller.userTel}"/></div>
                </td>
                <td>
                    <div class="delivering"><c:out value="${order.orderSituation}"/></div>
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
                    ${user.userName}<br />
                    ${user.userTel}</td>
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