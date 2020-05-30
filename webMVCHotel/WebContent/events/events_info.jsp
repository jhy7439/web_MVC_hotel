<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/js/events.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/events_info.css"/>
</head>
<body>
<div id="mainDiv">
		<div id="menuTit">
			<div id="route">
			<img src="../img/home_icon(black).png" width="15px" height="15px"/>&nbsp;&nbsp;&gt;&nbsp;&nbsp;EVENTS
			</div>
			<div id="titTxt">
				<h2>Cheer You Up 패키지 시즌 3</h2>
			</div>
		</div><!-- 메뉴 타이틀 -->
		<div id="contentDiv">
			<div id="content">
				<div id="snsShare">
					<img src="../img/kakaotalk.png"/>
					<img src="../img/twitter.png"/>
					<img src="../img/facebook.png"/>
				</div>
				<div>
				<img src="../img/titlesample.jpg"/>
				</div>
				<div id="simpleTxt">
				 <div id="leftTxt">
				 	<h4>Cheer You Up 패키지 시즌 3</h4>
				 	<p>ㅡ<br/>
				 	호텔의 다채로운 서비스를 합리적인 가격으로 만나는 Cheer You Up 패키지의 세 번째 시즌!
				 	가족 또는 친구들과 봄날의 추억을 만들어보십시오. 
				 	셰프가 정성껏 준비한 요리를 언제 어디서나 즐길 수 있는 To-Go 박스, 
				 	얼리 체크인과 가까운 거리에서 알차게 이용 가능한 혜택까지 모두 담았습니다.
				 	</p>
				 	<div id="term"><p>◆</p>&nbsp;기간</div><div id="termInfo">2020.04.23 ~ 2020.05.01</div>
				 	<div id="room"><p>◆</p>&nbsp;객실타입</div><div id="roomInfo">스탠다드 룸, 디럭스 룸, 스위트 룸</div>
				 </div>
				 <div id="rightTxt">
				 	<p>예약 및 이용문의</p>
				 	<div id="tel">전화</div><div id="telInfo">+82 02-707-1480</div>
				 	<div id="email">이메일</div><div id="emailInfo">reservation@grandcrown.co.kr</div>
				 	<button id="bookBtn">BOOK NOW</button>
				 </div>
				</div>
				<div id="contentTxt">
					<div id="event">
						<p>
						이탈리아의 특색있는 소규모 레스토랑을 의미하는 트라토리아(trattoria)에서 영감을 받은 메뉴, '피아토 우니코'를 선보입니다. 
						매주 월요일 점심과 저녁, 3만원이라는 합리적인 가격으로 만족스러운 플레이트를 완성해 보십시오. 
						소믈리에가 엄선한 추천 와인도 함께 즐기실 수 있습니다. 
						</p>
						<h5>날짜</h5>
						<p>2020. 3. 23 ~ 2020. 6. 29<br/>*매주 월요일에만 이용이 가능합니다.</p>
						<h5>가격</h5>
						<h4>점심 또는 저녁 1인  KRW 30,000</h4>
						<h6>(봉사료 및 세금 포함)</h6><br/>
						<h4>후식 & 커피 추가 시 KRW 10,000</h4>
						<h4>페어링 와인 1병 당 KRW 30,000</h4>
						<h6>(봉사료 및 세금 포함)</h6>
						<p></p>
						<h5>메뉴</h5>
						<h3>*샐러드*</h3>
						<h3>믹스 샐러드 or 시저 샐러드 or 나주배, 펜넬, 호두 샐러드 중 택 1</h3><br/>
						<h3>*메인 디쉬*</h3>
						<h3>치킨 카차토레 or 홈메이드 미트볼 or 미국산 쇠고기 안창살 구이(10,000원 추가 시) or 미국산 쇠고기 부채살 구이 or 오늘의 생선 중 택 1</h3>
					</div>
				</div>
			</div>
		</div><!-- 가운데 내용 -->
		<div id="hr"></div>
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