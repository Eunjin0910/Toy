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
        <%--common--%>
        <script type="text/javascript" src="/js/common/common.js"></script>
        <link rel="stylesheet" type="text/css" href="/css/common/common.css" />
    </head>
    <body style="min-height: 700px;">
        <div class="signin-form" style="margin: 0 auto; width: 400px; padding-top: 150px;">
            <form class="text-center" action="/examples/actions/confirmation.php" method="post" style="border: 1px solid #a1a1a8; border-radius: 20px; padding: 20px;">
                <h2>Sign in</h2>
                <div class="form-group" style="margin-top: 30px;">
                    <input type="text" class="form-control input-lg" name="username" placeholder="Username" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control input-lg" name="password" placeholder="Password" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-lg btn-block signup-btn">Sign in</button>
                </div>

                <%--비밀번호 찾기--%>
                <%--<div class="text-center small"><a href="#">Forgot Your password?</a></div>--%>

                <div class="social-btn text-center">
                    <%--<a href="#" class="btn btn-primary btn-lg" title="Facebook"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="btn btn-info btn-lg" title="Twitter"><i class="fa fa-twitter"></i></a>--%>
                    <a href="#"><img src="https://img.icons8.com/color/96/000000/google-logo.png" style="width: 44px; border: 1px solid #616161; border-radius: 22px; padding: 4px;"></a>
                </div>
            </form>
            <div class="text-center small" style="margin-top: 20px;">Don't have an account? <a href="#">Sign up</a></div>
        </div>
    </body>
</html>