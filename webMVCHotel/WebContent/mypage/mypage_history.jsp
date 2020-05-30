<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewpory" content="width=device-width, inital-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="../jquery.bxslider.min.css" type="text/css"/>
<link rel="stylesheet" href="../css/header.css" type="text/css"/>
<link rel="stylesheet" href="../css/mypage.css" type="text/css"/>
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="../js/header_footer.js"></script>
<script src="<%=request.getContextPath()%>/js/mypage.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.bxslider.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-ui.min.js"></script>
<style>
	#boardList, #boardList>li{margin:0;padding:0px;list-style-type:none}
	#boardList>li{float:left;width:14%;height:40px;line-height:40px;
				  border-bottom:1px solid gray}
			  
	#boardList>li:nth-of-type(4n-2){width:50%}
	
	/*		줄바꾸기 취소			 범위보다 크면 숨기기	넘치는 문자가 있을떄 ..으로 표시*/
	.wordCut{white-space:nowrap; overflow:hidden; text-overflow:ellipsis}			  
</style>
<script>
$(function(){
	$("#boardFrm").submit(function(){
		if($(".cal1").val()==""){
			alert("날짜를 입력하세요");
			return false;
		}
		
	});

});
</script>

</head>
<body>
<section id="menuText">
	<!-- 예약 확인 취소-->
	<div id="menuTop">
		<span>
			<a href="#">
				<b>문의내역</b>
			</a> 
		</span>
		<span>></span>
		<span style="color:black">
			<a href="#">
			my page</a>
		</span>
		<span>></span>
		<span style="color:black">
			<a href="#">홈</a>
		</span>
	</div>
	<div id="profile">
		<div id="profileLine"><h2>문의내역</h2></div>
	</div>
	<div id="borderText">
		문의하신 내역과 답변을 보실수 있습니다.
	</div>
	<!-- 메뉴 -->
	
	<div id="buttonDiv">
	<div id="buttonText">
		<div><em><b><a href="<%=request.getContextPath()%>/mypage/mypage_main.do"><span style="color:black">마이 페이지</span></a></b></em></span></div><br/>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_remake.do"><span class="span_font">프로필 수정</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_reservation.do"><span class="span_font">예약확인/취소</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_pwd.do"><span class="span_font">비밀번호 변경</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/question/questionList.do"><span class="span_font">문의내역</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_withdrawal.do"><span class="span_font">회원탈퇴</span></a></button></div>
	</div>
	<!-- 객실/패키지 예약 -->
	<div id="reservation">
		<form method="post" id="boardFrm" >			
		기간조회&nbsp;&nbsp;<button class="button">전체</button>&nbsp;<input type="text" class="cal1" name="cal1"> ~ <input type="text" class="cal1" name="cal1">  <button type="submit" class="button" name="조회" value="조회">조회</button>   <button class="button"><a href="<%=request.getContextPath()%>/question/questionList.do">목록</a></button>  
		</form>
	
		

	
	</div>
	<!-- 예약 목록 -->
	<div id="reservationList">
		<div><em>문의내역</em></div>
		<div id="boder"></div>
		<div>Total : 1</div>
		<div id="checkText">
			<div id="textTop">
			<b>NO 호텔 문의유형 제목 문의일자 답변여부</b>
			</div>
			
		</div>
		<div id="checkList"> 
			<ul id="boardList">
			<li style="background:#F2F2F2"><b>번호</b></li>
			<li style="background:#F2F2F2"><b>제목</b></li>
			<li style="background:#F2F2F2"><b>글쓴이</b></li>
			<li style="background:#F2F2F2"><b>날짜</b></li>	
			
			<c:forEach var="vo" items="${lst}">
				<li>${vo.no}</li>
				<c:if test="${vo.publicPrivate=='Y' }">
					<li class="wordCut">
					<a href="<%=request.getContextPath()%>/question/view.do?no=${vo.no}&pageNum=${pageVO.pageNum}<c:if test="${pageVO.searchKey!=null && pageVO.searchWord!=null}">&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>">${vo.subject}</a>
					</li>
				</c:if>
				<c:if test="${vo.publicPrivate=='N' }">
					<!-- 아이디값과 일치하면 들어가기 -->
						<c:if test="${vo.user_id!=user_id}">
							<li>${vo.subject }<i class="xi-lock"></i></li>
						</c:if>
						<c:if test="${vo.user_id==user_id}">
							<li><a href="<%=request.getContextPath()%>/question/view.do?no=${vo.no}&pageNum=${pageVO.pageNum}<c:if test="${pageVO.searchKey!=null && pageVO.searchWord!=null}">&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>">${vo.subject}</a></li>
						</c:if>
				</c:if>	
				<li>${vo.user_id}</li>		
				<li>${vo.writeDate}</li>
				
			</c:forEach>		
		</ul>
		</div>
	</div>
</div>	
</div>
	

</section>
</body>
</html>