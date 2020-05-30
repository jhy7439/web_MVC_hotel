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
<link href="../api/bxslider/jquery.bxslider.css" rel="stylesheet"/> 
<script src="../api/bxslider/jquery.bxslider.js"></script>
<script src="<%=request.getContextPath()%>/js/restaurant.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/restaurant.css"/>
</head>
<body>
<div id="titThumb"></div>
	<div id="mainDiv">
		<div id="menuTit">
			<div id="route">
				<img src="../img/home_icon(black).png" width="15px" height="15px" />
				<div id="routeTxt">&nbsp;&nbsp;&gt;&nbsp;&nbsp;RESTAURANT</div>
			</div>
			<div id="titTxt">
				<h2>R E S T A U R A N T</h2>
				<p>
					ㅡ<br />프리미엄 라이브 뷔페 오션 갤리에서 따뜻하고 정갈한 식사와 함께 여행의 즐거움을 함께하세요.
				</p>
			</div>
		</div>
		<!-- 메뉴 타이틀 -->
		<div id="contentThumb">
			<div>
				<ul class="bxslider">
					<li><img src="../img/restaurant01.jpg" alt="" width="1280px"
						height="614px" /></li>
					<li><img src="../img/restaurant02.jpg" alt="" width="1280px"
						height="614px" /></li>
				</ul>

			</div>
		</div>
	<div id="contentDiv">
		<div id="contentTxt">
			<div id="resInfo">
				<h5>운영시간</h5>
				<p>
					아침뷔페<br />07:00 ~ 10:30<br />
					<br />저녁 특선 뷔페<br />17:30 ~ 21:00
				</p>
				<h5>가격</h5>
				<h4>주중 아침 : 성인 KRW 28,000 / 소인 KRW 14,000</h4>
				<h4>토, 일요일 및 특정일 아침 : 성인 KRW 32,000 / 소인 KRW 16,000</h4>
				<br />
				<h4>토요일 및 특정일 저녁 : 성인 KRW 55,000 / 소인 KRW 27,500</h4>
				<p></p>
				<h5>기타사항</h5>
				<h3>공통사항 : 36개월 미만 무료</h3>
				<h3>투숙객 및 지역주민 할인 : 10% 할인</h3>
				<h3>VAT 포함 금액</h3>
			</div>
		</div>
	</div>
	<!-- 가운데 내용 -->
	<div id="banner">
		<div id="leftBanner">
			<div class="scale">
				<img src="../img/restaurant01.jpg" />
			</div>
			<div id="leftTxt">RESTAURANT</div>
		</div>
		<div id="rightBanner">
			<div class="scale">
				<img src="../img/cafe.PNG" />
			</div>
			<div id="rightTxt">CAFE</div>
		</div>
	</div>
	</div>
	<!-- 메인 Div -->
</body>
</html>