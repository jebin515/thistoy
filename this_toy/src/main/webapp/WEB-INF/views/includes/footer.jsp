<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/css/footer.css?ver=2">
<footer>
	<div class="footer-icon">
		<div class="i1">
			<i class='bx bxl-facebook bx-fade-left-hover'></i>
		</div>
		<div class="i1">
			<i class='bx bxl-instagram-alt  bx-fade-up-hover'></i>
		</div>
		<div class="i1">
			<i class='bx bxl-twitter  bx-fade-right-hover'></i>
		</div>
	</div>
	<div class="footer-business">
		<span>info&nbsp;&nbsp;</span> <span>Support&nbsp;&nbsp;</span> <span>Marketing</span>
	</div>
	<div class="footer-team">
		<span>Team</span> <span>1조</span> <span>6명</span>
	</div>
	<div class="footer-create">
		<span>@2021 Create Ezen Computer</span>
	</div>
</footer>
<a href="#" class="back-to-top"> <i
	class="bx-fw bx bxs-rocket bx-tada-hover"></i>
</a>

<div class="chat">
	<div class="chat_header">
		<div class="chat_logo"></div>
			<i class="bx bx-x" onclick="closechat();"></i>
	</div>
	<div class="chat_main">
		<div class="chat_info">
			<div class="chat_profile">
				<i class='bx bx-game'></i>
			</div>
			<div class="dito">
				<span class="dito_name">디토</span>
				<div class="dito_text">디스토이에 오신걸 환영합니다! 꼭 필요한 미니어처를 찾아가세요!!</div>
			</div>
		</div>
		<div class="question">
			<button type="button" class="ask" onclick="answer1();">반품/교환/환불</button>
			<br>
			<button type="button" class="ask" onclick="answer2();">결제 안내</button>
			<br>
			<button type=" button" class="ask" onclick="answer3();">재입고
				안내</button>
		</div>
	</div>
</div>
<div class="chat-bot-open">
	<i class='bx bx-message-rounded' onclick="openchat();"></i>
</div>
<script src="/js/back-to-top.js"></script>
 <script src="/js/chatbot.js"></script>