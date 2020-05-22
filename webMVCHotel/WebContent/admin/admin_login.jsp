<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="${HOME}/css/login.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<!-- 컨텐츠 -->
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