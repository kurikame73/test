<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mypage_userinfo_next.css">
</head>
<body>

  	<jsp:include page="/main/header.jsp" />
  	<h2>회원정보 수정</h2>
  	
  	      <div class="userinfo_next_container">
  	      <h4>이름</h4>
  	      <input type="text" class="next_input">
  	      <h4>닉네임</h4>
  	      <input type="text" class="next_input">
  	      <h4>이메일</h4>
  	      <input type="text" class="next_input">
  	      <h4>비밀번호</h4>
  	      <input type="text" class="next_input">
  	      <h4>비밀번호 확인</h4>
  	      <input type="text" class="next_input">
  	      
  	      <div class="button-container">
  	       <button class="userinfo1">회원정보 수정</button> 
  	       <button class="userinfo2">회원탈퇴</button> 
  	       </div>
  	      </div>
    
    
    <jsp:include page="/mypage/mypage_window.jsp" />
	<jsp:include page="/chat/chat.jsp" />
  	<jsp:include page="/main/footer.jsp" />
  	
  	<script src="${pageContext.request.contextPath}/static/js/mypage_userinfo_next.js"></script>
</body>
</html>