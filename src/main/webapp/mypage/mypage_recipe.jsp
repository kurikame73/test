<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>레시피 목록</title>
	<style>
		.RecipeContentList {
			display: grid;
			grid-template-columns: repeat(4, 1fr);
			gap: 20px;
			max-width: 1200px;
			margin: 0 auto;
			padding: 20px;
		}

		.RecipeContent {
			border: 1px solid #ddd;
			border-radius: 5px;
			overflow: hidden;
			text-align: center;
			cursor: pointer;
			background-color: #fff;
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
			transition: transform 0.2s, box-shadow 0.2s;
		}

		.RecipeContent:hover {
			transform: translateY(-5px);
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
		}

		.recipeImg img {
			width: 100%;
			height: 200px;
			object-fit: cover;
		}

		.recipeDetails {
			padding: 15px;
		}

		.recipeTitle {
			font-size: 18px;
			margin: 10px 0;
			color: #333;
		}
	</style>
</head>
<body>
<!-- 헤더 -->
<header>
	<jsp:include page="/main/header.jsp" />
</header>

<div class="RecipeContentList">
	<!-- 모델에서 가져온 favoriteRecipes 목록을 출력 -->
	<c:forEach var="recipe" items="${favoriteRecipes}">
		<div class="RecipeContent" data-recipe-id="${recipe.recipeId}">
			<div class="recipeImg"></div> <!-- 이미지가 이 div에 동적으로 추가됩니다. -->
			<div class="recipeDetails">
				<h3 class="recipeTitle">
					<a href="http://localhost:8888/myapp/recipe/recipelist.jsp?recipeId=${recipe.recipeId}">
						레시피 상세 보기 (ID: ${recipe.recipeId})
					</a>
				</h3>
			</div>
		</div>
	</c:forEach>
</div>

<footer>
	<jsp:include page="/main/footer.jsp" />
</footer>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('.RecipeContent').each(function() {
			const recipeId = $(this).data('recipe-id');
			const recipeContent = $(this);

			// API 호출하여 레시피 정보 가져오기
			$.ajax({
				method: "GET",
				url: `http://openapi.foodsafetykorea.go.kr/api/67f9fcdd1106497bb4f2/COOKRCP01/json/1/100`,
			})
					.done(function(res) {
						if (res.COOKRCP01.row && res.COOKRCP01.row.length > 0) {
							const recipe = res.COOKRCP01.row.find(r => r.RCP_SEQ === String(recipeId));
							if (recipe) {
								const imageUrl = recipe.ATT_FILE_NO_MAIN;
								const imageElement = $('<img>').attr('src', imageUrl).attr('alt', 'Recipe Image');
								recipeContent.find('.recipeImg').append(imageElement);
							}
						}
					})
					.fail(function(xhr, status, error) {
						console.error("Failed to fetch data: " + status + " " + error);
					});
		});
	});
</script>
</body>
</html>
