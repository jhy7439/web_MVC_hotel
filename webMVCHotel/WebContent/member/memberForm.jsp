<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"/><!-- 뷰포트 -->
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/js/log.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/memberForm.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/memberForm.css" href="text/css"/>

<title>정보입력</title>
</head>

<script>
$(function(){
	//아이디 중복검사 유무
	$("#idCheck").click(function(){
		console.log("아이디 중복체크");
		window.open("<%=request.getContextPath()%>/member/idCheck.do?user_id="+$('#user_id').val(),"idCheck","width=500,height=400");
	});
	
	//중복검사하지않은 아이디는 N으로 변경한다.
	$("#user_id").keyup(function(){
		$("#idStatus").val("N");
	});
	
});
	
	//유효성검사
	$("#infoPut").on("submit",function(){
		//아이디
		if($("#idStatus").val()== "N"){
			alert("아이디를 중복체크를하세요.");
			return false;
		}
		if($("#userpwd").val()== "" ||$("#userpwd2").val() == ""){
			alert('비밀번호를 입력하세요..');
			return false;
		}
		if($("#userpwd").val() != $("#userpwd2").val()){
			alert("비밀번호가 일치하지않습니다.");
			return false;
		}
		if($("#username").val()== ""){
			alert('이름을 입력하세여');
			return false;
		}
		if($("#tel2").val()== "" ||$("#tel3").val() == ""){
			alert('전화번호를 입력하세요');
			return false;
		}
	});
	
	function openDaumZipAddress() {

		new daum.Postcode({

			oncomplete:function(data) {

				$("#zipcode").val(data.zonecode);

				$("#addr").val(data.address);

				$("#addrdetail").focus();

				console.log(data);

			}

			}).open();
		}
	

</script>

<body>
<form method="post" id="infoPut" action="<%= request.getContextPath()%>/member/memberOk.do">

	<div id="frame">	
		
		<div id="title">
		
			<h2>회원가입</h2>
		
			<div id="text">
				
				<br/>
				<label>크라운 맵버십 회원만을 위한</label>
				<br/>
				<label>다양한 혜택과 서비스를 누려보세요.</label>
			
			</div>
			
			<div id="painting"> 
				<img src="<%=request.getContextPath() %>/img/20200428_171738_3.png"/>
			</div>
			
		</div>
		
		<div id="bg">
		
			<div id="content">
			
				<div id="idForm">
				
					<label>아이디 및 비밀번호</label>
					
					<label>*필수입력항목</label>
					<br/><br/>
					
					<label>아이디</label><label>*</label>
					<br/>
					
					<input type="text" id="user_id"name="user_id" placeholder="영문, 숫자, 특수기호(_),(-) 조합  5~20자 이내"/>
					
					<input type="button" name="idCheck" id="idCheck" value="중복확인" >
					
					<input type="hidden" id="idStatus" value="N"/><!-- 아이디중복검사 --><br>
					
				</div>
				
				<div id="pwdForm">
				
					<div id="pwd">
					
						<label>비밀번호</label><label>*</label>
						<br/>
						
						<input type="text" id="user_pwd" name="user_pwd" placeholder="영문, 숫자, 특수 기호 조합  8~16자 이내"/>
					
					</div>
					
					<div id="pwdChk">
					
						<label>비밀번호 확인</label><label>*</label>
						<br/>
						
						<input type="text" id="user_pwd_check" name="user_pwd_check" placeholder="비밀번호 확인"/>
					
						<input type="hidden" id="pwdStatus" value="N"/><!-- 비밀번호검사 --><br>
					
					</div>
					
				</div>
				
				<hr id="hr1"/>
				
				<div id="infoForm">
					
						<div id="nameForm">
						
							<label>기본 정보</label>
							<br/><br/>
						
							<div id="name">
							
							<label>이름(한글)</label><label>*</label>
							<br/>
							
							<input type="text" id="user_name" name="user_name"/>
							
						</div>
						
						<div id="eName">
						
							<label>이름(영어)</label><label>*</label>
							<br/>
							
							<input type="text" id="user_first_name" name="user_first_name" placeholder="First Name(이름)">
							
							<input type="text" id="user_last_name" name="user_last_name" placeholder="Last Name(성)">
							
						</div>	
							
					</div>
					
					<div id="midfrm">
					
						<div id="birth">
							
							<label>생년월일</label><label>*</label><br/>
							
							<select name="year">
							
								<%for(int i=2013; i>=1900; i--){ %>
								<option value="<%=i %>"><%=i %></option>
							    <%} %>
							
							</select>년&nbsp;
							
							<select name="month">
							
								<%for(int i=1; i<=12; i++){ %>
							    <option value="<%=i %>"><%=i %></option>
								<%} %>
							
							</select>월&nbsp;
							
							<select name="day">
							
								<%for(int i=1; i<=31; i++){ %>
								<option value="<%=i %>"><%=i %></option>
							    <%} %>
						    
						    </select>일&nbsp;<br><br>
					    
						</div>
						
						<div id="tel">
						
							<label>휴대폰번호</label><label>*</label>
							<br/>
							
							<select id="tel1" name="tel1">
							
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
					 	    
					 	    </select> 
					 	    -
							<input type="text" id="tel2" name="tel2"/>
							-
							<input type="text" id="tel3" name="tel3"/>		
						
						</div>
						
					</div>
					
					<div id="midfrm2">
					
						<div id="email">
						
							<label>이메일</label>
							<br/>
							
							<input type="text" id="email_id" name="email_id"> @ 
							
							<select id="email_domain" name="email_domain">

								<option value="naver.com">naver.com</option>
								<option value="nate.com">nate.com</option>
								<option value="daum.net">daum.net</option>
								<option value="gmail.com">gmail.com</option>
					
							</select>
							
							<div id="email_consent">
							
								<br/>
								<label>마케팅 정보 수신 동의</label>
								<br/><br/>
								<label>수신 동의를 하시면, 크라운 포인트 및 이벤트</label>
								<br/>
								<label>소식을 전해드립니다.</label>
								<br/><br/>
								
								<input type="checkbox">&nbsp;동의합니다
								
							</div>
							
						</div>
						
						<div id="address">
						
							<label>주소</label><label>*</label>
							<br/>
							
							<input type="text" id="zipcode" name="zipcode" readonly>
							
							<input type="button" value="우편번호검색" onClick="openDaumZipAddress();" id="zipcodeserch"/><br/>
							
							<input type="text" id="addr" name="addr"/>
							
							<input type="text" name="addrdetail" id="addrdetail" placeholder="상세주소를 입력하세요."size="50"/><br>
							<br/>
					
						</div>
					
					</div>
				
				</div>
				
				<hr/>
				<input type="submit" id="memberOk" value="회원등록">
				
			</div>
			
		</div>
		
	</div>
	
	</form>
	
</body>
</html>