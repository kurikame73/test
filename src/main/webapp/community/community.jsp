<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/communitystyle.css" /> 
</head>
<body>
<!-- haeder -->
<header>
<jsp:include page="/main/header.jsp" />
</header>
<section>
	<form class="container" method="post" enctype="multipart/form-data">
		<!-- 검색 -->
		<div class="search_bar">
			<input class="saerch_bar_content" type="text" placeholder="ex) 고망고 망고빙수">
				<img src="${pageContext.request.contextPath}/static/images/search-icon_png">
			</input>
		</div>
	    <div class="cooking_list_box">
	        <!-- 모락 모락 쿠킹 일지 -->
	        <div class="main_title"><a href="communiity.jsp" style="text-decoration-line: none">모락 모락 쿠킹 일지
	                <span class="main_title_num">123,456</span>
	                <span class="cooking_daily">></span>
	            </a>
	        </div>
	        <div class="image_box">
	            <!-- 쿠킹일지 이미지1 -->
		        <div class="img_box1" >
		            <a href="view.jsp" style="text-decoration-line: none">
		            	
		            </a>
		        </div>
	            <!-- 쿠킹일지 이미지들 -->
	            <div class="img_box2">
	            	<a href="view.jsp" style="text-decoration-line: none">
	            		
	            	</a>
	            </div>
	            <div class="img_box3">
	            	<a href="view.jsp" style="text-decoration-line: none">
	            		
	            	</a>
	            </div>
	            <div class="img_box4">
	            	<a href="view.jsp" style="text-decoration-line: none">
	            		
	            	</a>
	            </div>
	            <div class="img_box5">
	            	<a href="view.jsp" style="text-decoration-line: none">
	            		
	            	</a>
	            </div>
	            <div class="img_box6">
	            	<a href="view.jsp" style="text-decoration-line: none">
	            		
	            	</a>
	            </div>
	            <div class="img_box7">
	            	<a href="view.jsp" style="text-decoration-line: none">
	            		
	            	</a>
	            </div>
	        </div>
	        <div class="button_box">
	                <!-- 모두보기 박스 -->
		        <div class="list_box">
		            <span class="list_box_content">
		            	<a href="communitylist.jsp" style="text-decoration-line: none">모두 보기</a>
		            </span>
		        </div>
	
	            <!-- 작성하기 박스 -->
		        <div class="insert_box">
		            <span class="insert_box_content">
		            	<a href="insert.jsp" style="text-decoration-line: none">작성 하기</a>
		            </span>
       			</div>
       		</div>
	  	</div>
	
        <!-- 인플루언서 폼-->
        <div class="influencers_box">
            <div class="minigame_box">
                <div class="minigame_content">
                    	<a href="minigame.jsp" style="text-decoration-line: none">미니게임 즐기기</a>
                </div>
            </div>
			<!--인플루언서 박스-->
	            <div class="influencers_content1">추천 인플루언서</div>
	            <div class="influencers_content2">더 많은 인플루언서 팔로우 ></div>
            
                <!-- 인플루언서 각 이미지 및 위에 카운트-->
                <div class="influencers1_image">
                	<a href="influencerlist.jsp">
                	
                	</a>
                    <span class="influencers1_list_count">+100</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers2_image">
                	<a href="influencerlist.jsp">
                		
                    </a>
                    <span class="influencers1_list_count">+200</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers3_image">
                	<a href="influencerlist.jsp">
                		
                    </a>
                    <span class="influencers1_list_count">+300</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers4_image">
                	<a href="influencerlist.jsp">
                		
                    </a>
                    <span class="influencers1_list_count">+400</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers5_image">
                	<a href="influencerlist.jsp">
                		
                    </a>
                    <span class="influencers1_list_count">+500</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers6_image">
                	<a href="influencerlist.jsp">
                		
                    </a>
                    <span class="influencers1_list_count">+600</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <div class="influencers7_image">
                	<a href="influencerlist.jsp">
                		
                    </a>
                    <span class="influencers1_list_count">+700</span>
                    <span class="influencers_list_nickname">ㅁㅁㅁ</span>
                </div>
                <!--하단 버튼 폼 (인플루언서 구경, 찜한 일지)-->
                <div class="recommand_influencers_list">
                    <!--찜한 일지 박스-->
                    <div class="recommand_influencers_box">
                        <!--찜한 일지 내용-->
                        <a href="#">
                        	<span class="recommand_influencers_content">찜한 일지 확인하기</span>
                    	</a>
                    </div>
                    <!-- 더 많은 인플루언서 구경하기 박스-->
                    <div class="influencers_list_box">
                        <!-- 더 많은 인플루언서 구경하기 내용-->
                        <a href="influencerlist.jsp">
                        	<span class="influencers_list_content">더 많은 인플루언서 구경하기</span>
                        </a>
                    </div>
                </div>
            </div>
	</form>        
</section>
<!-- footer -->
<jsp:include page="/main/footer.jsp" />
</body>
</html>