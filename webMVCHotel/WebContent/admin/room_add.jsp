<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<section>
<div class="container">
<div><h2>객실 등록 페이지</h2></div>
<form>
	<div>
		객실호수 : <input type="text" name="room_num" id="room_num">
	</div>
	<div>
		객실상태 : <select>
			</select>
	</div>
	<div>
		객실최대인원(어른) : <input type="text" name="max_adult" id="max_adult"/>
		객실최대인원(아이) : <input type="text" name="max_child" id="max_child"/>
	</div>
	<div>
		객실타입 : <select>
			</select>
	</div>
	<div>
		설명 : <textarea></textarea>
	</div>
	<select name="bed_type" id="bed_type">
				    <option value="">침대선택</option>
				    <option value="twin" selected="selected">Twin Bed</option>
				    <option value="double">Double Bed</option>
				    <option value="family">Family Bed</option>
				</select>
</form>
</div>
</section>
</body>
</html>