<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body{
    margin: 0;
    padding: 0;
    height: 100%;
    display: flex;
    flex-direction: column;
   background-color: #fff;
    font-family: Arial, sans-serif;
   
}

header, footer {
    width: 100%;
}

.container{
	background-color:#fff;
}

.search-section {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 20px 0;
}

.search-bar {
    width: 300px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px 0 0 5px;
    font-size: 16px;
    box-sizing: border-box;
}

.search-button {
    padding: 10px 20px;
    background-color: #b38c5a;
    border: none;
    color: #fff;
    border-radius: 0 5px 5px 0;
    cursor: pointer;
}

.tab-menu {
    display: flex;
    justify-content: center;
    margin: 20px 0;
}

.tab-menu .tab {
    padding: 10px 20px;
    border: 1px solid #b38c5a;
    background-color: #fff;
    color: #b38c5a;
    margin-right: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.tab-menu .tab.active, .tab-menu .tab:hover {
    background-color: #b38c5a;
    color: #fff;
}

.best-section {
    text-align: center;
    margin: 30px 0;
}

.best-section h2 {
    font-size: 24px;
    color: #b38c5a;
    margin-bottom: 20px;
}

.grid-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
   
    padding: 0 10px;
}

.grid-item {
    text-align: center;
}

.grid-item img {
    width: 350px;
    height: 250px;
    border-radius: 5px;
}

.grid-item p {
    margin-top: 10px;
    font-size: 16px;
    color: #333;
}


</style>
</head>
<body>

   <!-- 헤더 -->
    <header>
        <jsp:include page="header.jsp" />
    </header>
    <div class="container">
    <!-- 검색 필드 -->
    <section class="search-section">
        <input type="text" class="search-bar" placeholder="ex) 고망고 망고빙수">
        <button class="search-button">검색</button>
    </section>

      <!-- 탭 메뉴 -->
    <section class="tab-menu">
        <button class="tab active" onclick="switchTab(event)">레시피</button>
        <button class="tab" onclick="switchTab(event)">디저트</button>
        <button class="tab" onclick="switchTab(event)">쿠킹일지</button>
    </section>

    <!-- Best 요리 목록 -->
    <section class="best-section">
        <h2>Best</h2>
        <div class="grid-container">
            <div class="grid-item"><img src="${pageContext.request.contextPath}/static/images/toggle1.jpg" alt="잔치국수"><p>잔치국수</p></div>
            <div class="grid-item"><img src="${pageContext.request.contextPath}/static/images/toggle1.jpg" alt="떡볶이"><p>떡볶이</p></div>
            <div class="grid-item"><img src="${pageContext.request.contextPath}/static/images/toggle1.jpg" alt="만두"><p>만두</p></div>
            <div class="grid-item"><img src="${pageContext.request.contextPath}/static/images/toggle1.jpg" alt="돌솥비빔밥"><p>돌솥비빔밥</p></div>
            <div class="grid-item"><img src="${pageContext.request.contextPath}/static/images/toggle1.jpg" alt="비빔밥"><p>비빔밥</p></div>
            <div class="grid-item"><img src="${pageContext.request.contextPath}/static/images/toggle1.jpg" alt="샐러드"><p>샐러드</p></div>
            <div class="grid-item"><img src="${pageContext.request.contextPath}/static/images/toggle1.jpg" alt="잔치국수"><p>잔치국수</p></div>
            <div class="grid-item"><img src="${pageContext.request.contextPath}/static/images/toggle1.jpg" alt="떡볶이"><p>떡볶이</p></div>
            <div class="grid-item"><img src="${pageContext.request.contextPath}/static/images/toggle1.jpg" alt="만두"><p>만두</p></div>
        </div>
    </section>
</div>

<script>

function switchTab(event) {
    // 모든 탭에서 active 클래스 제거
    const tabs = document.querySelectorAll('.tab');
    tabs.forEach(tab => tab.classList.remove('active'));

    // 클릭된 탭에 active 클래스 추가
    event.target.classList.add('active');
}

</script>

<footer>
        <jsp:include page="footer.jsp" />

</footer>
</body>
</html>