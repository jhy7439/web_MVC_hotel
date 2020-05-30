<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="${HOME}/css/admin.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<style>
	#room_list{width:100%}
	#roomList, #roomList>li{margin:0; padding:0; list-style-type:none}
	#roomList>li{float:left; width:10%; height:50px; line-height:50px; text-align:center; border-bottom:1px solid gray}
	#roomList>li:nth-of-type(6n-5){width:5%; text-align:left}
	#roomList>li:nth-of-type(6n-4){width:10%}
	#roomList>li:nth-of-type(6n-3){width:15%;}
	#roomList>li:nth-of-type(6n-2){width:30%;}
	#roomList>li:nth-of-type(6n-1){text-align:center}
	#roomList>li:nth-of-type(6n){width:30%}

	#eventAdd{width:100%; padding-top:50px; float:left}
				/* 줄바꾸기 취소*/	 /*범위보다 크면 숨기기*/ /*넘치는 문자가 있을 때 ...으로 표시*/
	.wordCut{white-space:nowrap; overflow:hidden; text-overflow:ellipsis}
	.container{overflow:hidden; height:auto}
</style>
</head>
<body>
<section>
<div  class="container">
	<div><h2>이벤트 관리 페이지</h2></div>
	<div>이벤트 리스트</div>
	<div id="room_list">
		<ul id="roomList">
			<li>이벤트 번호</li>
			<li>이벤트 타입</li>
			<li>이벤트 이름</li>
			<li class="wordCut">메인 이벤트 내용</li>
			<li>적용</li>
			<li>기간</li>
			<c:forEach var="vo" items="${list}">
				<li>${vo.room_event_code}</li>
				<li>${vo.event_type} 타입</li>
				<li><a href="<%=request.getContextPath()%>/admin/eventView.do?room_event_code=${vo.room_event_code}">${vo.room_event_name}</a></li>
				<li class="wordCut">${vo.dsp}</li>
				<li>${vo.action}</li>
				<li>${vo.event_start_date}~${vo.event_end_date}</li>
			</c:forEach>
		</ul>
	</div>
		<div id="eventAdd">
			<!-- 이벤트 등록 -->
			<a href="${HOME}/admin/eventAdd.do">이벤트 등록하기</a>
		</div>
</div>
</section>
</body>
</html>