<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/insert.css" /> 
</head>
<!-- haeder -->
<header>
<jsp:include page="header.jsp" />
</header>
<article>
    <form class="container" action="insertBoard.do">
	    <div class="insert_main_title">쿠킹일지</div>
	    <div class="insert_title">오늘의 쿠킹 일지</div>
	
	    <div class="main_insert_form">
	        <input class="insert_form_title" placeholder="제목을 입력해주세요" />
	        <div class="insert_title_form">
	            <div class="insert_sec_image">
	                <img src="${pageContext.request.contextPath}/static/images/image.png">
	            </div>
	            <span class="insert_sec_image_content">사진</span>
	            
	            <div class="insert_sec_bold">B</div>
	            <span class="insert_sec_bold_content">굵기</span>
	            
	            <select class="insert_sec_size_content">
	                <option value="">size</option>
	                <option value="5">5</option>
	                 <option value="7">7</option>
	                <option value="10">10</option>
	            </select>
	        </div>
	
	        <div class="insert_content_box">
		        <div class="insert_image_box">
		            <textarea class="insert_content_form" placeholder="내용을 입력해주세요"></textarea>
		        </div>
	    	</div>
		</div>
	    <div class="insert_btn_box">
	        <a href="insertBoard.do" class="insert_btn_content">작성완료</a>
	    </div>
	    <div class="list_btn_box">
	        <a href="communitylist.do" class="list_content">목록</a>
	    </div>
    </form>
</article>
    <!-- footer -->
<footer>
<jsp:include page="footer.jsp" />
</footer>
</body>
</html>