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
<link href="/css/register-1.css" rel="stylesheet">
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
			<div class="wrap">
				<div class="contents">
					<form action="/" method="POST" id="form_wrap">
						<div class="check_box_all">
							<input type="checkbox" name="checkAll" id="checkAll" /> <label
								for="checkAll"><span>ThisToy 이용약관, 개인정보 수집 및 이용,
									프로모션 정보수신(선택)에 모두 동의합니다.</span></label>
						</div>
						<ul class="check_list">
							<li class="check_box">
								<div class="input_check">
									<input type="checkbox" name="all" id="checkbox_1"
										value="checkbox_1" required /> <label for="checkbox_1"
										class="required"><span>ThisToy 이용약관 동의</span></label>
								</div>
								<div class="terms_content">여러분을 환영합니다. ThisToy 서비스 및 제품(이하
									‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 ThisToy 서비스의 이용과 관련하여 ThisToy
									서비스를 제공하는 ThisToy 주식회사(이하 ‘ThisToy’)와 이를 이용하는 ThisToy 서비스 회원(이하
									‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 ThisToy 서비스 이용에 도움이 될 수 있는
									유익한 정보를 포함하고 있습니다. ThisToy 서비스를 이용하시거나 ThisToy 서비스 회원으로 가입하실 경우
									여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기
									바랍니다. 여러분을 환영합니다. ThisToy 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본
									약관은 다양한 ThisToy 서비스의 이용과 관련하여 ThisToy 서비스를 제공하는 ThisToy 주식회사(이하
									‘ThisToy’)와 이를 이용하는 ThisToy 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
									아울러 여러분의 ThisToy 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다. ThisToy
									서비스를 이용하시거나 ThisToy 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을
									확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다. 여러분을 환영합니다.
									ThisToy 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 ThisToy
									서비스의 이용과 관련하여 ThisToy 서비스를 제공하는 ThisToy 주식회사(이하 ‘ThisToy’)와 이를
									이용하는 ThisToy 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의
									ThisToy 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다. ThisToy 서비스를
									이용하시거나 ThisToy 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나
									동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.</div>
							</li>
							<li class="check_box">
								<div class="input_check">
									<input type="checkbox" name="all" id="checkbox_2"
										value="checkbox_2" required /> <label for="checkbox_2"
										class="required"><span>개인정보 수집 및 이용 동의</span></label>
								</div>
								<div class="terms_content">개인정보보호법에 따라 ThisToy에 회원가입 신청하시는
									분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의
									거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.1. 수집하는 개인정보
									이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수
									있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을
									할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</div>
							</li>
							<li class="check_box">
								<div class="input_check">
									<input type="checkbox" name="all" id="checkbox_3"
										value="checkbox_3" /> <label for="checkbox_3"><span>프로모션
											정보 수신 동의</span></label>
								</div>
								<div class="terms_content">ThisToy에서 제공하는 이벤트/혜택 등 다양한 정보를
									휴대전화(ThisToy앱 알림 또는 문자), 이메일로 받아보실 수 있습니다. 일부 서비스(별도 회원 체계로
									운영하거나 ThisToy 가입 이후 추가 가입하여 이용하는 서비스 등)의 경우, 개별 서비스에 대해 별도 수신
									동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다.</div>
							</li>
						</ul>
						<button type="submit" class="next-button" onclick="next()"
							disabled>다음</button>
					</form>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="../includes/footer.jsp"%>

	<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
	<script src="/js/register-1.js"></script>
</body>
</html>