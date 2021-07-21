<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/buy.css">
    <title>Document</title>
</head>
<body>
 <main>
 <%@ include file="../includes/header.jsp" %>
        <div class="container">
            <div class="title">
                주문/결제
            </div>
            <table class="list_table">
                <tr>
                    <th>이미지</th>
                    <th>상품정보</th>
                    <th>판매자</th>
                    <th>배송비</th>
                    <th>수량</th>
                    <th>상품금액</th>
                </tr>
                <tr>
                    <td><img src="img/cart2.png"></td>
                    <td>상품정보</td>
                    <td>판매자</td>
                    <td>3000원</td>
                    <td>1개</td>
                    <td>100원</td>
                </tr>
                <tr>
                    <td><img src="img/cart2.png"></td>
                    <td>상품정보</td>
                    <td>판매자</td>
                    <td>3000원</td>
                    <td>1개</td>
                    <td>100원</td>
                </tr>
                <tr>
                    <td><img src="img/cart2.png"></td>
                    <td>상품정보</td>
                    <td>판매자</td>
                    <td>3000원</td>
                    <td>1개</td>
                    <td>100원</td>
                </tr>
            </table>
            <hr>
            <div class="list_main">
                <div class="addr_list">
                    <div class="title">
                        <span>배송지정보</span>
                    </div>
                    <div class="addr_chk">
                        <ul>
                            <li><span>배송지선택</span></li>
                            <li><input type="radio" id="addr" name="addr_list" checked onclick="none()">기본배송지</li>
                            <li><input type="radio" id="new_addr" name="addr_list" onclick="none()">신규배송지</li>
                        </ul>
                    </div>
                    <div class="addr_main" id="addr_main">
                        <ul>
                            <li>이진웅</li>
                            <li>010-5513-7334</li>
                            <li>(18362)경기도 화성시 안녕남로 246-21(안녕동, 안녕동 우방아이유쉘)106동 1303호</li>
                        </ul>
                    </div>
                    <div class="addr_new_main" id="addr_new_main" style="display: none;">
                        <ul>
                            <li><span>수령인</span> : <input type="text"></li>
                            <li><span>배송지</span> : <input id="member_post" name="member_post" type="text"
                                    placeholder="지번" readonly onclick="findAddr()">
                                <input id="member_addr" name="member_addr" type="text" placeholder="주소" readonly>
                                <input type="text" name="member_detail" id="member_detail" placeholder="추가 주소">
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="user_list">
                    <div class="title">
                        <span>주문자정보</span>
                    </div>
                    <div class="user_main">
                        <ul>
                            <li>이진웅</li>
                            <li>이진웅</li>
                            <li>이진웅</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="totle">
                <div class="title">
                    <span>결제상세</span>
                </div>
                <div class="totle_main">
                    <ul>
                        <li>상품금액</li>
                        <li>100원</li>
                    </ul>
                    <ul>
                        <li>+</li>
                        <li>+</li>
                    </ul>
                    <ul>
                        <li>배송비</li>
                        <li>3000원</li>
                    </ul>
                    <ul>
                        <li>=</li>
                        <li>=</li>
                    </ul>
                    <ul>
                        <li>총합</li>
                        <li><input type="hidden" class="price_total"> 원</li>
                    </ul>
                </div>
                <div class="totle_btn">
                    <button id="check_module" type="button">결제하기</button>
                </div>
            </div>
        </div>
    </main>
    <%@ include file="../includes/footer.jsp" %>
        <script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
    <script src="js/back-to-top.js"></script>
    <script src="js/chatbot.js"></script>
    <script src="/js/address.js"></script>
    <script src="js/sell.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <script>
        $("#check_module").click(function () {
        var IMP = window.IMP; // 생략가능
        IMP.init('imp76068644');
        // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
        IMP.request_pay({
        pg: 'inicis', // version 1.1.0부터 지원.
        /*
        'kakao':카카오페이,
        html5_inicis':이니시스(웹표준결제)
        'nice':나이스페이
        'jtnet':제이티넷
        'uplus':LG유플러스
        'danal':다날
        'payco':페이코
        'syrup':시럽페이
        'paypal':페이팔
        */
        pay_method: 'card',
        /*
        'samsung':삼성페이,
        'card':신용카드,
        'trans':실시간계좌이체,
        'vbank':가상계좌,
        'phone':휴대폰소액결제
        */
        merchant_uid: 'merchant_' + new Date().getTime(),
        /*
        merchant_uid에 경우
        https://docs.iamport.kr/implementation/payment
        위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
        참고하세요.
        나중에 포스팅 해볼게요.
        */
        name: '주문명:결제테스트',
        //결제창에서 보여질 이름
        amount: 1000,
        //가격
        buyer_email: 'iamport@siot.do',
        buyer_name: '구매자이름',
        buyer_tel: '010-1234-5678',
        buyer_addr: '서울특별시 강남구 삼성동',
        buyer_postcode: '123-456',
        m_redirect_url: 'http://localhost:5500/loginsuccess.html'
        /*
        모바일 결제시,
        결제가 끝나고 랜딩되는 URL을 지정
        (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
        */
        }, function (rsp) {
        console.log(rsp);
        if (rsp.success) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        }
        alert(msg);
        });
        });
        </script>
</body>
</html>