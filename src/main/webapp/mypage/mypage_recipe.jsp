<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
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

		.recipeInfo {
			font-size: 14px;
			color: #666;
		}

	</style>
</head>
<body>
<!-- 헤더 -->
<header>
	<jsp:include page="/main/header.jsp" />
</header>




<div class="RecipeContentList">
	<!-- 레시피 목록이 여기에 표시됩니다 -->
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		// JSP에서 사용자 ID를 JavaScript로 전달
		let userId = '<c:out value="${sessionScope.user.id}"/>';
		console.log("UserId = {}", userId);
		function loadFavoriteRecipes() {
			$.ajax({
				method: "GET",
				url: `http://localhost:8888/myapp/${sessionScope.user.id}/favorite`, // userId 포함
			})
					.done(function(res) {
						if (res && res.length > 0) {
							displayRecipes(res);
						} else {
							$(".RecipeContentList").empty();
							$(".RecipeContentList").append('<p>No favorite recipes found.</p>');
						}
					})
					.fail(function(xhr, status, error) {
						console.error("Failed to fetch favorite recipes: " + status + " " + error);
						$(".RecipeContentList").empty();
						$(".RecipeContentList").append('<p>Error fetching favorite recipes. Please try again later.</p>');
					});
		}

		function displayRecipes(recipes) {
			$(".RecipeContentList").empty();
			recipes.forEach(function(recipe) {
				const recipeContent = $('<div>').addClass('RecipeContent');
				const recipeImgDiv = $('<div>').addClass('recipeImg');
				const recipeImg = $('<img>').attr('src', recipe.imageUrl).attr('alt', 'Recipe Image');
				recipeImgDiv.append(recipeImg);

				const recipeDetails = $('<div>').addClass('recipeDetails');
				const recipeTitle = $('<h3>').addClass('recipeTitle').text(recipe.title);
				const recipeInfo = $('<div>').addClass('recipeInfo');

				recipeInfo.append($('<p>').text(recipe.description));
				recipeInfo.append($('<p>').text("Calories: " + recipe.calories + " kcal"));

				recipeDetails.append(recipeTitle).append(recipeInfo);
				recipeContent.append(recipeImgDiv).append(recipeDetails);

				$(".RecipeContentList").append(recipeContent);

				recipeContent.click(function() {
					window.location.href = "recipelist.jsp?recipeId=" + recipe.id;
				});
			});
		}

		// 초기 데이터 로드
		loadFavoriteRecipes();
	});
</script>


<footer>
	<jsp:include page="/main/footer.jsp" />
</footer>
</body>
</html>
