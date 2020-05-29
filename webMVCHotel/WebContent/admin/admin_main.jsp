<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="${HOME}/css/admin.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="${HOME}/js/admin.js"></script>
</head>
<body>
<div id="mainDiv">
	<div id="mainTitle">관리자 페이지</div>
		<ul id="menu">
			<li><a href="#">예약 관리</a></li>
			<li>호텔 관리</a>
				<!-- 서브메뉴 -->
				<ul>
					<li><a href="${HOME}/admin/roomManage.do">객실 관리</a>
					<li><a href="${HOME}/admin/bedManage.do">침대 관리</a></li>
					<li><a href="${HOME}/admin/rTypeManage.do">객실 타입 관리</a></li>
					<li><a href="#">요금관리</a></li>
					<li><a href="${HOME}/admin/eventManage.do">이벤트관리</a></li>
				</ul>
			</li>
			
			<li><a href="#">회원 관리</a></li>
			<li><a href="#">문의내역</a></li>
			<li><a href="#">매출 관리</a></li>
		</ul>
	<div id="content">
		<img src="${HOME}/img/s1.jpg"/>
	</div>
</div>
</body>
</html>