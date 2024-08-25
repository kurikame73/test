<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/liststyle.css" />
</head>
<body>
<!-- haeder -->
<jsp:include page="header.jsp" />
<section>
    <form class="container">
    	<!-- 검색 -->
		<div class="search_bar">
			<input class="saerch_bar_content" type="text" placeholder="ex) 고망고 망고빙수">
				<img src="${pageContext.request.contextPath}/static/images/search-icon_png">
			</input>
		</div>
        <!-- 모락모락 쿠킹일지 -->
        <div class="community_content_box">
            <div class="community_contentbox_content1">모락모락 쿠킹일지</div>
            <div class="community_contentbox_content2">오늘 새로 올라온 일지는 45개!</div>
        </div>

        <!-- 핫 메인 박스 --> 
            <div class="community_mainlist1_box">
            	
            </div>
            <div class="community_mainlist2_box">
				
            </div>
            
            <div>
            	<select class="select_sort">
            		<option value="">최신순</option>
            		<option value="">조회순</option>
            		<option value="">찜순</option>
            		<option value="">좋아요순</option>
            	</select>
            </div>
			
        <!-- 리스트 항목들 -->
        <div class="community_list_box">
            <div class="community_list_box1">
                <div class="community_list1_image" id="opt1">
                	
                </div>
                <div class="community_list2_image" id="opt1">
                	
                </div>
                <div class="community_list3_image" id="opt1">
                	
                </div>
                <div class="community_list4_image" id="opt1">
                	
                </div>
                
                <div class="community_list5_image" id="opt2">
                	
                </div>
                <div class="community_list6_image" id="opt2">
                	
                </div>
                <div class="community_list7_image" id="opt2">
                	
                </div>
                <div class="community_list8_image" id="opt2">
                	
                </div>

                <div class="community_list9_image" id="opt3">
                	
                </div>
                <div class="community_list10_image" id="opt3">
                	
                </div>
                <div class="community_list11_image" id="opt3">
                	
                </div>
                <div class="community_list12_image" id="opt3">
                	
                </div>
            </div>
        </div>
        <table>
            <tr>
                <td class = "list_paging_table"><<  <   1 2 3 4 5   >  >></td>
                <td>
                    <div class="community_write">
                        <div class="community_write_box">
                            <input type="submit" class="community_write_content" value="글쓰기">
                            <a href="insert.jsp" style="text-decoration-line: none"></a>
						</div>
					</div>
                </td>
            </tr>
        </table>
    </form>
</section>
<footer>
<!-- footer -->
<jsp:include page="footer.jsp" />
</footer>
</body>
</html>