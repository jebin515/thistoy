<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
    <html lang="kr">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=980" />
        <link rel="stylesheet" href="/css/style.css">
        <link href="/css/register.css" rel="stylesheet">
        <link href="/css/register-2.css" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <title>Document</title>
    </head>
    <script defer>
	var result = "<c:out value='${fail}'/>";
	function fail() {
		alert('아이디가 틀립니다.');
	}
	if (result == '틀림') {
		fail();
	}
</script>

    <body>
        <main>
            <div class="title">
                <span>비밀번호 찾기</span>
            </div>
            <div class="register-main">
                <!-- <div class="wrap wd668"> -->
                <div class="container">
                    <div class="form_txtInput">
                        <form id="form" class="form" method="post" action="/login/findpwcheck">
                            <div class="join_form">
                                <table>
                                    <colgroup>
                                        <col width="30%" />
                                        <col width="auto" />
                                    </colgroup>
                                    <tbody>
                                        <tr class="form-control">
                                            <th><span>아이디</span></th>
                                            <td><input type="text" name="userId" id="userId" class="id_input" placeholder="아이디를 입력하세요."
                                                    required></td>
                                            <td></td>
                                        </tr>
                                        <tr class="form-control">
                                            <th><span>이메일</span></th>
                                            <td><input type="email" name="userEmail" id="email" class="mail_input"
                                                    placeholder="예)abc123@naver.com" required></td>
                                            <td>
                                                <button class="btn_send"  type="button">인증번호
                                                    발송</button>
                                            </td>
                                        </tr>
                                        <tr class="form-control">
                                            <th><span>인증번호 확인</span></th>
                                            <td><input type="text" class="send_number" name="send_number"
                                                    placeholder="인증번호를 정확히 입력하세요." id="mail_check_input" required></td>
                                            <td><button class="btn_confirm" type="button">확인</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="btn_wrap">
                                <input type="submit" id="next_button" class="button" value="확인" disabled>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- </div> -->
            </div>
        </main>
        <%@ include file="../includes/footer.jsp" %>

            <script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
            <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
            <script src="https://smtpjs.com/v3/smtp.js"></script>
            <script src="/js/findpw.js?ver=1"></script>
            <script src="/js/register-2.js"></script>
            <script type="text/javascript">
                window.history.forward();
                function noBack() {
                    window.history.forward();
                }
            </script>
    </body>

    </html>