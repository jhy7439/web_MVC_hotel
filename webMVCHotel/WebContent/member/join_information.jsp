<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/join_information/join_information.css" href="text/css"/>
<script src="<%=request.getContextPath() %>/js/log.js"></script>
<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	$(function (){
		
		
		//중복검사하지않은 아이디는 N으로 변경한다.
		$("#user_id").keyup(function(){
			$("#idStatus").val("N");
		});
		
	

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


	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="content">
	<div id="top">
		<h2>회원가입</h2>
		<div id="text">
			<br/>
			<label>크라운 맵버십 회원만을 위한</label>
			<br/>
			<label>다양한 혜택과 서비스를 누려보세요.</label>
		</div>
		<div id="painting">
			<img src="../../img/join_information/20200428_171738_3.png"/>
		</div>
	</div>
	<form method="post" action="<%= request.getContextPath()%>/member/memberOk.do"id="memberFrm">
		<div id="frame">
			<div id="idpw1">
				<label>아이디 및 비밀번호</label>
				<br/><br/>
				<label>아이디</label><label>*</label>
				<br/>
				<input type="text" id="user_id"name="user_id" placeholder="영문, 숫자, 특수기호(_),(-) 조합  5~20자 이내"/>
				<input type="button" id="idcheck" value="중복확인" >
				<input type="hidden" id="idStatus" value="N"/><!-- 아이디중복검사 --><br>
				<label id="l1">*필수입력항목</label>
			</div>
			<div id="pwpw">
				<div id="idpw2">
					<label>비밀번호</label><label>*</label>
					<br/>
					<input type="text" id="user_pwd"name="user_pwd" placeholder="영문, 숫자, 특수 기호 조합  8~16자 이내"/>
				</div>
				<div id="idpw3">
					<label>비밀번호 확인</label><label>*</label>
					<br/>
					<input type="text" id="user_pwd_check" name="user_pwd_check" placeholder="비밀번호 확인"/>
				</div>
			</div>
			<hr id="hr1"/>
			<div id="info">
			<label id="l2">*필수입력항목</label>
				<div id="name">
					<div id="koname">
						<label>기본 정보</label>
						<br/><br/>
						<label>이름(한글)</label><label>*</label>
						<br/>
						<input type="text" id="user_name" name="user_name"/>
					</div>
					<div id="user_en">
						<label>이름(영어)</label><label>*</label>
						<br/>
						<input type="text" id="user_en_name" name="user_en_name"placeholder="First Name">
						
					</div>		
				</div>
				<div id="mid">
				<div id="bir">
				<label>생년월일</label><label>*</label>
				<br/>
				
				<input type="text" id="year" name="year" placeholder="출생년도 4글자">
				/<select  id="month"name="month">
					<option value="none">월선택</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				/<select name="day" id="day">
					<option value="none">일선택</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
				</select>
				</div>	
					<div id="tel" >
						<label>휴대폰번호</label><label>*</label>
						<br/>
						<select id="tel1" name="tel1">
						<option value="010">010</option>
						<option value="011">011</option>
						
						</select>
						-
						<input type="text" id="tel2" name="tel2"/>
						-
						<input type="text" id="tel3" name="tel3"/>		
					</div>
				</div>
				<div id="mid2">
					<div id="email">
						<label>이메일</label><label>*</label>
						<br/>
						<input type="text" id="email_id" name="email_id">@<select id="email_domain" name="email_domain">
						<option value="naver.com">naver.com</option>
						<option value="nate.com">nate.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
						</select>
						<br/>
						<br/>
						<label id="m1">마케팅 정보 수신 동의</label>
						<br/>
						<br/>
						<label id="m2">수신 동의를 하시면, 크라운 포인트 및 이벤트</label>
						<br/>
						<label id="m3">소식을 전해드립니다.</label>
						<br/>
						<br/>
						<input type="checkbox" id="m4"><label id="m5">동의합니다</label>
					</div>
					<div id="address">
						<label>주소</label><label>*</label>
						<br/>
						<input type="text" id="zipcode" name="zipcode"><input type="button" value="우편번호검색"onClick="openDaumZipAddress();" id="zipcodeserch"/><br/>
						<input type="text" id="addr" name="addr"/>
						<input type="text" name="addrdetail" id="addrdetail" placeholder="상세주소를 입력하세요"size="50"/><br>
						<br/>
						<input type="submit" value="회원등록" id="memberOk"/>
						<input type="reset" value="다시쓰기"/>	
					</div>
				</div>
				<hr/>
				<input type="submit" id="next" value="다음">
			</div>
		</div>
	</form>
</div>
</body>
</html>