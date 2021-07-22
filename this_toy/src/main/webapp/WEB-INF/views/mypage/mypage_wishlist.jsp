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
    <link rel="stylesheet" href="css/mypage_wishlist.css">
    <!-- <script src="js/mypage.js" defer></script> -->
    <script src="/js/chatbot.js" defer></script>
    <script src="/js/back-to-top.js" defer></script>
    <script src="https://kit.fontawesome.com/a216194d9c.js" crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
<%@ include file="../includes/header.jsp" %>
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
            <div class="gridContainer">
                <div class="gridItem">
                    <i class="fas fa-times"></i>
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                    </div>
                </div>
                <div class="gridItem">
                    <i class="fas fa-times"></i>
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                    </div>
                </div>
                <div class="gridItem">
                    <i class="fas fa-times"></i>
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                    </div>
                </div>
                <div class="gridItem">
                    <i class="fas fa-times"></i>
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                    </div>
                </div>
                <div class="gridItem">
                    <i class="fas fa-times"></i>
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                    </div>
                </div>
                <div class="gridItem">
                    <i class="fas fa-times"></i>
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                    </div>
                </div>
                <div class="gridItem">
                    <i class="fas fa-times"></i>
                    <a href="">
                        <img src="https://via.placeholder.com/265x170" alt="" />
                    </a>
                    <div class="product_info">
                        <a href="#">
                            <span class="product_name"><span class="product_logo">This Toy</span> 하기싫다</span>
                        </a>
                        <div class="product_price">가격 : 9,900원</div>
                        <div class="product_deliver_price">배송비 : 3,000원</div>
                    </div>
                </div>
            </div>
    </section>
<%@ include file="../includes/footer.jsp" %>
</body>

</html>