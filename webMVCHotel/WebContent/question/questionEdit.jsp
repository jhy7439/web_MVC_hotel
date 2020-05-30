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
<link rel="stylesheet" href="../css/header.css" type="text/css"/>
<link rel="stylesheet" href="../css/fqa.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="../js/header_footer.js"></script>
<script src="../jquery.bxslider.min.js"></script>

<!-- 글쓴이와 세션의 아이디가 다르면 홈으로 이동한다. -->
<c:if test="${vo.user_id!=user_id }"> <!-- !표시 -->
	<script>
		alert("잘못된 접근입니다. 홈으로 이동합니다.");
		location.href="<%=request.getContextPath()%>/question/questionList.do";
	</script>
</c:if>
<script>
	$(function(){
		$("#boardFrm").submit(function(){
			if($("#text").val()==""){
				alert("제목을 입력하세요");
				return false;
			}
			if($("#contentName").val()==""){
				alert("글내용을 입력하세요");
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
	
		<div id="profileLine"><h2>글수정</h2></div>
		
	
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
		
	<form method="post"  id="boardFrm" action="<%=request.getContextPath()%>/question/questionEditOk.do">			
	
	<div id="titleTitleBox">	
	<div id="title">제목</div>
		<div id="titleBox"><input type="text" name="subject" value="${vo.subject}" id="text" style="opacity:0.5"></div>
		
	</div>
		<div id="contentText1">
		<div id="content">내용</div>
		<div id="text1"><textarea style="opacity:0.5" name="content" id="contentName" value="content" rows="6" cols="120" >${vo.content}</textarea></div>
		</div>
		
		<div id=nameText>
		<div id="name">성명</div>
		<div id="text2"><input type="text"  name="user_id" value="${vo.user_id}" style="opacity:0.5"></div>
		</div>
		
	</div>
	
	<input type="hidden" name="no" value="${vo.no}"/>
		<input type="hidden" name="pageNum" value="${pVo.pageNum }"/>
		<input type="hidden" name="searchKey" value="${pVo.searchKey }"/>
		<input type="hidden" name="searchWord" value="${pVo.searchWord }"/>
		<div id="enrollment"><button type="submit" value="등록">등록</button></div>	
	
	
		
	
	
	
	
	
	</form>
	</div>
</div>
	
</section>
</body>
</html>