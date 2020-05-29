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
<script src="${HOME}/js/admin.js"></script>
</head>
<body>
<div class="container">
<div><h2>이벤트 수정 페이지</h2></div>
	<form method="post" id="eventFrm" action="${HOME}/admin/eventAddOk.do" enctype="multipart/form-data">
	<input type="hidden" name="no" value="${vo.room_event_code}"/>
	이벤트 타입 : 
	<select name="eventType" value="${vo.event_type}">
		<option value="standard">Standard 타입</option>
		<option value="deluxe">Deluxe 타입</option>
		<option value="suite">Suite 타입</option>			
	</select><br/><hr/>
	이벤트 이름 : <input type="text" name="subject" id="subject" style="width:43%" value="${vo.room_event_name}"/><br/><hr/>
	메인 이벤트 내용 : <br/><textarea name="content" id="dsp" rows="10" cols="70" value="${vo.dsp}"></textarea><br/><hr/>
	추가 내용 : <br/><textarea name="sub_content" id="sub_dsp" rows="5" cols="70" value="${vo.sub_dsp}"></textarea><br/><hr/>
	적용 : <input type="text" name="action" style="width:43%" value="${vo.action}"/><br/><hr/>
	기간 : <input type="text" name="start_date" value="${vo.event_start_date}"/> ~ <input type="text" name="end_date" value="${vo.event_end_date}"/><br/><hr/>
	이미지 등록 : <input type="file" name="filename" id="filename" onchange="fileCheck(this)" accept="image/gif,image/jpeg, image/png"/>${vo.event_img}&nbsp;&nbsp;&nbsp;<b>X</b><br/><hr/>
	<div>
		<input type="submit" value="이벤트 등록"/>
		<input type="reset" value="Reset"/>
	</div>
	</form>
</div>
</body>
</html>