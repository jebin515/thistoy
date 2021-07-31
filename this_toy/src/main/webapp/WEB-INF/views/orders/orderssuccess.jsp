<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=980" />
    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/orderssuccess.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <title>Document</title>
</head>
<body>
<%@ include file="../includes/header.jsp" %>
<main>
        <div class="register-main">
            <div class="wrap">
                <div class="register-success">
                    <div class="register-logo">
                       <i class=' bx bx-check-circle bx-big'></i>
                    </div>
                    <div class="content">
                        <h2>This Toy <span>결제가 완료</span>되었습니다</h2>
                        <p>추가적인 결재 및 환불/교환은 해당 페이지를 찾아주시기 바랍니다</p>
                    </div>
                    <div class="register-success-btn">
                        <a href="/main">메인페이지로 이동</a>
                    </div>
                </div>
            </div>
        </div>
    </main>
     <%@ include file="../includes/footer.jsp" %>
</body>
</html>