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
<script>
	$(function(){
		$('#eventFrm').submit(function(){
			if($('#subject').val()==""){
				alert("이벤트 이름을 입력하세요.");
				return false;
			}
			if($('#content').val()==""){
				alert("이벤트 내용을 입력하세요.");
				return false;
			}
			var fileCount=0;
			if($('#filename').val()!=""){
				fileCount++;
			}
			if(fileCount<1){
				alert("이미지 파일은 반드시 있어야 합니다.");
				return false;
			}
		});
	});

	function fileCheck(obj){
		pathpoint=obj.value.lastIndexOf('.');
		filepoint=obj.value.substring(pathpoint+1, obj.length);
		filetype=filepoint.toLowerCase();
		
		if(filetype=='jpg'||filetype=='gif'||filetype=='png'||filetype=='jpeg'||filetype=='bmp'){
			//정상적인 이미지 확장자 파일일 경우	
		}else{
			alert("이미지 파일만 선택할 수 있습니다.");
			parentObj=obj.parentNode;
			node=parentObj.replaceChild(obj.cloneNode(true), obj);
			document.getElementById('filename').value="";
			return false;
		}
		if(filetype=='bmp'){
			upload=confirm("BMP 파일은 웹상에서 사용하기에 적절한 이미지 포맷이 아닙니다. \n그래도 계속 하시겠습니까?");
			if(!upload){
				document.getElementById('filename').value="";
				return false;
			}
		}
	}
</script>
</head>
<body>
<section>
<div class="container">
	<div><h2>이벤트 등록 페이지</h2></div>
	<form method="post" id="eventFrm" action="${HOME}/admin/eventAddOk.do" enctype="multipart/form-data">
	이벤트 타입 : 
	<select name="eventType">
		<option value="standard">Standard 타입</option>
		<option value="deluxe">Deluxe 타입</option>
		<option value="suite">Suite 타입</option>			
	</select><br/><hr/>
	이벤트 이름 : <input type="text" name="subject" id="subject" style="width:43%"/><br/><hr/>
	메인 이벤트 내용 : <br/><textarea name="content" id="dsp" rows="10" cols="70"></textarea><br/><hr/>
	추가 내용 : <br/><textarea name="sub_content" id="sub_dsp" rows="5" cols="70"></textarea><br/><hr/>
	적용 : <input type="text" name="action" style="width:43%"/><br/><hr/>
	기간 : <input type="text" name="start_date"/> ~ <input type="text" name="end_date"/><br/><hr/>
	이미지 등록 : <input type="file" name="filename" id="filename" onchange="fileCheck(this)" accept="image/gif,image/jpeg, image/png"/><br/><hr/>
	<div>
		<input type="submit" value="이벤트 등록"/>
		<input type="reset" value="Reset"/>
	</div>
	</form>
</div>
</section>
</body>
</html>