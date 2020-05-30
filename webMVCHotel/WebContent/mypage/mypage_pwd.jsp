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
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="../js/header_footer.js"></script>
<script src="../jquery.bxslider.min.js"></script>
</head>
<body>
<section id="menuText">
	<!-- my page메인화면 -->
	<div id="menuTop">
		<span>
			<a href="#">
				<b>비밀번호 변경</b>
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
		<div id="profileLine">비밀번호 변경</div>
	</div>
	<div id="borderText">
		회원님의 비밀번호를 변경 하실수 있습니다.
	</div>
	<!-- 프로필 수정 -->
	<div id="buttonDiv">
		<div id="buttonText">
		<div><em><b><a href="<%=request.getContextPath()%>/mypage/mypage_main.do"><span style="color:black">마이 페이지</span></a></b></em></span></div><br/>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_remake.do"><span class="span_font">프로필 수정</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_reservation.do"><span class="span_font">예약확인/취소</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_pwd.do"><span class="span_font">비밀번호 변경</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/question/questionList.do"><span class="span_font">문의내역</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_withdrawal.do"><span class="span_font">회원탈퇴</span></a></button></div>
		</div>
	
	
	<!-- 기본정보 목록 -->
		<form method="post" action="<%=request.getContextPath()%>/mypage/mypage_pwdOk.do">
			<div id="idPwd">
			<div class="pwd">현재 비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="user_pwd" id="user_pwd" value="${vo.user_pwd }"/></div>
			<div class="pwd">새 비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="user_pwd"/> &nbsp;0~20자 이내 영문/숫자 조합</div>
			<div class="pwd">새 비밀번호 확인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="user_pwd"/></div>
			
			<div class="buttonPwd"><button type="submit">비밀번호변경</button></div>
			<div id="buttonPwd" class="buttonPwd"><button type="reset">취소</button></div>
			</div>
		</form>
		</div>
</section>
</body>
</html>