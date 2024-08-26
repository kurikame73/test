<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/communitystyle.css" /> 
</head>
<body>
<!-- haeder -->
<jsp:include page="header.jsp" />

    <form class="container">
            <!-- 모락 모락 쿠킹 일지 -->
        <button class="main_title" >모락 모락 쿠킹 일지</a>
                <span class="main_title_num">123,456
                <span class="cooking_daily">></span>
            </span>
        </button>
            <!-- 구독한 일지 확인하기 이모티콘 -->
        <div class="dibs_list"></div>
            
            <!-- 쿠킹일지 이미지1 -->
        <div class="img_box1" >
            <a href="#" style="text-decoration-line: none">
            	<img src="${pageContext.request.contextPath}/static/images/1.png">
            </a>
        </div>
            
            <!-- 쿠킹일지 이미지들 -->
        <div class="cooking_list_box">
            <div class="img_box2">
            	<img src="${pageContext.request.contextPath}/static/images/2.png">
            </div>
            <div class="img_box3">
            	<img src="${pageContext.request.contextPath}/static/images/3.png">
            </div>
            <div class="img_box4">
            	<img src="${pageContext.request.contextPath}/static/images/4.png">
            </div>
            <div class="img_box5">
            	<img src="${pageContext.request.contextPath}/static/images/5.png">
            </div>
            <div class="img_box6">
            	<img src="${pageContext.request.contextPath}/static/images/6.png">
            </div>
            <div class="img_box7">
            	<img src="${pageContext.request.contextPath}/static/images/7.png">
            </div>
        </div>

            <!-- 모두보기 박스 -->
        <div class="list_box">
            <button class="list_box_content">모두 보기</button>
        </div>

            <!-- 작성하기 박스 -->
        <div class="insert_box">
            <button class="insert_box_content">작성 하기</button>
        </div>
        <!-- 인플루언서 폼-->
        <div class="influencers_box">
            <div class="minigame_box">
                <button class="minigame_content">
                    	미니게임 즐기기
                </button>
            </div>

            <div class="influencers_content1">추천 인플루언서</div>
            <div class="influencers_content2">더 많은 인플루언서 팔로우 ></div>
            <!--인플루언서 박스-->
            <div class="influencers1_box">
                <!-- 인플루언서 각 이미지 및 위에 카운트-->
                <div class="influencers1_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+100</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers2_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+200</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers3_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+300</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers4_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+400</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers5_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+500</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers6_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+600</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers7_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+700</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <!--하단 버튼 폼 (인플루언서 구경, 찜한 일지)-->
                <div class="recommand_influencers_list">
                    <!--찜한 일지 박스-->
                    <div class="recommand_influencers_box" onclick="communitylist.jsp">
                        <!--찜한 일지 내용-->
                        <span class="recommand_influencers_content">
                            	찜한 일지 확인하기
                        </span>
                    </div>
                    <!-- 더 많은 인플루언서 구경하기 박스-->
                    <div class="influencers_list_box" onclick="influencerlist.jsp">
                        <!-- 더 많은 인플루언서 구경하기 내용-->
                        <span class="influencers_list_content">
                            	더 많은 인플루언서 구경하기
                        </span>
                    </div>
                </div>
            </div>
        </div>
            <!-- footer -->
 <jsp:include page="footer.jsp" />
    </form>
</body>
</html>