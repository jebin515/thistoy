<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/mypage_sellbox.css">
    <link rel="stylesheet" href="/css/admin.css">
    <script src="https://kit.fontawesome.com/a216194d9c.js" crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <%@ include file="../includes/header.jsp"%>
    
    <!-- ------------ 관리자 페이지 ---------- -->
    <section>
        <div>
            <h2 class="title">관리자 페이지</h2>
        </div>

        <div class="line"></div>
        <div class="mypage_inner">
            <div class="inner">
                <a href="mypage_wishlist.html" class="item">판매글 관리</a>
                <a href="mypage_sellbox.html" class="item">리뷰 관리</a>
                <a href="mypage_cart.html" class="item">문의/답글 관리</a>
                <a href="mypage_orderbox.html" class="item">회원관리</a>
            </div>
            <div style="position: relative;">
                <i class="fas fa-caret-left"></i>
            </div>

            <div class="container">
                <table class="delete_table">
                    <!-- 표 카테고리 -->
                    <tr class="table_head">
                        <td class="member_date">가입날짜</td>
                        <td class="member_id">아이디</td>
                        <td class="member_name">이름</td>
                        <td class="member_phone">핸드폰</td>
                        <td class="member_email">이메일</td>
                        <td class="member_address">주소</td>
                        <td class="member_delete">삭제</td>
                    </tr>

                    <!-- 회원정보 -->
                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                    <tr class="table_data">
                        <td class="member_date">2021-05-18</td>
                        <td class="member_id">jiyoojin0518</td>
                        <td class="member_name">지유진</td>
                        <td class="member_phone">010-1111-2222</td>
                        <td class="member_email">jiyoojin@gmail.com</td>
                        <td class="member_address">경기도 안양시 동안구 38-7</td>
                        <td>
                            <a href="#" class="delete">삭제</a>
                        </td>
                    </tr>

                </table>
            </div>
    </section>

    <!-- -----------푸터------------- -->
    <%@ include file="../includes/footer.jsp"%>
</body>

</html>