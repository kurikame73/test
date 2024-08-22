<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/faq.css">
</head>
<body>
<jsp:include page="/main/header.jsp" />
<!-- 자주하는 질문 리스트   -->
	<center>
			<h2 align="center">자주 하는 질문</h2>
			<ul>
			<li class="li"><a href="#" class="button" id="a">전체</a></li>
			<li class="li"><a href="#" class="button" id="a">회원 문의</a></li>
			<li class="li"><a href="#" class="button" id="a">서비스</a></li>
			<li class="li"><a href="#" class="button" id="a">기타</a></li>
		</ul>
		
		<!-- 아코디언식 질문 -->
	 <div class="accordion">
	        <div class="accordion-item">
	            <div class="accordion-header">레시피 댓글, 후기에 노출되는 이름 변경 안 되나요?</div>
	            <div class="accordion-content">
	                <p>레시피 댓글과 후기에 표시되는 이름은 회원 정보에서 변경할 수 있습니다. '내 정보' 섹션에서 이름을 변경 후, 다시 댓글을 작성하면 새로운 이름으로 표시됩니다.</p>
	            </div>
	        </div>
	        <div class="accordion-item">
	            <div class="accordion-header">회원탈퇴는 어떻게 하나요?</div>
	            <div class="accordion-content">
	                <p>회원 탈퇴는 설정 메뉴에서 진행할 수 있습니다. '설정' -> '계정' -> '회원 탈퇴'를 순서대로 선택해 주세요. 탈퇴 후에는 복구가 불가능하니 신중히 선택해 주세요.</p>
	            </div>
	        </div>
	        <!-- 더 많은 항목 추가 가능 -->
	    </div>
	
	
	 <script src="${pageContext.request.contextPath}/static/js/faq.js"></script>
	      <jsp:include page="/mypage/mypage_window.jsp" />
	<jsp:include page="/chat/chat.jsp" />
  	<jsp:include page="/main/footer.jsp" />
</body>
</html>