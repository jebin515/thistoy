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
        <table class="write-board"> 
            <tr>
                <th><div>글 제목</div></th>
                <td><input type="text" class="board-title" placeholder="제목을 입력하세요."></td>
            </tr>  
            <tr>
                <th>
                    <div>내용</div>
                </th>
            </tr>
            <tr>
                <td colspan="2"> 
                    <textarea cols="80" rows="30" class="textbox"></textarea>
                </td>
            </tr> 
            <tr>
                <td>
                </td>
            </tr> 
        </table>
    </div>
    <div class="under-button">
        <input type="submit" value="글쓰기" class="write" onclick="confirm('글을 등록하시겠습니까?');">
        <input type="reset" value="취소" class="cancel" onclick="confirm('글쓰기를 취소하시겠습니까?');">
    </div>



<!-- footer -->
<%@ include file="../includes/footer.jsp" %>

</body>
</html>