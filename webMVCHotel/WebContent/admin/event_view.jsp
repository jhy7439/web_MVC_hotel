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
<script>
	function delStart(){
		if(confirm("삭제하시겠습니까?")){
			location.href='<%=request.getContextPath()%>/admin/eventDel.do?room_event_code=${vo.room_event_code}';
		}	
	}
</script>
</head>
<body>
<div class="container">
	<h2>이벤트 글 내용 보기</h2>
	<ul>
		<li>이벤트 번호 : ${vo.room_event_code}</li><hr/>
		<li>이벤트 타입 : ${vo.event_type} 타입</li><hr/>
		<li>이벤트 이름 : ${vo.room_event_name}</li><hr/>
		<li>메인 이벤트 내용 : <br/>${vo.dsp}</li><hr/>
		<li>추가 내용 : <br/>${vo.sub_dsp}</li><hr/>
		<li>적용 : ${vo.action}</li><hr/>
		<li>기간 : ${vo.event_start_date}~${vo.event_end_date}</li><hr/>
		<li>이벤트 이미지</li>		
		<li>
			<img src="<%=request.getContextPath()%>/upload/${vo.event_img}" width="500" height="300"/>
		</li>
		<li></li>
	</ul>
	<div>
		<a href='<%=request.getContextPath()%>/event/eventEdit.do?room_event_code=${vo.room_event_code}'>수정</a>
		<a href="javascript:delStart(${vo.room_event_code})">삭제</a>
	</div>
</div>
</body>
</html>