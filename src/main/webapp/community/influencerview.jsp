<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/influviewstyle.css" />
</head>
<body>
<!-- header -->
<header>
<jsp:include page="/main/header.jsp" />
</header>
<section>
<form class="container">
	<div class="view_mypagebox1">
		<div class="view_main_title">혜디니’s 쿠킹 일지</div>
		<div class="view_main_image_form">
			<div class="view_main_image_box">
				<div class="view_mypage_image_box">
					<img src="${pageContext.request.contextPath}/static/images/person1.png">
					<span>nickname</span>
				</div>
			</div>
		</div>
	</div>
	<div class="view_main_content"> 총 작성 쿠킹일지 : 개
	</div>
	<select class="select_sort">
		<option value="">최신순</option>
		<option value="">조회순</option>
		<option value="">찜순</option>
		<option value="">좋아요순</option>
	</select>
	<div class="community_list_box">
		<div class="community_list_box1">
			<div class="community_list1_image" id="opt1">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/2.png"> --%>
			</div>
			<div class="community_list2_image" id="opt1">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/2.png"> --%>
			</div>
			<div class="community_list3_image" id="opt1">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/2.png"> --%>
			</div>
			<div class="community_list4_image" id="opt1">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/2.png"> --%>
			</div>
                
			<div class="community_list5_image" id="opt2">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/3.png"> --%>
			</div>
			<div class="community_list6_image" id="opt2">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/3.png"> --%>
			</div>
			<div class="community_list7_image" id="opt2">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/3.png"> --%>
			</div>
			<div class="community_list8_image" id="opt2">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/3.png"> --%>
			</div>

			<div class="community_list9_image" id="opt3">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/4.png"> --%>
			</div>
			<div class="community_list10_image" id="opt3">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/4.png"> --%>
			</div>
			<div class="community_list11_image" id="opt3">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/4.png"> --%>
			</div>
			<div class="community_list12_image" id="opt3">
                	<%-- <img src="${pageContext.request.contextPath}/static/images/4.png"> --%>
			</div>
		</div>
	</div>
	<table>
		<tr>
			<td class = "list_paging_table"> <<  <   1 2 3 4 5   >  >></td>
		</tr>
	</table>
</form>
</section>
<!-- footer -->
<footer>
<jsp:include page="/main/footer.jsp" />
</footer>
</body>
</html>