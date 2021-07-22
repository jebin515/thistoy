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
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <title>Document</title>
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
                        <img src="img/mable.jpg" alt="" class="orderimg">
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
        <!-- -------------footer and chat------------ -->
    </footer>
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
    <script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="/js/back-to-top.js"></script>
    <script src="/js/chatbot.js"></script>
</body>

</html>