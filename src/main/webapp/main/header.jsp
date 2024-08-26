<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YoriZip Header</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header.css">
    
</head>
<body>
     <header>
        <div class="header-container">
            <div class="logo">
                <a href="main.jsp"><img src="${pageContext.request.contextPath}/static/images/logo.png" alt="YoriZip 로고"></a>
            </div>
            <nav class="main-menu">
                <ul>
                    <li><a href="#">든든한끼</a></li>
                    <li><a href="#">달달간식</a></li>
                    <li><a href="#">쿠킹일지</a></li>
                    <li><a href="#">오늘의 메뉴</a></li>
                </ul>
            </nav>
            <nav class="user-menu">
                <div class="search-icon">
                    <a href="searchKey.jsp"><img src="${pageContext.request.contextPath}/static/images/search-icon.png" alt="검색"></a>
                </div>
                <ul>
                    <!-- 로그인 상태에 따라 표시할 항목들 -->
                    <li class="auth">
                        <a href="${pageContext.request.contextPath}/login/login.jsp" class="login-link">로그인/</a>
                        <a href="#" class="signup-link">회원가입</a>
                    </li>
                    <li class="support"><a href="#">고객센터</a></li>
                    <li class="mypage" style="display: none;"><a href="#">마이페이지</a></li>
                    <li class="logout" style="display: none;"><a href="#">로그아웃</a></li>
                </ul>
            </nav>
            <div class="hamburger-menu">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>

        <!-- 모바일 메뉴 -->
        <div class="mobile-menu">
            <ul>
                <li><a href="#">든든한끼</a></li>
                <li><a href="#">달달간식</a></li>
                <li><a href="#">쿠킹일지</a></li>
                <li><a href="#">오늘의 메뉴</a></li>
                <li class="auth-mobile"><a href="#">로그인/회원가입</a></li>
                <li><a href="#">고객센터</a></li>
                <li class="mypage-mobile" style="display: none;"><a href="#">마이페이지</a></li>
                <li class="logout-mobile" style="display: none;"><a href="#">로그아웃</a></li>
            </ul>
        </div>
    </header>

    <script src="${pageContext.request.contextPath}/static/js/header.js"></script>
</body>
</html>
