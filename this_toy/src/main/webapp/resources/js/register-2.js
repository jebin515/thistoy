$.validator.addMethod("regex", function (value, element, regexp) {
	let re = new RegExp(regexp);
	let res = re.test(value);
	console.log(res, value, regexp, re)
	return res;
});

$(function () {
	$(".form").validate({
		rules: {
			userId: {
				required: true,
				minlength: 3
			},
			userName: {
				required: true,
				minlength: 2
			},
			userPasswd: {
				required: true,
				// regex: "^.(?=^.{8,15}$)(?=.\d)(?=.[a-zA-Z])(?=.[!@#$%^&+=]).*$",
				//기존정규식
				regex: "^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$^])",
				minlength: 8,
				maxlength: 15
			},
			password2: {
				required: true,
				equalTo: '#password'
			},
			userEmail: {
				required: true,
				regex: "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$",
				email: true
			},
			send_number: {
				required: true,
				digits: true,
				maxlength: 4
			},
			member_post: {
				required: true
			},
			member_addr: {
				required: true
			},
			member_detail: {
				required: true
			},
			userTel: {
				required: true,
				regex: "^01(?:0|1[6-9])[-](\\d{3}|\\d{4})[-](\\d{4})$"
			}
		},

		messages: {
			userId: {
				required: "아이디는 필수 입력입니다.",
				minlength: "최소 3글자 이상 입력해주세요."
			},
			userName: {
				required: "이름은 필수 입력입니다.",
				minlength: "최소 2글자 이상 입력해주세요."
			},
			userPasswd: {
				required: "비밀번호는 필수 입력입니다.",
				minlength: "최소 8자리 이상 입력해주세요",
				regex: "비밀번호에 특수문자/문자/숫자를 포함해주세요",
				maxlength: "15자리 이하로 입력하세요"
			},
			password2: {
				required: "비밀번호를 확인하세요",
				equalTo: "비밀번호가 틀립니다"
			},
			userEmail: {
				required: "이메일은 필수 입력입니다.",
				regex: "이메일 형식을 지켜주세요."
			},
			send_number: {
				required: "인증번호를 입력해주세요",
				digits: "숫자만 입력하세요",
				maxlength: "4자리만 입력하세요"
			},
			member_post: {
				required: "주소는 필수 입력입니다",
			},
			member_addr: {
				required: "",
			},
			member_detail: {
				required: "",
			},
			userTel: {
				required: "휴대폰 번호를 입력하세요",
				regex: "전화번호 양식이 잘못되었습니다"
			}
		},

		errorElement: 'p',
		errorClass: 'error',
		validClass: 'vaild'
	});
});