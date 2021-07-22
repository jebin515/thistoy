<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의장바구니</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
        integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mypage_cart.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <script type="text/javascript" src="/js/cart_3.js"></script>
</head>

<body>
<%@ include file="../includes/header.jsp" %>

    <!-- 장바구니 영역 -->
    <div class="main">
        <!-- CART 글씨영역 -->
        <div class="title">
            CART
        </div>
        <!-- 장바구니 form 설정 -->
        <form name="orderform" id="orderform" method="post" class="orderform" action="/Page" onsubmit="return false;">
            <input type="hidden" name="cmd" value="order">

            <!-- 장바구니 표 -->
            <table class="basketdiv" id="basket">
                <!-- 표 카테고리 -->
                <tr class="row head">
                    <td class="check">선택</td>
                    <td class="img">이미지</td>
                    <td class="pname">상품명</td>
                    <td class="basketprice">가격</td>
                    <td class="num">수량</td>
                    <td class="sum">합계</td>
                    <td class="basketcmd">삭제</td>
                </tr>

                <!-- 장바구니 내역 1번째 줄 -->
                <tr class="row data">
                    <!-- 선택 -->
                    <td class="check">
                        <input type="checkbox" name="buy" value="260" checked=""
                            onclick="javascript:basket.checkItem();">
                        &nbsp;
                    </td>

                    <!-- 제품 이미지 -->
                    <td>
                        <div class="img"><img src="/img/cart1.png" width="100px"></div>
                    </td>

                    <!-- 상품명 -->
                    <td class="pname">아파트타임</td>

                    <!-- 가격 -->
                    <td>
                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price"
                                value="32900">
                            32,900원
                        </div>
                    </td>

                    <!-- 수량 -->
                    <td>
                        <div class="num">
                            <div class="updown">
                                <!-- 최대개수 99까지로 설정: maxlength="2" -->
                                <input type="text" name="p_num1" id="p_num1" size="2" maxlength="2" class="p_num"
                                    value="2" onkeyup="javascript:basket.changePNum(1);">
                                <!-- 증가 -->
                                <i class="fas fa-chevron-circle-up up" onclick="javascript:basket.changePNum(1);"></i>
                                <!-- 감소 -->
                                <i class="fas fa-chevron-circle-down down"
                                    onclick="javascript:basket.changePNum(1);"></i>
                            </div>
                        </div>
                    </td>

                    <!-- 합계 -->
                    <td>
                        <div class="sum">65,800원</div>
                    </td>

                    <!-- 삭제 -->
                    <td>
                        <div class="basketcmd">
                            <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem();">
                                삭제
                            </a>
                        </div>
                    </td>
                </tr>


                <!-- 장바구니 내역 2번째 줄 -->
                <tr class="row data">
                    <td class="check">
                        <input type="checkbox" name="buy" value="261" checked=""
                            onclick="javascript:basket.checkItem();">
                        &nbsp;
                    </td>

                    <!-- 제품 이미지 -->
                    <td>
                        <div class="img"><img src="/img/cart2.png" width="70"></div>
                    </td>

                    <!-- 상품명 -->
                    <td class="pname">미니멀 거실</td>

                    <!-- 가격 -->
                    <td>
                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price2" class="p_price"
                                value="8900">
                            8,900원
                        </div>
                    </td>

                    <!-- 수량 -->
                    <td>
                        <div class="num">
                            <div class="updown">
                                <input type="text" name="p_num2" id="p_num2" size="2" maxlength="2" class="p_num"
                                    value="1" onkeyup="javascript:basket.changePNum(2);">
                                <!-- 증가 -->
                                <i class="fas fa-chevron-circle-up up" onclick="javascript:basket.changePNum(2);"></i>
                                <!-- 감소 -->
                                <i class="fas fa-chevron-circle-down down"
                                    onclick="javascript:basket.changePNum(2);"></i>
                            </div>
                        </div>
                    </td>

                    <!-- 합계 -->
                    <td>
                        <div class="sum">
                            8,900원
                        </div>
                    </td>

                    <!-- 삭제 -->
                    <td>
                        <div class="basketcmd">
                            <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem();">
                                삭제
                            </a>
                        </div>
                    </td>
                    
                </tr>


                <!-- 장바구니 내역 3번째 줄 -->
                <tr class="row data">
                    <td class="check">
                        <!-- 수정 부분 <div class="check">를 <td class="check">로 -->
                        <input type="checkbox" name="buy" value="262" checked=""
                            onclick="javascript:basket.checkItem();">&nbsp;
                    </td>

                    <!-- 제품 이미지 -->
                    <td>
                        <div class="img"><img src
                        
                        ="./image/cart3.png" width="70"></div>
                    </td>

                    <!-- 상품명 -->
                    <td class="pname">아이스크림 트럭</td>

                    <!-- 가격 -->
                    <td>
                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price3" class="p_price"
                                value="9900">9,900원
                        </div>
                    </td>

                    <!-- 수량 -->
                    <td>
                        <div class="num">
                            <div class="updown">
                                <input type="text" name="p_num3" id="p_num3" size="2" maxlength="2" class="p_num"
                                    value="1" onkeyup="javascript:basket.changePNum(3);">
                                <!-- 증가 -->
                                <i class="fas fa-chevron-circle-up up" onclick="javascript:basket.changePNum(3);"></i>
                                <!-- 감소 -->
                                <i class="fas fa-chevron-circle-down down"
                                    onclick="javascript:basket.changePNum(3);"></i>
                            </div>
                        </div>
                    </td>

                    <!-- 합계 -->
                    <td>
                        <div class="sum">9,900원</div>
                    </td>

                    <!-- 삭제 -->
                    <td>
                        <div class="basketcmd"><a href="javascript:void(0)" class="abutton"
                                onclick="javascript:basket.delItem();">삭제</a></div>
                    </td>
                </tr>


                <!-- 장바구니 내역 4번째 줄 -->

                <tr class="row data">
                    <td class="check">
                        <!-- 수정 부분 <div class="check">를 <td class="check">로 -->
                        <input type="checkbox" name="buy" value="263" checked=""
                            onclick="javascript:basket.checkItem();">&nbsp;
                    </td>

                    <!-- 제품 이미지 -->
                    <td>
                        <div class="img"><img src="/img/cart4.png" width="70"></div>
                    </td>

                    <!-- 상품명 -->
                    <td class="pname">냥이 하우스</td>

                    <!-- 가격 -->
                    <td>
                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price4" class="p_price"
                                value="9900">9,900원</div>
                    </td>

                    <!-- 수량 -->
                    <td>
                        <div class="num">
                            <div class="updown">
                                <input type="text" name="p_num4" id="p_num4" size="2" maxlength="2" class="p_num"
                                    value="1" onkeyup="javascript:basket.changePNum(4);">
                                <!-- 증가 -->
                                <i class="fas fa-chevron-circle-up up" onclick="javascript:basket.changePNum(4);"></i>
                                <!-- 감소 -->
                                <i class="fas fa-chevron-circle-down down"
                                    onclick="javascript:basket.changePNum(4);"></i>
                            </div>
                        </div>
                    </td>

                    <!-- 합계 -->
                    <td>
                        <div class="sum">9,900원</div>
                    </td>

                    <!-- 삭제 -->
                    <td>
                        <div class="basketcmd"><a href="javascript:void(0)" class="abutton"
                                onclick="javascript:basket.delItem();">삭제</a></div>
                    </td>
                </tr>

            </table>

            <!-- 전체 삭제 -->
            <div class="right-align basketrowcmd">
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">전체상품삭제</a>
            </div>

            <div class="total">
                <div class="bigtext sumcount" id="sum_p_num">총 4개의 상품 금액</div>
                <div class="plusicon"><i class="fas fa-plus-circle"></i></div>
                <div class="delpay">배송비 3,000원 </div>
                <div class="totalpay"><i class="fab fa-creative-commons-nd"></i></div>
                <div class="bigtext box blue summoney" id="sum_p_price">합계 : 87,600원</div>
            </div>

            <div id="goorder" class="">
                <div class="clear"></div>
                <div class="buttongroup center-align cmd">
                    <a href="order.html">주문하기</a>
                </div>
            </div>
    </div>
    </form>
    </div>
<%@ include file="../includes/footer.jsp" %>

</body>

</html>