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
    <link rel="stylesheet" href="css/mypage_review.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <!-- <script src="js/mypage.js" defer></script> -->
    <script src="js/chatbot.js" defer></script>
    <script src="js/back-to-top.js" defer></script>
    <script src="https://kit.fontawesome.com/a216194d9c.js" crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
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
    <!-- ------------마이페이지---------- -->
    <section>
        <h3 class="mypage_logo">마이페이지</h3>
        <div class="mp">
            <!-- 왼쪽 -->
            <img class="left" src="img/profile.jpg" alt="이미지없음">
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
                <div class="question">Q&A</div>
                <table class="questbox">
                    <tr>
                        <th class="titem">답변상태</th>
                        <th class="titem titem2">제목</th>
                        <th class="titem">작성자</th>
                        <th class="titem">작성일</th>
                    </tr>
                    <tr class="quest_list">
                        <td class="titem">답변완료</td>
                        <td class="titem titem2">내용</td>
                        <td class="titem">작성자</td>
                        <td class="titem">작성일</td>
                    </tr>
                    <tr class="quest_list">
                        <td class="titem">답변완료</td>
                        <td class="titem titem2">내용</td>
                        <td class="titem">작성자</td>
                        <td class="titem">작성일</td>
                    </tr>
                    <tr class="quest_list">
                        <td class="titem">답변완료</td>
                        <td class="titem titem2">내용</td>
                        <td class="titem">작성자</td>
                        <td class="titem">작성일</td>
                    </tr>
                </table>
                <div class="review">후기</div>
                <table class="reviewbox">
                    <tr class="thead">
                        <th class="titem">별점</th>
                        <th class="titem titem2">내용</th>
                        <th class="titem">작성자</th>
                        <th class="titem">작성일</th>
                    </tr>
                    <tr class="review_list">
                        <td class="titem">
                            <div class="ratingbox">
                                <div class="rating rating2">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="rating rating1">
                                    <i class="fa fa-star-o"></i>
                                    <!--비어있는 별5개  -->
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                            </div>
                        </td>
                        <td class="titem titem2">내용</td>
                        <td class="titem">작성자</td>
                        <td class="titem">작성일</td>
                    </tr>
                    <tr class="review_list">
                        <td class="titem">
                            <div class="ratingbox">
                                <div class="rating rating2">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="rating rating1">
                                    <i class="fa fa-star-o"></i>
                                    <!--비어있는 별5개  -->
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                            </div>
                        </td>
                        <td class="titem titem2">내용</td>
                        <td class="titem">작성자</td>
                        <td class="titem">작성일</td>
                    </tr>
                    <tr class="review_list">
                        <td class="titem">
                            <div class="ratingbox">
                                <div class="rating rating2">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="rating rating1">
                                    <i class="fa fa-star-o"></i>
                                    <!--비어있는 별5개  -->
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                            </div>
                        </td>
                        <td class="titem titem2">내용</td>
                        <td class="titem">작성자</td>
                        <td class="titem">작성일</td>
                    </tr>
                    <tr class="review_list">
                        <td class="titem">
                            <div class="ratingbox">
                                <div class="rating rating2">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="rating rating1">
                                    <i class="fa fa-star-o"></i>
                                    <!--비어있는 별5개  -->
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                            </div>
                        </td>
                        <td class="titem titem2">내용</td>
                        <td class="titem">작성자</td>
                        <td class="titem">작성일</td>
                    </tr>
                </table>

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
    <!-- -----------푸터------------- -->
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
    <a href="#" class="back-to-top">
        <i class="bx-fw bx bxs-rocket bx-tada-hover"></i>
    </a>

    <!-- --------- 챗봇 --------- -->
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
</body>

</html>