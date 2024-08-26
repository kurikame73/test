<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="google-signin-client_id" content="1011065752596-smegiakpteob7t8b6jbloh8ghnfch52o.apps.googleusercontent.com">
    <title>YoriZip 로그인</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('${pageContext.request.contextPath}/static/images/login/loginbanner.png') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/static/images/logo.png" alt="YoriZip 로고">
        </div>
        <div class="login-buttons">
            <!-- 구글 로그인 버튼 -->
            <div id="google-signin-button"></div>
        </div>
    </div>

    <!-- Google Identity Services SDK -->
    <script src="https://accounts.google.com/gsi/client" async defer></script>
    <script>
   
    window.onload = function () {
      google.accounts.id.initialize({
        client_id: '1011065752596-smegiakpteob7t8b6jbloh8ghnfch52o.apps.googleusercontent.com',
        callback: handleCredentialResponse
      });
      google.accounts.id.prompt();
    };

    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jwt-decode/3.1.2/jwt-decode.min.js"></script>
</body>
</html>

