<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원정보변경</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/editmypage.css?var=2">
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
<script src="/js/modify.js?ver=3" defer></script>

</head>

<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="main">
		<main>
			<!-- 카테고리 이름  -->
			<div class="register-main">
				<div class="register-menu">
					<span class="one">개인 정보 수정 페이지</span>
				</div>
			</div>
		</main>
		<!-- 프로필 영역 -->
		<!-- 프로필 이미지 -->
		<form name="form" id="form" method="post" class="form">
			<div class="change-form">
				<div class="proimg">
					<img src="/upload/user/${user.userImg}">
				</div>

				<div class="edit-form">
					<table>
						<tr class="form-control">
							<th><span>아이디</span></th>
							<td><input type="text" name="userId" value="${user.userId}"
								class="userId" required readonly></td>
						</tr>
						<tr class="form-control">
							<th><span>이름</span></th>
							<td><input type="text" id="userName" class="userName"
								name="userName" value="${user.userName}" required></td>
						</tr>
						<tr class="form-control">
							<th><span>현재 비밀번호</span></th>
							<td><input type="password" id="password" name="oldPassword"
								class="oldPassword" placeholder="특수문자/문자/숫자 포함 8자리 이상 입력하세요."
								required></td>
						</tr>
						<tr class="form-control">
							<th><span>수정 비밀번호 확인</span></th>
							<td><input id="password" required type="password"
								name="newPassword" placeholder="특수문자/문자/숫자 포함 8자리 이상 입력하세요."></td>
						</tr>
						<tr class="form-control">
							<th><span>이메일</span></th>
							<td><input type="email" name="userEmail" id="userEmail"
								class="userEmail" value="${user.userEmail}" required> 
							</td>
						</tr>
						<tr class="form-control">
							<th><span>휴대폰 번호</span></th>
							<td><input type="tel" name="userTel" class="userTel"
								id="userTel" value="${user.userTel}" required></td>
						</tr>
						<tr class="form-control">
							<th><span>주소</span></th>
							<td><input id="member_post" name="userAddressPost"
								type="text" value="${user.userAddressPost}" readonly
								onclick="findAddr()" required><br> <input
								id="member_addr" name="userAddress" type="text"
								value="${user.userAddress}" readonly required> <br>
								<input type="text" name="userAddressDetail" id="member_detail"
								value="${user.userAddressDetail}" required></td>
						</tr>
					</table>
				</div>
			</div>


			<!-- 저장 하기 버튼 -->
			<div class="button">

				<input type="hidden" name="user" value="${user.userId}"> <input
					type='button' class="delet btn" value='회원탈퇴' /> <input
					type='button' class="save btn" value='저장하기' />

			</div>

			<!-- 회원 탈퇴 버튼 -->
		</form>
	</div>
	<%@ include file="../includes/footer.jsp"%>
	<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
	<script src="/js/address.js"></script>
	<script src="/js/modifyCheck.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>

</html>