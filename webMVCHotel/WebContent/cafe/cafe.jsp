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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/cafe.css"/>
</head>
<body>
<div id="titThumb"></div>
	<div id="mainDiv">
		<div id="menuTit">
			<div id="route">
				<img src="../img/home_icon(black).png" width="15px" height="15px" />
				<div id="routeTxt">&nbsp;&nbsp;&gt;&nbsp;&nbsp;CAFE</div>
			</div>
			<div id="titTxt">
				<h2>C A F E</h2>
				<p>
					ㅡ<br/>바다를 바라보며 차 한 잔의 여유를 즐기세요.
				</p>
			</div>
		</div>
		<!-- 메뉴 타이틀 -->
		<div id="contentThumb">
			<div class="scale">
				<ul class="bxslider">
					<li><img src="../img/cafe01.jpg" alt="" width="1280px"
						height="614px" /></li>
					<li><img src="../img/cafe02.PNG" alt="" width="1280px"
						height="614px" /></li>
				</ul>

			</div>
		</div>
	<div id="contentDiv">
		<div id="contentTxt">
			<div id="resInfo">
				<h5>개방시간</h5>
				<p>08:30 ~ 23:00</p>
				<h5>영업시간</h5>
				<p>
					금요일 - 13:00 ~ 22:00<br/>토요일 - 09:00 ~ 22:00<br/>일요일 - 09:00 ~ 22:00</br>*호텔 사정상 운영이 변경될 수 있습니다.
				</p>
				
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