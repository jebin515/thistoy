<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <td><input type="text" class="board-writer" placeholder="이름을 입력하세요." name="userId"></td>
         </tr>
	     <tr>
	            <th>DATE</th>
	            <td><input type="text" class="board-date" placeholder="날짜를 입력하세요."></td>
	       </tr>
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
        <input type="submit" value="글쓰기" class="write" onclick="confirm('글을 등록하시겠습니까?');">
        <input type="reset" value="취소" class="cancel" onclick="confirm('글쓰기를 취소하시겠습니까?');">
    </div>
 


<!-- footer -->
<%@ include file="../includes/footer.jsp" %>

</body>
</html>