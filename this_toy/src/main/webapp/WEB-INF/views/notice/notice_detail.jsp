<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NOTICE상세보기</title>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/notice_detail.css?ver=1">
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
                        <td><input class="userId"  name="userId" readonly="readonly"  value='<c:out value="${notice.userId}"/>' ></td>
                    </tr>
                    <tr>
                        <th>DATE</th>
                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.noticeDate}" ></fmt:formatDate></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="detail">
                                <div class="detail-text">
                                	<textarea rows="20" cols="50"  name="noticeText"  class="noticeText"" readonly="readonly" > <c:out value=" ${notice.noticeText}"/> </textarea>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="board-button">
    <c:if test="${userId eq 'admin'}">
       <a href='/notice/notice_modify?noticeNum=<c:out value="${notice.noticeNum}"/>&p=${param.p}'><button type="button" class="btn board-edit listBtn">수정</button></a>
    </c:if>
        <a href='/notice/notice?p=${param.p}'><button type="button" class="btn board-list modBtn">목록</button></a>
    </div>

<!-- footer -->
 <%@ include file="../includes/footer.jsp" %>

</body>
</html>