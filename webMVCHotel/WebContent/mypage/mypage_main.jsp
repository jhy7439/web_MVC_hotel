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
			<a href="profile_remake.html">
				<b>프로필 수정</b>
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
		<div id="profileLine">프로필 수정</div>
	</div>
	<div id="borderText">
		안전하게 정보를 보호하기 위해 비밀번호를 다시 한번 입력해주세요.
	</div>
	<!-- 프로필 수정 -->
	<div id="buttonDiv">
	<div id="buttonText">
		<div><em><b><a href="mypage_main.jsp"><span style="color:black">마이 페이지</span></a></b></em></span></div><br/>
		<div><button><a href="#"><span class="span_font">프로필 수정</span></a></button></div>
		<div><button><a href="#"><span class="span_font">예약확인/취소</span></a></button></div>
		<div><button><a href="#"><span class="span_font">비밀번호 변경</span></a></button></div>
		<div><button><a href="#"><span class="span_font">문의내역</span></a></button></div>
		<div><button><a href="#"><span class="span_font">회원탈퇴</span></a></button></div>
	</div>
	
	<form method="post" id="user_logFrm" action="<%=request.getContextPath() %>/mypage/mypage_mainOk.do">
		<div id="idPwd">
			<div id="id">
			<span style="color:#6E6E6E">아이디</span>
			<input type="text" name="user_id" id="user_id" value="${vo.user_id}">
		</div>	
		<div id="pwd">	
			<span style="color:#6E6E6E">비밀번호</span>
			<input type="text"  name="user_pwd" id="user_pwd">
		
		</div>
		<div class="buttonPwd"><button type="submit">확인</button></div>
		</div>
	</form>	
	</div>
</section>	

</body>
</html>