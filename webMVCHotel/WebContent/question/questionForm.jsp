<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewpory" content="width=device-width, inital-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="../jquery.bxslider.min.css" type="text/css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="../css/header.css" type="text/css"/>
<link rel="stylesheet" href="../css/fqa.css" type="text/css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="../js/header_footer.js"></script>
<script src="../jquery.bxslider.min.js"></script>
<script>
	//정규식 표현
	var txt = "Javascript and html and css";
	var reg = /html/i; 
	var result = reg.test(txt);
	
	function regExpChk(){
		//제목
		reg = /^[a-zA-Z][가-힣]{1,49}$/;
		if(!reg.test(document.getElementById("subject").value)){
			alert("제목은 영문,한글포함 2~50자리 까지만 허용합니다.");
		}
		//내용
		reg = /^[a-zA-Z][가-힣]{1,199}$/;
		if(!reg.test(document.getElementById("content").value)){
			alert("글내용은 영문,한글포함 2~200자리 까지 가능합니다.");
		}
		
	}
	
	
	$(function(){
		$("#boardFrm").submit(function(){
			if($("#text").val()==""){
				alert("제목을 입력하세요");
				return false;
			}
			if($("#contentName").val()==""){
				alert("내용을 입력하세요");
				return false;
			}	
		});
	
	});
</script>

</head>
<body>

<section>
	<div id="menuText">
	<!-- my page메인화면 -->
	<div id="menuTop">
		<span>
			<a href="#">
				<b>고객문의</b>
			</a> 
		</span>
		<span>></span>
		<span style="color:black">
			<a href="#">홈</a>
		</span>
	</div>
	
		<div id="profileLine"><h2>문의하기</h2></div>
		
	
	<!-- 프로필 수정 -->
	<div id="buttonDiv">
	<div id="buttonText">
		고객문의
		<hr/>
		<div class="question"><button><a href="cstlnqFqa.jsp"><span class="span_font">자주하는질문</span></a></button></div>
		<div class="question"><button><a href="<%=request.getContextPath()%>/question/questionList.do"><span class="span_font">질문 리스트</span></a></button></div>
		<div class="question"><button><a href="questionForm.jsp"><span class="span_font">고객문의</span></a></button></div>
	</div>
	
	
	
	<!-- 질문유형 -->
	<div id="idPwdQt">
		
	<form method="post" id="boardFrm" action="<%=request.getContextPath()%>/question/questionFormOk.do" onsubmit="return regExpChk()">			
	<div id="questionTypeList">
		<div id="questionType">질문유형</div>
			<div id="list">
			<select style="opacity:0.5" name="questionType">
			<option value='객실' selected>객실</option>
			<option value='예약'>예약</option>
			<option value='이벤트'>이벤트</option>
			<option value='환불'>환불</option>
			</select>
			</div>
	</div>
	<div id="titleTitleBox">	
	<div id="title">제목</div>
		<div id="titleBox"><input type="text" name="subject" value="subject" id="text" style="opacity:0.5"></div>
	</div>
		<div id="contentText1">
		<div id="content">내용</div>
		<div id="text1"><textarea style="opacity:0.5" name="content"  id="contentName" value="content" rows="6" cols="120"></textarea></div>
		</div>
		
		<div id=nameText>
		<div id="name">성명</div>
		<div id="text2" >${user_id }</div>
		<input type="hidden" name="user_id" value="${user_id }"/>
		</div>
		
		<div id="telText">
			<div id="tel">연락처</div>
			<div id="text3"><input type="text" name="tel" value="tel" style="opacity:0.5"></div>
		</div>
	</div>
	
	<div id="checkBox">
	
	<div>공개여부
		<input type="checkbox" name="publicPrivate" value="Y" checked>
	</div>	
	<div id="publicAvailability">공개
		<input type="checkbox" name="publicPrivate" value="N">
	</div>	
	<div id="private">비공개</div>
	
	</div>
	<div id="enrollment"><button type="submit" value="등록">등록</button></div>	
	
	</form>
	</div>
</div>
	
</section>

</body>
</html>