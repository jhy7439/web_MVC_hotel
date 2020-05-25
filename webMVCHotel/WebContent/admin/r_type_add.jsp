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
<script src="//cdn.ckeditor.com/4.14.0/full/ckeditor.js"></script>
<script src="${HOME}/js/admin.js"></script>
<script>
$(function(){
	
	$("#boardFrm").submit(function(){
		if($("#room_type").val()==""){
			alert("객실타입을 입력하세요.");
			return false;
		}
		if($("#room_location").val()==""){
			alert("위치을 입력하세요.");
			return false;
		}
		if($("#room_size").val()==""){
			alert("객실 크기를 입력하세요.");
			return false;
		}
		if($("#dsp").val()==""){
			alert("세부내용을 입력하세요.");
			return false;
		}
	});
});
</script>
</head>
<body>
<section>
<div class="container">
<div><h2>객실 타입 등록 페이지</h2></div>
<form method="post" id="rTypeFrm" name="rTypeFrm" action="<%=ctx%>/admin/rTypeAddOk.do" enctype="multipart/form-data">
	<div>
		<input type="submit" value="객실 타입 등록"/>
		<input type="reset" value="Reset"/>
	</div>
	<hr/>
	<div>객실타입 : <input type="text" name="room_type" id="room_type" 
						size="30" maxlength="30"/></div>
	<hr/>
	<div>위치 : <input type="text" name="room_loc" id="room_loc" size="20" maxlength="20"/></div>
	<hr/>
	<div>침대 : <select name="bed_type" >
				<c:forEach var="bVo" items="${lst }">
				<option value="${bVo.bed_type }">${bVo.bed_type }</option>
				</c:forEach>
				</select>
	</div>
	<hr/>
	<div>객실 크기 : <input type="text" name="room_size" id="room_size" size="10" maxlength="10"/></div>
	<hr/>
	<div>세부내용<br/>
	<textarea name="cotent" id="cotent" rows="10" cols="60"></textarea></div>
	<hr/>
	<div>
		<h4>메인 이미지</h4>
		<p>이미지 업로드</p>
		<input type="file" id="mainImgInp" name="mainImgInp" accept="image/png, image/jpeg, image/gif, image/bmp, image/jpg">
	</div>
	<div>
		<div class ="img_wrap">
			<img id="mainImg"/>
		</div>
	</div>
	<hr/>
	<div>
		<h4>서브 이미지</h4>
		<p>이미지 업로드</p>
		<input type="file" id="subImgInp" name="subImgInp" accept="image/png, image/jpeg, image/gif, image/bmp, image/jpg" multiple/>
	</div>
	<div>
		<div id="subImgs">
		</div>
	</div>
	<!-- 사진첨부 -->
	<div>
        <h4>사진 첨부</h4>
        <div class="body">
            <!-- 첨부 버튼 -->
            <div id="attach">
                <label class="waves-effect waves-teal btn-flat" for="uploadInputBox">사진첨부</label>
                <input id="uploadInputBox" style="display: none" type="file" name="filedata" multiple />
            </div>
            
            <!-- 미리보기 영역 -->
            <div id="preview" class="content"></div>
        </div>
    </div>

</form>
</div>
</section>
</body>
</html>