<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewpory" content="width=device-width, inital-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="../jquery.bxslider.min.css" type="text/css"/>
<link rel="stylesheet" href="../css/header.css" type="text/css"/>
<link rel="stylesheet" href="../css/mypage.css" type="text/css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="../js/header_footer.js"></script>
<script src="../jquery.bxslider.min.js"></script>
</head>
<body>
<section id="menuText">
	<!-- 예약 확인 취소-->
	<div id="menuTop">
		<span>
			<a href="#">
				<b>예약확인/취소</b>
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
		<div id="profileLine">예약확인/취소</div>
	</div>
	<div id="borderText">
		객실 및 패키지 예약 내역을 확인하실 수 있습니다.
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
		기간조회&nbsp;&nbsp;<button class="button">전체</button>&nbsp;<input type="text" class="cal" name="cal" value=""> ~ <input type="text" class="cal" name="cal" value="">  <button class="button">조회</button> 
	</div>
	<!-- 예약 목록 -->
	<div id="reservationList">
		<div><em>객실 / 패키지예약</em></div>
		<div id="boder"></div>
		<div>Total : 1</div>
		<div id="checkText">
			<div id="textTop">
			<b>예약번호 호텔 객실/패키지 객실수 체크인/체크아웃 예약</b>
			</div>
		</div>
		<div id="checkList"><div id="textBottom">&nbsp;&nbsp;14643654 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;신라스테이&nbsp;광화문 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Standard/City/Double 
								 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 
								 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2020-05-13~2020-05-15 
								 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RESERVED </div>
						 
		</div>
	</div>	
	</div>
	
<!-- <div id="dialogOpen"><button class="btn"><img src="../img/room/ca.jpg"></button></div>
<div id="dialogOpen1"><button class="btn1"><img src="../img/room/ca.jpg"></button></div> -->
<hr/>



	
</section>
</body>
</html>