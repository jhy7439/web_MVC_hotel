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
<form method="post" id="rTypeFrm" action="<%=ctx%>/admin/rTypeAddOk.do" enctype="multipart/form-data" onsubmit="return rTypeRegExpChk()">
   <hr/>
   <div>객실타입 : <input type="text" name="room_type" id="room_type" 
                  size="30" maxlength="30"/></div>
   <hr/>
   <div>전망 : <select name="view">
   				<option value="시티뷰" selected>시티뷰</option>
   				<option value="바다뷰">바다뷰</option>
   				<option value="리버뷰">리버뷰</option>
   			  </select>
   </div>
   <hr/>
   <div>위치 : <input type="text" name="room_loc" id="room_loc" size="20" maxlength="20"/></div>
   <hr/>
   <div>객실 크기 : <input type="text" name="room_size" id="room_size" size="20" maxlength="20"/></div>
   <hr/>
   <div>메인컨텐츠<br/>
   <textarea name="mainCont" class="cont" id="mainCont" rows="3" cols="60"></textarea></div>
   <hr/>
   <div>서브컨텐츠<br/>
   <textarea name="subCont" class="cont" id="subCont" rows="5" cols="60"></textarea></div>
   <hr/>
   <div>
   		<p>옵션</p>
   		<div id="option">
   			<input type="checkbox" id="chkBox1" name="chkBox1" value="40” LED TV (36채널)" checked><label for="chkBox1"> 40” LED TV (36채널)</label>&nbsp;
   			<input type="checkbox" id="chkBox2" name="chkBox2" value="책상" checked> <label for="chkBox2">책상</label>&nbsp;
   			<input type="checkbox" id="chkBox3" name="chkBox3" value="냉장고" checked> <label for="chkBox3">냉장고</label>&nbsp;
   			<input type="checkbox" id="chkBox4" name="chkBox4" value="무료커피/티백" checked> <label for="chkBox4">무료커피/티백</label>&nbsp;
   			<input type="checkbox" id="chkBox5" name="chkBox5" value="무료 생수 2병(1박기준)" checked> <label for="chkBox5">무료 생수 2병(1박기준)</label>&nbsp;<br/>
   			<input type="checkbox" id="chkBox6" name="chkBox6" value="무료 유무선 인터넷" checked> <label for="chkBox6">무료 유무선 인터넷</label>&nbsp;
   			<input type="checkbox" id="chkBox7" name="chkBox7" value="유니버셜 어댑터(220V 전용)" checked> <label for="chkBox7">유니버셜 어댑터(220V 전용)</label>&nbsp;
   			<input type="checkbox" id="chkBox8" name="chkBox8" value="개인금고" checked> <label for="chkBox8">개인금고</label>&nbsp;
   			<input type="checkbox" id="chkBox9" name="chkBox9" value="아베다 욕실용품" checked> <label for="chkBox9">아베다 욕실용품</label>&nbsp;<br/>
   			<input type="checkbox" id="chkBox10" name="chkBox10" value="목욕가운" checked> <label for="chkBox10">목욕가운</label>&nbsp;
   			<input type="checkbox" id="chkBox11" name="chkBox11" value="객실 내 미니바 무료 이용" checked> <label for="chkBox11">객실 내 미니바 무료 이용</label>&nbsp;
   		</div>
   </div>
   <hr/>
   <div>
      <h4>메인 이미지</h4>
      <p>이미지 업로드</p>
      <input type="file" id="mainImgInp" name="mainImgInp" accept="image/png, image/jpeg, image/gif, image/bmp, image/jpg">
   </div>
   <div>
      <div class ="img_box">
         <img id="mainImg" alt="메인 이미지" src="" onError="this.src='<%=ctx%>/img/no_img.png'"/>
      </div>
   </div>
   <hr/>
   <div>
      <h4>서브 이미지</h4>
      <p>이미지 업로드 <button type="button" id="btnAddImg">+</button></p>
   </div>
   <div id="inpWrap"></div>
   <hr/>
   <div class="box">
	  <input class="btn" type="submit" value="객실 타입 등록"/>
	  <input class="btn" type="reset" value="Reset"/>
   </div>
</form>
</div>

</section>
</body>
</html>