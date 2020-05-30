<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="${HOME}/css/admin.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="${HOME}/js/admin.js"></script>
</head>
<body>
<section>
<div class="container">
<div><h2>객실 타입 관리페이지</h2></div>
	<div class="btn">
		<a href="${HOME}/admin/main.do">메인으로 이동</a>
	</div>
	<div class="btn">
		<a href="${HOME}/admin/rTypeAdd.do">객실타입등록</a>
	</div>
	
	<div id="listTitle">객실타입 리스트</div>
	<ul id="typeList">
		<li>타입코드</li>
		<li>메인이미지</li>
		<li>객실타입</li>
		<li>객실위치</li>
		<li>설명</li>
		<li>이벤트적용</li>
		<c:forEach var="rtVo" items="${lst}">
			<li>${rtVo.room_type_code}</li>
			<li><a href="<%=ctx%>/admin/rTypeView.do?room_type_code=${rtVo.room_type_code}"><img src="<%=ctx%>/upload/${rtVo.roomImgList[0]}"></a></li>
			<li>${rtVo.room_type}</li>
			<li>${rtVo.room_loc}</li>
			<li>${rtVo.mainCont}</li>
			<li>이벤트적용</li>
		</c:forEach>	
	</ul>
</div>
</section>
</body>
</html>