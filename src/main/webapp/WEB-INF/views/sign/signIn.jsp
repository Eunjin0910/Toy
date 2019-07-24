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
        <div class="signin-form align-middle" style="margin: 0 auto; width: 400px; padding-top: 150px;">
            <form action="/examples/actions/confirmation.php" method="post">
                <h2>Sign in</h2>
                <p class="hint-text">Sign in with your social media account</p>
                <div class="social-btn text-center">
                    <a href="#" class="btn btn-primary btn-lg" title="Facebook"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="btn btn-info btn-lg" title="Twitter"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="btn btn-danger btn-lg" title="Google"><i class="fa fa-google"></i></a>
                </div>
                <div class="or-seperator"><b>or</b></div>
                <div class="form-group">
                    <input type="text" class="form-control input-lg" name="username" placeholder="Username" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control input-lg" name="password" placeholder="Password" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-lg btn-block signup-btn">Sign in</button>
                </div>
                <div class="text-center small"><a href="#">Forgot Your password?</a></div>
            </form>
            <div class="text-center small">Don't have an account? <a href="#">Sign up</a></div>
        </div>
    </body>
</html>