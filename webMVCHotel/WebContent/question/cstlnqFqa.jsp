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
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="../js/header_footer.js"></script>
<script src="../jquery.bxslider.min.js"></script>
<script>
$(function(){
	   $("p.title").on('click',function(){
	      $(this).next(".answer").slideToggle(100);
	   }); 
	   
	   $("p.questionBox_title").on('click',function(){
	      
	      $(this).next(".questionBox_answer").slideToggle(100);
	   }); 
	   
	   var on = $("button.adminAnswerBox").hasClass("ON");
	 
	   
	   if(on == true){ 
	      $("button.adminAnswerBox").on('click',function(){
	        
	         $(this).next(".adminAnswer_text").slideToggle(100);
	      });
	   }else{
	      $("button.adminAnswerBox").css({
	         "background-color":"black" 
	         
	      });  
	   }
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
				<b>자주하는 질문</b>
			</a> 
		</span>
		<span>></span>
		<span style="color:black">
			<a href="#">홈</a>
		</span>
	</div>
	
		<div id="profileLine"><h2>FQA</h2></div>
		
	
	<!-- 프로필 수정 -->
	<div>
	<div id="buttonText">
		고객문의
		<hr/>
		<div class="question"><button><a href="cstlnqFqa.jsp"><span class="span_font">자주하는질문</span></a></button></div>
		<div class="question"><button><a href="<%=request.getContextPath()%>/question/questionList.do"><span class="span_font">질문 리스트</span></a></button></div>
		<div class="question"><button><a href="questionForm.jsp"><span class="span_font">고객문의</span></a></button></div>
	</div>
	
	<div id="idPwdList">
		
		<div>
		<span style="color:#6E6E6E"><b>자주하는질문</b></span>
		</div>
		
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">고객센터 번호가 뭐에요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA" >
					<i class="xi-subdirectory-arrow"></i><b>02-245-5124</b>로 문의하시면 됩니다.
				</div>
			</li>
		</ul>			
		</div>
		</hr>
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">회원정보 수정은 어떻게 하나요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i><b>로그인</b> -> 우측 상단<b>[마이페이지]</b> -><b>회원정보 수정</b> 클릭하시면 됩니다.
				</div>
			</li>
		</ul>			
		</div>	
			
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">호텔예약 확인은 어떻게 해요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i><b>로그인</b> -> 우측 상단<b>[마이페이지]</b> -><b>예약조회</b> 클릭하시면 됩니다.
					날짜별로 구분해서 검색 하실수 있습니다. 
				</div>
			</li>
		</ul>			
		</div>		
		
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">다음달 프로모션도 미리 볼수 있나요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i>사전에 공지 하도록 하겠습니다.
				</div>
			</li>
		</ul>			
		</div>		
		
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">입실은 몇시부터 가능한가요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i>익일 <b>오후3시</b>부터 가능합니다.
				</div>
			</li>
		</ul>			
		</div>		
		
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">퇴실시간 추가 할수 있나요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i>퇴실 하시기 3시간전에 안내 데스크에 문의해주시면 가능하십니다.
					<b>추가 비용</b>은 시간당 발생하실수 있습니다.
					안내 데스크 번호는 <b>02-247-5472</b>입니다.
				</div>
			</li>
		</ul>			
		</div>		
		
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">가까운역이 어디에요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i>2호선 <b>신촌역 5번출구</b>로 나오셔서 100M 직진 하시면 
					왼쪽에 <b>거구장 건물 3층</b>에 있습니다.
				</div>
			</li>
		</ul>			
		</div>		
		
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">예약취소 했는데 환불기간은 몇일 소요되나요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i>취소한 당일로 부터 <b>2~3일</b>이 소요됩니다.
				</div>
			</li>
		</ul>			
		</div>		
		
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">조식은 몇시부터 몇시까지 이용가능 한가요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i>조식은 오전9시부터 10시30분 입니다.
				</div>
			</li>
		</ul>			
		</div>		
		
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">주차 가능한가요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i><b>주차 가능합니다.</b>
					건물 뒷쪽으로 가시면 주차공간이 마련되어 있습니다.
					주차 하시고 안내데스크에 차키를 맡겨 주시면 됩니다.
				</div>
			</li>
		</ul>			
		</div>		
		
		<div class="accordion-box">	
		<ul>
			<li>
				<p class="title my-2">
					<i class="xi-quicktime"></i>
					<span style="color:#6E6E6E">객실을 예약했는데 룸 업그레이드 가능한가요?</span>
				</p>
				<div class="answer border rounded-lg" style="width:1080px;background:#FAFAFA">
					<i class="xi-subdirectory-arrow"></i>룸 업그레이드 가능합니다.
					원하시는 타입을 말씀해 주시면 되겠습니다.
				</div>
			</li>
		</ul>			
		</div>		
		
			
			
			
			
			
		
		
	</div>
		
	</div>	
	</div>
</section>

</body>
</html>