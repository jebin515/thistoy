<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항글쓰기</title>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/notice_writer.css">
</head>
<body>
<!-- header -->
           <%@ include file="../includes/header.jsp" %>
    
    <!-- ---------------------main---------------------------------  -->
    <div class="title">
        <h1>NOTICE</h1>
    </div>
    <div class="write-base">
    <form action="/notice/notice_writer" method="post">
        <table class="write-board">
           <tbody>
            <tr>
                <th><div>글 제목</div></th>
                <td><input type="text" class="board-title" placeholder="제목을 입력하세요." name="noticeTitle"></td>
            </tr> 
           <tr>
                <th> 작성자</th>
                <td><input type="text" class="board-writer"  name="userId" readonly="readonly"  value='<c:out value="${userId}"/>' ></td>
         </tr>
<!-- 	     <tr> -->
<!-- 	            <th>DATE</th> -->
<%-- 	            <td class="board-date" ><fmt:formatDate pattern="yyyy-MM-dd" value="${noticeDate}" ></fmt:formatDate></td> --%>
<!-- 	       </tr> -->
            <tr>
                <td colspan="2">
                	<textarea cols="50" rows="20" class="board-text" name="noticeText" placeholder="내용을 입력하세요."></textarea>
                </td>
            </tr>
          </tbody>
        </table>
    </form>
    </div>
    <div class="under-button">
        <input type="submit" value="글쓰기" class="write register" >
        <input type="reset" value="취소" class="cancel" >
    </div>




<!-- footer -->
<%@ include file="../includes/footer.jsp" %>

</body>
</html>

