<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/login/script.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login/login.css" type="text/css"/>
</head>
<body>
<section id="section">
<div id="content">
	<div id="logo">
		<h1>로그인</h1>
	</div>
	<div>
		<div id="LogFrm">
			<input type="radio" name="cho" value="mem" checked/> 회원
			<input type="radio" name="cho" value="nonMem"/> 비회원(예약확인)
			<!-- 회원 -->
			<div id='member'>
				<div id="f1">
					<div>아이디</div>
					<input type="text" name="userid" id="userid" placeholder="아이디 입력"/>
					<div>비밀번호</div>
					<input type="password" name="userpwd" id="userpwd" placeholder="비밀번호 입력"/>
				</div>
				<div id="f2">
					<input type="submit" value="로그인"/>
				</div>
				<div id="f3">
					<div id="f4">
						<a href="#">회원가입 |</a>
						<a href="find_id_pwd.html">아이디 찾기</a>
						<a href="find_id_pwd.html">비밀번호 찾기</a>
					</div>
					<div id="f5">
						<div id="f6">
							<a href="#" id="n"><img src="../../img/join_certified/n.png"/> 네이버 로그인</a>	
						</div>
						<div id="f7">
							<a href="#" id="k"><img src="../../img/join_certified/k.png"/>카카오톡 로그인</a>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div id="nonMember">
				<div id="f1">
					<div>예약번호</div>
					<input type="text" name="reservationNumber" id="reservationNumber" placeholder="예약번호 입력"/>
					<div>이름</div>
					<input type="text" name="username" id="username" placeholder="이름 입력"/>
				</div>
				<div id="f2">
					<input type="submit" value="예약조회"/>
				</div>
				<div id="f3">
				
				</div>
			</div>
		</div>
	</div>
</div>
</section>
</body>
</html>