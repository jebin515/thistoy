<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=980" />
    <link href="/css/style.css" rel="stylesheet" >
    <link href="/css/notice.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <title>공지사항</title>
</head>

<body>

    <%@ include file="../includes/header.jsp" %>
    
    <!-- main  -->
    <main>
        <div class="container">
            <div class="title">
                <h1>NOTICE</h1>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>NO</th>
                        <th>SUBJECT</th>
                        <th>DATE</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>6</td>
                        <td>디스토이 신명준 회원님 결재 안내</td>
                        <td>2021-11-21</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>택배 파업으로 인한 배송 지연 안내</td>
                        <td>2021-10-09</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>택배 파업으로 인한 배송 지연 안내</td>
                        <td>2021-07-21</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>무통장입금계좌 안내</td>
                        <td>2021-06-30</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>THIS TOY 이용약관 개정안내</td>
                        <td>2021-05-18</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>개인정보취급방침 변경에 따른 공지사항</td>
                        <td>2021-05-15</td>
                    </tr>
                </tbody>
            </table>

            <div class="page-number">
                <tr>
                    <a href="#"></a>
                    <a href="/">1</a>
                    <a href="/">2</a>
                    <a href="/">3</a>
                    <a href="/">4</a>
                    <a href="/">5</a>
                    <a href="#"></a>
                </tr>
            </div>

            <div class="notice-search">
                <form method="GET">
                    <select name="date">
                        <option value="week">일주일</option>
                        <option value="amonth">한달</option>
                        <option value="threemonth">세달</option>
                        <option value="all">전체</option>
                    </select>
                    <select name="search-select">
                        <option value="subject">제목</option>
                        <option value="text">내용</option>
                    </select>
                    <input type="text" maxlength="30" class="search-text" required>
                    <button type="submit">
                        <i class='bx-fw bx bx-search bx-sm'></i>
                    </button>
                </form>
            </div>
        </div>
    </main>

<%@ include file="../includes/footer.jsp" %>

</body>
</html>