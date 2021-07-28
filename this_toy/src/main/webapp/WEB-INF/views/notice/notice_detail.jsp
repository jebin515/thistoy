<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NOTICE상세보기</title>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/notice_detail.css">
</head>
<body>
<!-- header -->
            <%@ include file="../includes/header.jsp" %>

    <!-- ---------------------main---------------------------------  -->
    <div class="title">
        <h1>NOTICE</h1>
    </div>
    <div class="board">
        <div class="base">
            <table>
                <tbody>
                    <tr>
                        <th>번호</th>
                        <td><input type="text" class="noticeNum"  name="noticeNum"  readonly="readonly"  value= '<c:out value="${notice.noticeNum}"/>'></td>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td><input type="text" class="noticeTitle"  name="noticeTitle" readonly="readonly" value= '<c:out value="${notice.noticeTitle}"/>'></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td><input class="userId"  name="userId" value='<c:out value="${notice.userId}"/>' ></td>
                    </tr>
                    <tr>
                        <th>DATE</th>
                        <td>2021-11-21</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="detail">
                                <div class="detail-text">
                                	<textarea rows="20" cols="50"  name="noticeText"  class="noticeText""> <c:out value=" ${notice.noticeText}"/> </textarea>
<!--                                     <p>안녕하세요, 디스토이(ThisToy)입니다.</p> -->
<!--                                     <br> -->
<!--                                     <p>신명준 회원님, 디스토이(ThisToy)를 이용해주셔서 감사합니다!</p><br> -->
<!--                                     <p>결재 안내에 관하여 안내드립니다.</p><br> -->
<!--                                     <p>결재 내역은 아래의 링크를 클릭하여 확인해주세요.</p> -->
<!--                                     <a href="oders.html" class="oderlist">결제내역 보러가기</a> -->
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="board-button">
        <span>
            <a href="notice_edit.html" class="board-edit" onclick="">수정</a>
        </span>
        <span>
            <a href="notice.html" class="board-list" onclick="">목록</a>
        </span>
        <span>
            <a href="" class="board-del" onclick="confirm('삭제하시겠습니까?');">삭제</a>
        </span>
    </div>



<!-- footer -->
 <%@ include file="../includes/footer.jsp" %>

</body>
</html>