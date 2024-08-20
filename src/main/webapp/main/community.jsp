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
            <!-- 乞喰 乞喰 庭天 析走 -->
        <button class="main_title" >乞喰 乞喰 庭天 析走</a>
                <span class="main_title_num">123,456
                <span class="cooking_daily">></span>
            </span>
        </button>
            <!-- 姥偽廃 析走 溌昔馬奄 戚乞銅嬬 -->
        <div class="dibs_list"></div>
            
            <!-- 庭天析走 戚耕走1 -->
        <div class="img_box1" >
            <a href="#" style="text-decoration-line: none">
            	<img src="${pageContext.request.contextPath}/static/images/1.png">
            </a>
        </div>
            
            <!-- 庭天析走 戚耕走級 -->
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

            <!-- 乞砧左奄 酵什 -->
        <div class="list_box">
            <button class="list_box_content">乞砧 左奄</button>
        </div>

            <!-- 拙失馬奄 酵什 -->
        <div class="insert_box">
            <button class="insert_box_content">拙失 馬奄</button>
        </div>
        <!-- 昔巴欠情辞 廿-->
        <div class="influencers_box">
            <div class="minigame_box">
                <button class="minigame_content">
                    	耕艦惟績 荘奄奄
                </button>
            </div>

            <div class="influencers_content1">蓄探 昔巴欠情辞</div>
            <div class="influencers_content2">希 弦精 昔巴欠情辞 独稽酔 ></div>
            <!--昔巴欠情辞 酵什-->
            <div class="influencers1_box">
                <!-- 昔巴欠情辞 唖 戚耕走 貢 是拭 朝錘闘-->
                <div class="influencers1_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+100</span>
                    <span class="influencers_list_nickname">けけけ</span>
                </div>
                <div class="influencers2_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+200</span>
                    <span class="influencers_list_nickname">けけけ</span>
                </div>
                <div class="influencers3_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+300</span>
                    <span class="influencers_list_nickname">けけけ</span>
                </div>
                <div class="influencers4_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+400</span>
                    <span class="influencers_list_nickname">けけけ</span>
                </div>
                <div class="influencers5_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+500</span>
                    <span class="influencers_list_nickname">けけけ</span>
                </div>
                <div class="influencers6_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+600</span>
                    <span class="influencers_list_nickname">けけけ</span>
                </div>
                <div class="influencers7_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+700</span>
                    <span class="influencers_list_nickname">けけけ</span>
                </div>
                <!--馬舘 獄動 廿 (昔巴欠情辞 姥井, 択廃 析走)-->
                <div class="recommand_influencers_list">
                    <!--択廃 析走 酵什-->
                    <div class="recommand_influencers_box" onclick="communitylist.jsp">
                        <!--択廃 析走 鎧遂-->
                        <span class="recommand_influencers_content">
                            	択廃 析走 溌昔馬奄
                        </span>
                    </div>
                    <!-- 希 弦精 昔巴欠情辞 姥井馬奄 酵什-->
                    <div class="influencers_list_box" onclick="influencerlist.jsp">
                        <!-- 希 弦精 昔巴欠情辞 姥井馬奄 鎧遂-->
                        <span class="influencers_list_content">
                            	希 弦精 昔巴欠情辞 姥井馬奄
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