<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/insert.css" /> 
</head>
<!-- haeder -->
<jsp:include page="header.jsp" />
    <form class="container">
	    <div class="insert_main_title">쿠킹일지</div>
	    <div class="insert_title">오늘의 쿠킹 일지</div>
	
	    <div class="main_insert_form">
	        <div class="insert_form">
	            <div class="insert_form_title">
	                <div class="insert_title_form">
	                    <div class="insert_sec_image">이미지</div>
	                    <div class="insert_sec_bold">B</div>
	                    <select class="insert_sec_size_content">
	                        <option value="">size</option>
	                        <option value="5">5</option>
	                        <option value="7">7</option>
	                        <option value="10">10</option>
	                    </select>
	                </div>
	            </div>
	
	            <div class="insert_sec_form_box">
	                <div class="insert_sec_form">제목</div>
	            </div>
	
	            <div class="insert_content_box">
	                <div class="insert_content_form">
	                    <div class="insert_image_box">
	                        <div class="insert_image_content">사진</div>
	                    </div>
	                    <div class="insert_sec_bold_content">굵기</div>
	                    <div class="insert_sec_size"></div>
	                    <div class="insert_content_msg">내용을 입력해주세요</div>
	                </div>
	            </div>
	        </div>
	    </div>
	
	    <div class="insert_btn_box">
	        <button class="insert_btn_content">작성완료</button>
	    </div>
	    <div class="list_btn_box">
	        <button class="list_content" >목록</button>
	    </div>
    </form>
    <!-- footer -->
  <jsp:include page="footer.jsp" />
</body>
</html>