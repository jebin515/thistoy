<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <body>
        <main>
            <div class="title">
                <span>비밀번호 변경</span>
            </div>
            <div class="register-main">
                <!-- <div class="wrap wd668"> -->
                <div class="container">
                    <div class="form_txtInput">
                        <form id="form" class="form" method="post" action="/login/pwchangesuccess">
                            <div class="join_form">
                                <table>
                                    <colgroup>
                                        <col width="30%" />
                                        <col width="auto" />
                                    </colgroup>
                                    <tbody>
                                        <tr class="form-control">
                                            <th><span>아이디</span></th>
                                            <td><input type="text" name="userId" id="userId" class="id_input" value="<c:out value="${userId}"/>"
                                                    readonly></td>
                                            <td></td>
                                        </tr>
                                        <tr class="form-control">
											<th><span>변경비밀번호</span></th>
											<td><input type="password" id="password"
												name="userPasswd" placeholder="특수문자/문자/숫자 포함 8자리 이상 입력하세요."></td>
											<td></td>
										</tr>
										<tr class="form-control">
											<th><span>변경비밀번호 확인</span></th>
											<td><input type="password" name="password2"
												placeholder="비밀번호를 확인하세요."></td>
											<td></td>
										</tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="btn_wrap">
                                <input type="submit" id="next_button" class="button" value="확인" onclick="opener.window.location='/'; window.close();">
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
            <script src="/js/register-2.js"></script>
            <script type="text/javascript">
                window.history.forward();
                function noBack() {
                    window.history.forward();
                }
            </script>
    </body>

    </html>