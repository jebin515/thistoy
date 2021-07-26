<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=980" />
<link rel="stylesheet" href="/css/style.css">
<link href="/css/register.css" rel="stylesheet">
<link href="/css/register-2.css" rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<title>Document</title>
</head>

<body>
	<%@ include file="../includes/header.jsp"%>
	<main>
		<div class="title">
			<span>회원가입</span>
		</div>
		<div class="register-main">
			<div class="register-menu">
				<span class="one">약관동의</span> <i class='bx-fw bx bxs-chevron-right'></i>
				<span class="two">회원입력</span> <i class='bx-fw bx bxs-chevron-right'></i>
				<span class="three">회원가입완료</span>
			</div>
			<div class="wrap wd668">
				<div class="container">
					<div class="form_txtInput">
						<form id="form" class="form" method="post">
							<p class="exTxt">회원가입시 이메일 인증을 반드시 진행하셔야 합니다.</p>
							<div class="join_form">
								<table>
									<colgroup>
										<col width="30%" />
										<col width="auto" />
									</colgroup>
									<tbody>
										<tr class="form-control">
											<th><span>이미지</span></th>
											<td><input type="file" name="img"
												placeholder="아이디를 입력하세요." required></td>
											<td></td>
										</tr>
										<tr class="form-control">
											<th><span>아이디</span></th>
											<td><input type="text" name="userId" id="userId"
												placeholder="아이디를 입력하세요." required></td>
											<td></td>
										</tr>
										<tr class="form-control">
											<th><span>이름</span></th>
											<td><input type="text" name="userName"
												placeholder="이름을 입력하세요."></td>
											<td></td>
										</tr>
										<tr class="form-control">
											<th><span>비밀번호</span></th>
											<td><input type="password" id="password" name="userPasswd"
												placeholder="특수문자/문자/숫자 포함 8자리 이상 입력하세요."></td>
											<td></td>
										</tr>
										<tr class="form-control">
											<th><span>비밀번호 확인</span></th>
											<td><input type="password" name="password2"
												placeholder="비밀번호를 확인하세요."></td>
											<td></td>
										</tr>
										<tr class="form-control">
											<th><span>이메일</span></th>
											<td><input type="email" name="userEmail" id="email"
												placeholder="예)abc@abc.com" required></td>
											<td>
												<button class="btn_confirm" onclick="sendEmail()">인증번호
													발송</button>
											</td>
										</tr>
										<tr class="form-control">
											<th><span>인증번호 확인</span></th>
											<td><input type="text" class="send_number"
												name="send_number" placeholder="4자리를 입력하세요."></td>
											<td><button class="btn_send">확인</button></td>
										</tr>
										<tr class="form-control">
											<th><span>휴대폰 번호</span></th>
											<td><input type="tel" name="userTel"
												placeholder="번호를 입력하세요."></td>
											<td></td>
										</tr>
										<tr class="form-control">
											<th><span>주소</span></th>
											<td></td>
											<td><input id="member_post" name="userAddress"
												type="text" placeholder="지번" readonly onclick="findAddr()"><br>
												<br> <br> <input id="member_addr"
												name="userAddress2" type="text" placeholder="주소" readonly><br>
												<br> <br> <input type="text" name="userAddress3"
												id="member_detail" placeholder="추가 주소"></td>
											<td></td>
										</tr>
									</tbody>
								</table>
								<div class="exform_txt">
									<span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span>
								</div>
							</div>
							<div class="btn_wrap">
								<input type="submit" id="idCheck"  class="button" value="확인">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="../includes/footer.jsp"%>

	<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
	<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
	<script src="https://smtpjs.com/v3/smtp.js"></script>
	<script src="/js/email.js"></script>
	<script src="/js/address.js"></script>
	<script src="/js/register-2.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>

</html>