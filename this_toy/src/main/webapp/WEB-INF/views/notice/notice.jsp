<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
                        <th>NO.</th>
                        <th>SUBJECT</th>
                        <th>DATE</th>
                        <th>WRITER</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="notice">
                    <tr>
                        <td>${notice.noticeNum}</td>
                        <td><a class="subject-list"  href='<c:out value="${notice.noticeNum}" />' ><c:out value="${notice.noticeTitle}" /></td>
                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.noticeDate}" ></fmt:formatDate></td>
                        <td>${notice.userId}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div class="page-number">
                <tr>
		<%--  ${pageMaker} --%>
                <div class = 'pull-right'>
                	<ul class="pagination">
                				<c:if test="${pageMaker.prev}">
                				<li class="page-item">
                					<a class="page-link" href="${pageMaker.startPage -1}" tabindex="-1">이전</a>
                				</li>
                				</c:if>
                		<c:forEach begin="${pageMaker.startPage}"
                						end="${pageMaker.endPage}" var="num">
                				<li class="page-item ${pageMaker.cri.pageNum == num?"active":""}"><a class="page-number-ea page-link" href="${num}">${num}</a></li>
                		</c:forEach>
                				<c:if test="${pageMaker.next}">
                				<li class="page-item">
                					<a class="page-link" href="${pageMaker.endPage + 1}" tabindex="-1">다음</a>
                				</li>
                				</c:if>
                	</ul>
                </div>
                <form id='actionForm' action="/notice/notice" method="get">
                	<input type="hidden" name='pageNum' value='${pageMaker.cri.pageNum}'>
                	<input type="hidden" name='amount' value='${pageMaker.cri.amount}'>
                	<input type="hidden" name='type' value='${pageMaker.cri.type}'>
                	<input type="hidden" name='keyword' value='${pageMaker.cri.keyword}'>
                </form>
                </tr>
            </div>
            </div>
            <button id='board-write' type="button" class="board-write">글쓰기</button>
<!-- <input type="submit" value="글쓰기" class="board-write" onclick="location.href='notice_writer.html'"> -->
            <div>
            <div class="notice-search">
            	<form id='searchForm'  action="/notice/notice"  method="get">
            		<select name="type">
            			<option value="" ${pageMaker.cri.type == null?"selected":""}>===</option>
            			<option value="T" ${pageMaker.cri.type eq 'T'?"selected":""}>제목</option>
            			<option value="C" ${pageMaker.cri.type eq 'C'?"selected":""}>내용</option>
            			<option value="W" ${pageMaker.cri.type eq 'W'?"selected":""}>작성자</option>
            			<option value="TC" ${pageMaker.cri.type eq 'TC'?"selected":""}>제목+내용</option>
            			<option value="TCW" ${pageMaker.cri.type eq 'TCW'?"selected":""}>제목+내용+작성자</option>
            		</select>
            		<input type='text' name='keyword' value=' ${pageMaker.cri.keyword}'>
            		<input type="hidden" name='pageNum' value=' ${pageMaker.cri.pageNum}'>
            		<input type="hidden" name='amount' value=' ${pageMaker.cri.amount}'>
            		<button class='btn btn-defauit'>검색</button>
				</form>
            </div>
        </div>
    </main>
    
    
						<!--     modal	 -->
<div id="myModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

<script>
$(document).ready(function() {
	var result = '<c:out value="${result}"/>';
	
	checkModal(result);
	
	history.replaceState({}, null, null);
	
	function checkModal(result){
		if (result === '' || history.state) {
			return;
		}
		
		if(result === 'success'){
			$(".modal-body").html(
					"정상적으로 처리되었습니다.");
		}else if(parseInt(result)>0){
			$(".modal-body").html(
					"공지사항" + parseInt(result) + "번이 등록되었습니다.");
		}
		
		$("#myModal").modal("show");
	}
	
	$("#board-write").click(function() {
		self.location = "/notice/notice_writer";
	});
	var actionForm = $("#actionForm");
	$(".page-link").on("click", function(e) {
		e.preventDefault();
		
		var targetPage = $(this).attr("href");
		
		console.log(targetPage);
		
		actionForm.find("input[name='pageNum']").val(targetPage);
		actionForm.submit();
	});
	
	$(".subject-list").on("click", function(e){
		e.preventDefault();
		
		var targetNoticeNum = $(this).attr("href");
		
		console.log(targetNoticeNum);
		
		actionForm.append("<input type='hidden' name='noticeNum' value=' " +targetNoticeNum+" ' >' " );
		actionForm.attr("action", "/notice/notice_detail").submit();
		
	});
	
	var searchForm = $("#searchForm");
	
	$("#searchForm button").on("click", function(e) {
		e.preventDefault();
		console.log("............click......................");
		
		searchForm.find("input[name='pageNum']").val(1);
		
		searchForm.submit();
	});
});
</script>

<%@ include file="../includes/footer.jsp" %>

</body>
</html>