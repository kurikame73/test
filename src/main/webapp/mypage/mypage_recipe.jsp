<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mypage_recipe.css">
</head>
<body>

  	<jsp:include page="/main/header.jsp" />
  	<h2>스크랩 레시피</h2>
  	
	  	      <div class="userinfo_container">
	        <!-- 앨범형 게시판 -->
	        <div class="album-container">
	            <div class="album-item">
	            <a href="${pageContext.request.contextPath}/recipeDetail.jsp?id=1" class="album-item">
	                <img src="${pageContext.request.contextPath}/static/images/noodle.png" alt="잔치국수">
	                <div class="album-info">
	                    <p>초보자도 쉽게 만드는 국수</p>
	                    <h3>잔치국수</h3>
	                </div>
	                </a>
	            </div>
	            <!-- 추가적인 앨범 항목들 -->
	        </div>
 
    </div>
       <div class="pagination">
        <a href="#">&laquo;</a>
        <a href="#" class="active">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">&raquo;</a>
    </div>
    <jsp:include page="/mypage/mypage_window.jsp" />
	<jsp:include page="/chat/chat.jsp" />
  	<jsp:include page="/main/footer.jsp" />
</body>
</html>