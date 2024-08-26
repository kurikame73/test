<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>\
<head>
    <meta charset="UTF-8">
    <title>레시피 목록</title>
    <style>
        .recipe {
            border: 1px solid #ccc;
            margin: 10px;
            padding: 10px;
            border-radius: 5px;
        }
        .recipe img {
            max-width: 100px;
            height: auto;
        }
        .recipe h2 {
            margin: 0;
        }
    </style>
</head>
<body>
    <h1>레시피 목록</h1>
    <c:forEach var="recipe" items="${recipes}">
        <div class="recipe">
            <h2>${recipe.RCP_NM}</h2>
            <p><strong>재료:</strong> ${recipe.RCP_PARTS_DTLS}</p>
            <p><strong>조리법:</strong> ${recipe.MANUAL01}</p>
            <c:if test="${not empty recipe.MANUAL_IMG01}">
                <img src="${recipe.MANUAL_IMG01}" alt="${recipe.RCP_NM}">
            </c:if>
        </div>
    </c:forEach>
</body>
</html>