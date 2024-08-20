<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/viewstyle.css" /> 
</head>
<body>
<!-- haeder -->
<jsp:include page="header.jsp" />
	<form class="container">
        <div class="view_main_title">혜디니’s 쿠킹 일지
            <div class="view_main_title_date">2024. 08. 12
            </div>
        </div>
    
        <div class="view_main_image_form">
            <div class="view_main_image_box"></div>
            <div class="view_mypage_image_box">
            	<img src="${pageContext.request.contextPath}/static/images/person1.png"> 
            </div>
        </div>
        <!-- 수정 버튼 -->
        <button class="view_main_edit_box" id="btn_opt">수정</button>
        <!-- 삭제 버튼 -->
        <button class="view_main_delete_box" id="btn_opt">삭제</button>
        <!-- 목록 버튼 -->
        <button class="view_main_list_box" id="btn_opt">목록</button>
        <!-- 다음 글 버튼 -->
        <button class="view_main_next_box" id="btn_opt">다음 글 </button>
        <!-- 이전 글 버튼 -->
        <button class="view_main_prev_box" id="btn_opt">이전 글</button>
        
        <!-- 메인 글 폼-->
        <div class="view_main_form">
            <!-- 당근 이미지 -->
            <div class="view_content_image_form"></div>
            <img src="${pageContext.request.contextPath}/static/images/viewimage.png">
            <!-- 아래 배너 -->
            <div class="view_content_images_form"></div>
            <img src="${pageContext.request.contextPath}/static/images/3.png">
        </div>
        
        <!-- 댓글 -->
        <div class="view_content_reply_form">
            <!-- 댓글 이미지-->
            <div class="view_reply_image_form1">
                <img src="${pageContext.request.contextPath}/static/images/person1.png">    
            </div>
            	<div class="view_reply_list">
            		<img src="${pageContext.request.contextPath}/static/images/목록.png">   
            	</div> 
            <button class="view_reply_insert_box">답글</button>

        <div class="view_content_reply_form2">
            <div class="view_reply_image_form2">
                <img src="${pageContext.request.contextPath}/static/images/person1.png">
            </div>
            <div class="view_reply_list">
            	<img src="${pageContext.request.contextPath}/static/images/목록.png">   
            </div>
            <button class="view_reply_insert_box">답글</button>
        </div>
    </form>
    <!-- footer -->
  <jsp:include page="footer.jsp" />
</body>
</html>