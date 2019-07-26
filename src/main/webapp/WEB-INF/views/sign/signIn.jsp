<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>게시판</title>

        <%--Jquery--%>
        <script
                src="https://code.jquery.com/jquery-3.4.1.min.js"
                integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
                crossorigin="anonymous"></script>
        <%--Bootstrap--%>
        <link   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                rel="stylesheet"
                integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                crossorigin="anonymous">
        <%--sign--%>
        <link rel="stylesheet" type="text/css" href="/css/sign/sign.css" />
    </head>
    <body>
        <div class="signin-form">
            <form class="text-center shadow-sm" action="#" method="post">
                <h2>TOY PROJECT</h2>
                <div class="form-group shadow-sm">
                    <input type="text" class="form-control input-lg" name="username" placeholder="사용자명" required="required">
                </div>
                <div class="form-group shadow-sm">
                    <input type="password" class="form-control input-lg" name="password" placeholder="비밀번호" required="required">
                </div>
                <div class="form-group shadow-sm">
                    <button type="submit" class="btn btn-success btn-lg btn-block">로그인</button>
                </div>
                <div class="form-group">
                    <a href="#">회원가입</a>
                </div>

                <div class="social-btn text-center">
                    <a href="#"><img class="shadow-sm" src="https://img.icons8.com/color/96/000000/google-logo.png"></a>
                </div>
            </form>
        </div>
    </body>
</html>