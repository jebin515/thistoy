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
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <script type="text/javascript" src="js/cart_3.js"></script>
</head>

<body>
    <header id="header">
        <div class="header-full">
            <a href="#" class="logo">
                <nav class="header_nav">
                    <div class="header_menu">
                        <a href="#" class="header_login"><i class='bx-fw bx bxs-rocket bx-tada-hover'></i>로그인</a>
                        <a href="#" class="header_register"><i class='bx-fw bx bxs-user-plus bx-tada-hover'></i>회원가입</a>
                    </div>
                </nav>
        </div>
    </header>
    <div class="menu">
        <ul>
            <li class="drop-down"><a href="#"><i class='bx-fw bx bxs-directions bx-tada-hover bx-xs'></i>전체</a>
                <ul>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">사이트안내</a></li>
                    <li><a href="#">신제품</a></li>
                    <li><a href="#">인기제품</a></li>
                    <li class="drop-down"><a href="#">카테고리</a>
                        <ul>
                            <li class="drop-down"><a href="#">피규어</a>
                                <ul>
                                    <li><a href="#">애니</a></li>
                                    <li><a href="#">게임</a></li>
                                    <li><a href="#">연예인</a></li>
                                </ul>
                            </li>
                            <li class="drop-down"><a href="#">미니어쳐</a>
                                <ul>
                                    <li><a href="#">소형</a></li>
                                    <li><a href="#">중형</a></li>
                                    <li><a href="#">대형</a></li>
                                </ul>
                            </li>
                            <li><a href="#">RC카</a> </li>
                            <li class="drop-down"><a href="#">기타</a>
                                <ul>
                                    <li><a href="#">슬라임</a></li>
                                    <li><a href="#">굿즈</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
        <ul>
            <li><a href="#">공지사항</a></li>
        </ul>
        <ul>
            <li><a href="#">사이트안내</a></li>
        </ul>
        <ul>
            <li class="drop-down"><a href="#">신제품/인기제품</a>
                <ul>
                    <li><a href="#">신제품</a></li>
                    <li><a href="#">인기제품</a></li>
                </ul>
            </li>
        </ul>
        <ul>
            <li class="drop-down"><a href="#">고객센터</a></li>
        </ul>
        <ul>
            <li class="drop-down"><a href="#">카테고리</a>
                <ul>
                    <li class="drop-down"><a href="#">피규어</a>
                        <ul>
                            <li><a href="#">애니</a></li>
                            <li><a href="#">게임</a></li>
                            <li><a href="#">연예인</a></li>
                        </ul>
                    </li>
                    <li class="drop-down"><a href="#">미니어쳐</a>
                        <ul>
                            <li><a href="#">소형</a></li>
                            <li><a href="#">중형</a></li>
                            <li><a href="#">대형</a></li>
                        </ul>
                    </li>
                    <li><a href="#">RC카</a> </li>
                    <li class="drop-down"><a href="#">기타</a>
                        <ul>
                            <li><a href="#">슬라임</a></li>
                            <li><a href="#">굿즈</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
        <ul>
            <li>
                <nav class="main_top">
                    <div class="search">
                        <form action="get">
                            <input type="text" name="search" placeholder="search" class="search_text">
                            <button type="submit"><i class='bx-fw bx bx-search bx-sm'></i></button>
                        </form>
                    </div>
            </li>
        </ul>
    </div>
    </nav>
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
                        <div class="img"><img src="./image/cart1.png" width="100px"></div>
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
                        <div class="img"><img src="./image/cart2.png" width="70"></div>
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
                        <div class="img"><img src="./image/cart3.png" width="70"></div>
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
                        <div class="img"><img src="./image/cart4.png" width="70"></div>
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


    <!-- 하단 footer 영역 -->
    <footer>
        <div class="footer-icon">
            <div class="i1"><i class='bx bxl-facebook bx-fade-left-hover'></i></div>
            <div class="i1"><i class='bx bxl-instagram-alt  bx-fade-up-hover'></i></div>
            <div class="i1"><i class='bx bxl-twitter  bx-fade-right-hover'></i></div>
        </div>
        <div class="footer-business">
            <span>info&nbsp;&nbsp;</span>
            <span>Support&nbsp;&nbsp;</span>
            <span>Marketing</span>
        </div>
        <div class="footer-team">
            <span>Team</span>
            <span>1조</span>
            <span>6명</span>
        </div>
        <div class="footer-create">
            <span>@2021 Create Ezen Computer</span>
        </div>
    </footer>

    <!-- 우측 하단 챗봇 및 상단바로가기 버튼 -->
    <a href="#" class="back-to-top">
        <i class="bx-fw bx bxs-rocket bx-tada-hover"></i>
    </a>

    <div class="chat">
        <div class="chat_header">
            <div class="chat_logo"></div>
            <div class="fa-times">
                <i class="bx bx-x" onclick="closechat();"></i>
            </div>
        </div>
        <div class="chat_main">
            <div class="chat_info">
                <div class="chat_profile"><i class='bx bx-game'></i></div>
                <div class="dito">
                    <span class="dito_name">디토</span>
                    <div class="dito_text">디스토이에 오신걸 환영합니다! 꼭 필요한 미니어처를 찾아가세요!!</div>
                </div>
            </div>
            <div class="question">
                <button type="button" class="ask" onclick="answer1();">반품/교환/환불</button><br>
                <button type="button" class="ask" onclick="answer2();">결제 안내</button><br>
                <button type=" button" class="ask" onclick="answer3();">재입고 안내</button>
            </div>
        </div>
    </div>
    <div class="chat-bot-open"><i class='bx bx-message-rounded' onclick="openchat();"></i></div>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="js/back-to-top.js"></script>


</body>

</html>