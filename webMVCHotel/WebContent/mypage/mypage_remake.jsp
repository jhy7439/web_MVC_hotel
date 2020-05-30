<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${logStatus==null || logStatus=='N' }">

	<script>
	
		alert("로그인후 접속이 가능합니다.");
		location.href="<%=request.getContextPath()%>/member/login.do";
	
	</script>

</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, inital-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="../jquery.bxslider.min.css" type="text/css"/>
<link rel="stylesheet" href="../css/header.css" type="text/css"/>
<link rel="stylesheet" href="../css/mypage.css" type="text/css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="../js/header_footer.js"></script>
<script src="../jquery.bxslider.min.js"></script>
</head>
<script>

$(function (){	
	
	//유효성검사
	$("#memberFrm").on("submit",function(){
		//아이디
		
		if($("#userpwd").val()== ""){
			alert('비밀번호를 입력하세요..');
			return false;
		}

		if($("#tel2").val()== "" ||$("#tel3").val() == ""){
			alert('전화번호를 입력하세요');
			return false;
		}
	});
});

</script>
<body>
<section id="menuText">
	<!-- my page메인화면 -->
	<div id="menuTop">
		<span>
			<a href="#">
				<b>프로필 수정</b>
			</a> 
		</span>
		<span>></span>
		<span style="color:black">
			<a href="#">
			my page</a>
		</span>
		<span>></span>
		<span style="color:black">
			<a href="#">홈</a>
		</span>
	</div>
	<div id="profile">
		<div id="profileLine">프로필 수정</div>
	</div>
	<div id="borderText">
		회원님의 정보를 변경 하실수 있습니다.
	</div>
	<!-- 프로필 수정 -->
	<div id="buttonDiv">
	<div id="buttonText">
		<div><em><b><a href="<%=request.getContextPath()%>/mypage/mypage_main.do"><span style="color:black">마이 페이지</span></a></b></em></span></div><br/>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_remake.do"><span class="span_font">프로필 수정</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_reservation.do"><span class="span_font">예약확인/취소</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_pwd.do"><span class="span_font">비밀번호 변경</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/question/questionList.do"><span class="span_font">문의내역</span></a></button></div>
		<div><button><a href="<%=request.getContextPath()%>/mypage/mypage_withdrawal.do"><span class="span_font">회원탈퇴</span></a></button></div>
	</div>
	
	
	<!-- 기본정보 목록 -->
	<form method="post" id="editFrm" action="<%= request.getContextPath()%>/mypage/mypage_remakeOk.do">
		<div id="idPwd">
			<div id="name">
			
			성명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="user_name" id="user_name" value="${user_name}"/><br>
			
			</div>
			
		<div id="pwd">	
		
			<span>아이디</span>&nbsp${user_id}
		
		</div>
		
		<div id="email">
			email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" id="email_id" name="email_id" value="${vo.email_id}" > @ 
							
				<select id="email_domain" name="email_domain">

					<option value="naver.com" <c:if test="${vo.email_domain=='naver.com' }">selected</c:if>>naver.com</option>
					<option value="nate.com" <c:if test="${vo.email_domain=='nate.com' }">selected</c:if>>nate.com</option>
					<option value="daum.net" <c:if test="${vo.email_domain=='daum.net' }">selected</c:if>>daum.net</option>
					<option value="gmail.com" <c:if test="${vo.email_domain=='gmail.com' }">selected</c:if>>gmail.com</option>
					
				</select>
		
		<div id="tel">
			연락처&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

			<select id="tel1" name="tel1">
							
							<option value="010" <c:if test="${vo.tel1=='010' }">selected</c:if>>010</option>
							<option value="011" <c:if test="${vo.tel1=='011' }">selected</c:if>>011</option>
							<option value="016" <c:if test="${vo.tel1=='016' }">selected</c:if>>016</option>
							<option value="017" <c:if test="${vo.tel1=='017' }">selected</c:if>>017</option>
							<option value="018" <c:if test="${vo.tel1=='018' }">selected</c:if>>018</option>
							<option value="019" <c:if test="${vo.tel1=='019' }">selected</c:if>>019</option>
					 	    
					 	    </select> 
					 	    -
							<input type="text" id="tel2" name="tel2" value="${vo.tel2}"/>
							-
							<input type="text" id="tel3" name="tel3" value="${vo.tel3}"/>
		</div>
		
		<div id="marketing">
		마케팅<br/>수신동의  <input type="checkbox" value="예" style="margin-left:13px">예 
		<input type="checkbox" value="아니오"  style="margin-left:13px">아니오
		</div>
		<div class="buttonPwd"><button type="submit">변경</button></div>
		<div id="buttonPwd" class="buttonPwd"><button type="submit">취소</button></div>
	</div>
</section>	
</form>
</body>
</html>