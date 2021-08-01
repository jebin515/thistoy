var code = "";
const submitBtn2 = document.getElementById("next_button")
const submitBtn = document.querySelector("#next_button");
/* 이메일 버튼 누를시 이메일 발송 */
$(".btn_send").click(function () {
    // var email = $(".mail_input").val();            // 입력한 이메일
    var checkBox = $("#mail_check_input");        // 인증번호 입력란
    var boxWrap = $(".mail_check_input_box");    // 인증번호 입력란 겉 박스

    var semail = $(".mail_input").val();
    var sid = $(".id_input").val();       // 입력한 이메일값
    $.ajax({
        type: "GET",
        url: "findpassword?semail=" + semail,
        success: function (data) {
            console.log("data : " + data);
            code = data;
            alert(semail + "주소로 메일이 발송되었습니다.");
        }
    });
});


$(".btn_confirm").click(function () {

    var inputCode = $("#mail_check_input").val();        // 인풋에 입력한 코드
    var checkResult = $(".code_check");    // 비교 결과
    submitBtn2.disable = false;
    if (inputCode == code) {                            // 일치할 경우
        checkResult.html("인증 성공!");

        $(submitBtn).removeAttr('disabled');
    } else {                                            // 일치하지 않을 경우
        checkResult.html("인증 실패.");

        // checkfail();

    }
});
