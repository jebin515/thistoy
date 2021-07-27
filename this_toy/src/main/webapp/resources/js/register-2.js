$.validator.addMethod("regex", function (value, element, regexp) {
    let re = new RegExp(regexp);
    let res = re.test(value);
    console.log(res, value, regexp, re)
    return res;
});

$(function () {
    $(".form").validate({
        rules: {
            id: {
                required: true,
                minlength: 3
            },
            username: {
                required: true,
                minlength: 2
            },
            password: {
                required: false,
                //                regex: "^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$",
                minlength: 8
            },
            password2: {
                required: false,
                equalTo: '#password'
            },
            email: {
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
            tel: {
                required: true,
                digits: true,
                regex: "^(010|011)[-\\s]?\\d{3,4}?\\d{4}$"
            }
        },

        messages: {
            id: {
                required: "아이디는 필수 입력입니다.",
                minlength: "최소 3글자 이상 입력해주세요."
            },
            username: {
                required: "이름은 필수 입력입니다.",
                minlength: "최소 2글자 이상 입력해주세요."
            },
            password: {
                required: "비밀번호는 필수 입력입니다.",
                minlength: "최소 6자리 이상 입력해주세요",
                regex: "비밀번호에 특수문자/문자/숫자를 포함해주세요"
            },
            password2: {
                required: "비밀번호를 확인하세요",
                equalTo: "비밀번호가 틀립니다"
            },
            email: {
                required: "이메일은 필수 입력입니다.",
                regex: "이메일 형식을 지켜주세요."
            },
            send_number: {
                required: "인증번호를 확인해주세요",
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
            tel: {
                required: "휴대폰 번호를 입력하세요",
                digits: "숫자만 입력하세요",
                regex: "전화번호 양식이 잘못되었습니다"
            }
        },

        errorElement: 'p',
        errorClass: 'error',
        validClass: 'vaild'
    });
});