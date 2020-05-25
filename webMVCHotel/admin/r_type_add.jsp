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
<div><h2>객실 타입 등록 페이지</h2></div>
<form method="post" id="rTypeFrm" name="rTypeFrm" action="<%=ctx%>/admin/rTypeAddOk.do" enctype="multipart/form-data">
	<div>객실타입 : <input type="text" name="room_type" id="room_type" maxlength="30"/></div>
	<hr/>
	<div>위치 : <input type="text" name="room_location" id="room_location"/></div>
	<hr/>
	<div>침대 : <select>
				<option></option>
				</select>
	</div>
	<hr/>
	<div>크기 : <input type="text" name="room_size" id="room_size"/></div>
	<hr/>
	<div>객실이용 : </div>
	<hr/>
	<div>부대시설 : </div>
	<hr/>
	<div>
		<h4>메인 이미지</h4>
		<p>이미지 업로드</p>
		<input type="file" id="sub_img">
	</div>
	<div>
		<div class ="img_wrap">
			<img id="main_img"/>
		</div>
	</div>
	<hr/>
	<div>
		<h4>서브 이미지</h4>
		<p>이미지 업로드</p>
		<input type="file" id="sub_img">
	</div>
	<div>
		<div id="sub_imgs" class ="img_wrap">
			
		</div>
	</div>
</form>
</div>
</section>
</body>
</html>