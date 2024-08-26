<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/influliststyle.css" />
</head>
<body>
<!-- haeder -->
<header>
<jsp:include page="header.jsp" />
</header>
<section>
    <form class="container">
    	<!-- 검색 -->
		<div class="search_bar">
			<input class="saerch_bar_content" type="text" placeholder="ex) 고망고 망고빙수" />
			<img src="${pageContext.request.contextPath}/static/images/search-icon_png">
		</div>
        <div class="influencers_box">
            <div class="influencers_content">이번주 급상승 밥플루언서</div>
            <!--인플루언서 이미지 박스-->
            <div class="influencers1_box">
            <!-- 인플루언서 각 이미지 및 위에 카운트-->
            
			<a href="influencerview.jsp">
            	<div class="influencers1_image">
	                <span class="influencers1_list_count">+100</span>
	                <span class="influencers_list_nickname">ㅁㅁㅁ</span>
				</div>
			</a>
            <div class="influencers2_image">
                <span class="influencers1_list_count">+200</span>

                <span class="influencers_list_nickname">ㅁㅁㅁ</span>
            </div>
            <div class="influencers3_image">
                <span class="influencers1_list_count">+300</span>

                <span class="influencers_list_nickname">ㅁㅁㅁ</span>
            </div>
            <div class="influencers4_image">
                <span class="influencers1_list_count">+400</span>

                <span class="influencers_list_nickname">ㅁㅁㅁ</span>
            </div>
            <div class="influencers5_image">
                <span class="influencers1_list_count">+500</span>

                <span class="influencers_list_nickname">ㅁㅁㅁ</span>
            </div>
            <div class="influencers6_image">
                <span class="influencers1_list_count">+600</span>

                <span class="influencers_list_nickname">ㅁㅁㅁ</span>
            </div>
            <div class="influencers7_image">
                <span class="influencers1_list_count">+700</span>

                <span class="influencers_list_nickname">ㅁㅁㅁ</span>
            </div>
            </div>
        </div>
        <div class="influencers_content1">이런 밥플루언서는 어때요?
            <span class="influencers_content2">혜디니 님께 추천하는 랜덤 밥플루언서</span>
        </div>
        <div class="influencers_box2">
            <!--인플루언서 박스-->
            <div class="influencers2_box">
            <!-- 인플루언서 각 이미지 및 위에 카운트-->
            <div class="influencers_box_form">
                <div class="influencers1_image">
                    <span class="influencers1_list_count">+100</span>

                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers2_image">
                    <span class="influencers1_list_count">+200</span>

                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers3_image">
                    <span class="influencers1_list_count">+300</span>

                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers4_image">
                    <span class="influencers1_list_count">+400</span>

                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers5_image">
                    <span class="influencers1_list_count">+500</span>

                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers6_image">
                    <span class="influencers1_list_count">+600</span>

                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers7_image">
                    <span class="influencers1_list_count">+700</span>

                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
            </div> 
            </div>       
        </div>
    </form>
</section>
<!-- footer -->
<footer>
<jsp:include page="footer.jsp" />
</footer>
</body>
</html>