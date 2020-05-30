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
	<!-- my page메인화면 -->
	<div id="menuTop">
		<span>
			<a href="#">
				<b>회원탈퇴</b>
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
		<div id="profileLine">회원탈퇴</div>
	</div>
	<div id="borderText">
		회원탈퇴를 하시면 정보는 모두 삭제되며,해당 회원으로 이용 불가 합니다.
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
	
	<div id="idPwd">
		<div id="id">
			<span>아이디</span>
			<input type="text" value="dlalsgh242">
		</div>	
		<div id="pwd">	
			<span>비밀번호</span>
			<input type="text">
		</div>
		<div class="buttonPwd">
			<button>회원탈퇴</button>
		</div>
		
	</div>
		
	</div>
</section>

</body>
</html>