<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mypage_userinfo.css">
</head>
<body>

  	<jsp:include page="/main/header.jsp" />
  	<h2>회원정보 수정</h2>
  	
  	      <div class="userinfo_container">
  	      <h4>회원정보 수정을 위해 비밀번호를 입력해주세요.</h4>
  	      
  	      <input type="text" class="pass_input">
  	       <button>다음</button> 
  	      </div>
    
    
    <jsp:include page="/mypage/mypage_window.jsp" />
	<jsp:include page="/chat/chat.jsp" />
  	<jsp:include page="/main/footer.jsp" />
</body>
</html>