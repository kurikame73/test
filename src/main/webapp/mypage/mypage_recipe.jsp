<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Scrap Recipes</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mypage_recipe.css">
</head>

<body>

<jsp:include page="/main/header.jsp" />
<h2>스크랩 레시피</h2>

<div class="userinfo_container">
	<!-- 앨범형 게시판 -->
	<div class="album-container">
		<c:forEach var="recipe" items="${favoriteRecipes}">
			<div class="album-item">
				<a href="${pageContext.request.contextPath}/recipeDetail.jsp?id=${recipe.id}" class="album-item">
					<img src="${pageContext.request.contextPath}/static/images/${recipe.imageUrl}" alt="${recipe.title}">
					<div class="album-info">
						<p>${recipe.description}</p>
						<h3>${recipe.title}</h3>
					</div>
				</a>
			</div>
		</c:forEach>
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
