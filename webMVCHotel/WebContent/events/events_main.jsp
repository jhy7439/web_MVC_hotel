<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 메인 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/js/events.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/events_main.css"/>
<script>
console.log(${vo.event_img});
</script>
</head>
<body>
<div id="titThumb"></div>
	<div id="mainDiv">
		<div id="menuTit">
			<div id="route">
			<img src="../img/home_icon(black).png" width="15px" height="15px"/>
			<div id="routeTxt">&nbsp;&nbsp;&gt;&nbsp;&nbsp;EVENTS</div>
			</div>
			<div id="titTxt">
				<h2>E V E N T S</h2>
				<p>ㅡ<br/>휴양과 다이닝, 문화생활이 결합된 다채로운 숙박 패키지로 도심 속 색다른 즐거움이 당신을 찾아옵니다.<br/>특별한 혜택으로 가족과 친구, 연인, 때로는 나만을 위한 선물 같은 하루를 만나보시기 바랍니다.</p>
			</div>
		</div><!-- 메뉴 타이틀 -->
		<div id="content">
			<div id="eventlist">
				
				<c:forEach var="vo" items="${lst}">
					<div id="listElement">
						<a href="<%=request.getContextPath()%>/events/eventInfo.do">
						<div id="img"><img src="<%=request.getContextPath()%>/upload/${vo.event_img}"/></div>
						<div id="imgTxt">
							<p><br/>${vo.room_event_name}</p>
							<p>${vo.event_type} 타입</p>
							<p>${vo.dsp}</p>
							<p>${vo.event_start_date}~${vo.event_end_date}</p>
						</div></a>
					</div>
				</c:forEach>
				
			</div>
			<div id=paging>
				<div id="button">
					<!-- 페이징 -->
					<c:if test="${pageVO.pageNum==1}">&lt;</c:if>
					<!-- 현재 페이지가 1 페이지 일 때 -->
					<c:if test="${pageVO.pageNum>1}">
						<a href="<%=request.getContextPath()%>/events/eventsList.do?pageNum=${pageVO.pageNum-1}">&lt;</a>
					</c:if>
					<c:forEach var="i" begin="${pageVO.startPage}" end="${pageVO.startPage+pageVO.onePageCount-1}">
						<c:if test="${i <= pageVO.totalPage}">
							<a href="<%=request.getContextPath()%>/events/eventsList.do?pageNum=${i}"<c:if test="${i == pageVO.pageNum}">style='border:1px solid red'</c:if>>${i}</a>
						</c:if>
					</c:forEach>
					<!-- 현재 페이지가 마지막일 때 -->
					<c:if test="${pageVO.pageNum==pageVO.totalPage}">&gt;</c:if>
					<c:if test="${pageVO.pageNum<pageVO.totalPage}">
						<a href="<%=request.getContextPath()%>/events/eventsList.do?pageNum=${pageVO.pageNum+1}">&gt;</a>
					</c:if>
				</div>
			</div>
		</div><!-- 가운데 내용 -->
		<div id="banner">
			<div id="bannerTxt">
				<p>Find out more EVENTS</p>
				<p>@ Grand Crown Hotel</p>
			</div>
			<button id="moreBtn">VIEW MORE</button>
		</div><!-- 배너 -->
	</div><!-- 메인 Div -->
</body>
</html>