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
<section>
<div class="container">
<div><h2>객실 등록 페이지</h2></div>
<hr/>
<form method="post" id="roomFrm" action="<%=ctx%>/admin/roomAddOk.do">
	<input type="hidden" name="room_status" value="Y"/>
	<div>
		객실호수 : <input type="text" name="room_num" id="room_num"/>
	</div>
	<hr/>
	<div>
		객실이름 : <input type="text" name="room_name" id="room_name"/>
	</div>
	<hr/>
	<div>
		객실가격 : <input type="text" name="room_price" id="price" value="0" style="text-align:right"/>
	</div>
	<hr/>
	<div>
		객실최대인원(어른) : <input type="text" name="max_adult" id="max_adult"/>
		<hr/>
		객실최대인원(아이) : <input type="text" name="max_child" id="max_child"/>
	</div>
	<hr/>
	<div>
		객실타입 : <select name="room_type">
					<option selected>객실을 선택하세요.</option>
					<c:forEach var="tpyeVO" items="${typeList}">
						<option value="${tpyeVO.room_type_code}">${tpyeVO.room_type}</option>
					</c:forEach>
				</select>
	</div>
	<hr/>
	<div>
		침대타입 : <select name="bed">
					<option selected>침대를 선택하세요.</option>
					<c:forEach var="bedVO" items="${bedList}">
						<option value="${bedVO.bed_code }">${bedVO.bed_type}</option>
					</c:forEach>
				</select>
	</div>
	<hr/>
	<div class="box">
		<input type="submit" value="객실등록"/>
		<input type="reset" value="Reset"/>
	</div>
</form>
</div>
</section>
</body>
</html>