<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NOTICE수정/삭제</title>
    <script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/notice_detail.css?ver=1">
</head>
<body>
<!-- header -->
            <%@ include file="../includes/header.jsp" %>

    <!-- ---------------------main---------------------------------  -->
    <div class="title">
        <h1>NOTICE Modify/Delete</h1>
    </div>
    <form>
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
                        <td><input type="text" class="noticeTitle"  name="noticeTitle"  value= '<c:out value="${notice.noticeTitle}"/>'></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td><input class="userId"  name="userId" readonly="readonly"  value='<c:out value="${notice.userId}" />' ></td>
                    </tr>
                    <tr>
                        <th>DATE</th>
                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.noticeDate}" ></fmt:formatDate></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="detail">
                                <div class="detail-text">
                                	<textarea rows="20" cols="50"  name="noticeText"  class="noticeText"> <c:out value=" ${notice.noticeText}"/> </textarea>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="board-button">
        	<button class="btn board-edit" data-oper='modify'>수정</button>
			<button class="btn board-list" data-oper='list'>목록</button>
        	<button class="btn board-del" data-oper='remove'>삭제</button>
    </div>
    </form>

<script>

$(document).ready(function() {
	
	var formObj = $("form");
	
	$(".btn").click(function(e){
		
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		console.log(operation);
		
		if(operation === 'list'){
			self.location = "/notice/notice?p=${param.p}";
			
		}else if(operation === 'remove'){
			formObj.attr("action", "/notice/remove")
			.attr("method", "post")
			.submit();
			
		}else if(operation === 'modify'){
			formObj.attr("action", "/notice/notice_modify")
			.attr("method", "post")
			.submit();
		}
	})
	
})

</script>

<!-- footer -->
 <%@ include file="../includes/footer.jsp" %>

</body>
</html>