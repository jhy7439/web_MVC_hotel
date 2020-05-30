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
<style>
	#boardList, #boardList>li{margin:0;padding:0px;list-style-type:none}
	#boardList>li{float:left;width:14%;height:40px;line-height:40px;
				  border-bottom:1px solid gray}
			  
	#boardList>li:nth-of-type(4n-2){width:50%}
	
	/*		줄바꾸기 취소			 범위보다 크면 숨기기	넘치는 문자가 있을떄 ..으로 표시*/
	.wordCut{white-space:nowrap; overflow:hidden; text-overflow:ellipsis}			  
</style>
<script>
	$(function(){
		$("#searchFrm").submit(function(){
			//검색어 입력유무 확인
			if($("#searchWord").val()==""){
				alert("검색어를 입력후 검색하세요..");
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
				<b>질문 리스트</b>
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
	
	<div id="idPwd">
		<div class="id">
		<span style="color:#6E6E6E"><b>질문리스트</b></span>
		
		</div>	
		<div class="id">
		<ul id="boardList">
			<li style="background:#F2F2F2"><b>번호</b></li>
			<li style="background:#F2F2F2"><b>제목</b></li>
			<li style="background:#F2F2F2"><b>글쓴이</b></li>
			<li style="background:#F2F2F2"><b>날짜</b></li>	
			
			<c:forEach var="vo" items="${lst}">
				<li>${vo.no}</li>
				<c:if test="${vo.publicPrivate=='Y' }">
					<li class="wordCut">
					<a href="<%=request.getContextPath()%>/question/view.do?no=${vo.no}&pageNum=${pageVO.pageNum}<c:if test="${pageVO.searchKey!=null && pageVO.searchWord!=null}">&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>">${vo.subject}</a>
					</li>
				</c:if>
				<c:if test="${vo.publicPrivate=='N' }">
					<!-- 아이디값과 일치하면 들어가기 -->
						<c:if test="${vo.user_id!=user_id}">
							<li>${vo.subject }<i class="xi-lock"></i></li>
						</c:if>
						<c:if test="${vo.user_id==user_id}">
							<li><a href="<%=request.getContextPath()%>/question/view.do?no=${vo.no}&pageNum=${pageVO.pageNum}<c:if test="${pageVO.searchKey!=null && pageVO.searchWord!=null}">&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>">${vo.subject}</a></li>
						</c:if>
				</c:if>	
				<li>${vo.user_id}</li>		
				<li>${vo.writeDate}</li>
				
			</c:forEach>		
		</ul>
		<div style="padding-top:240px;">
			<!-- 페이징 -->
			<!-- 현재페이지가 1페이지 일떄 -->
			
			<c:if test="${pageVO.pageNum==1 }">
				이전
			</c:if>
			<c:if test="${pageVO.pageNum>1 }">
			<a href="<%=request.getContextPath()%>/question/questionList.do?pageNum=${pageVO.pageNum-1}<c:if test="${pageVO.searchKey!=null && pageVO.searchWord!=null}">&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>">prev</a>
			</c:if>
			<c:forEach var="i" begin="${pageVO.startPage}" end="${pageVO.startPage+pageVO.onePageCount }">
			 <c:if test="${i <= pageVO.totalPage }"> 
				<a href="<%=request.getContextPath()%>/question/questionList.do?pageNum=${i}<c:if test="${pageVO.searchKey!=null && pageVO.searchWord!=null}" >&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>"<c:if test='${i==pageVO.pageNum}'></c:if>> ${i} </a>
			</c:if>
		</c:forEach>
		<!-- 현재 페이지가 마지막페이지 일떄 -->
		<c:if test="${pageVO.pageNum == pageVO.totalPage }">
			다음
		</c:if>
		<c:if test="${pageVO.pageNum < pageVO.totalPage }">
			<a href="<%=request.getContextPath()%>/question/questionList.do?pageNum=${pageVO.pageNum+1}<c:if test="${pageVO.searchKey!=null && pageVO.searchWord!=null}">&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>">다음</a>
		</c:if>
		</div>
		<div>
			<!-- 검색 -->
			<form id="searchFrm" action="<%=request.getContextPath()%>/question/questionList.do">
				<select name="searchKey">
					<option value="subject">제목</option>
					<option value="content">글내용</option>
					<option value="user_id">작성자</option>
					<option value="questionType">질문유형</option>
				</select>
				<input type="text" name="searchWord" id="searchWord"/>
				<input type="submit" value="검색"/>
			</form>
		</div>
			<div>
			<a href="<%=request.getContextPath()%>/question/questionList.do"><b>문의목록</b></a>
			
			<c:if test="${logStatus!=null && logStatus=='Y'}">
					<a href="<%=request.getContextPath()%>/question/questionForm.do">글쓰기</a>
			</c:if>
			</div>
		
		<form id="" action="<%=request.getContextPath()%>/question/questionList.do">
				<select name="searchKey">
					<option value="user_id">작성자</option>
				</select>
				
				<input type="hidden" name="user_id" value="${user_id }"/>
				<input type="text" name="searchWord" id="searchWord" value="${user_id }" />
				<input type="submit" name="user_id" value="my질문"/>
				
			</form>		
	</div>
		
	</div>
	</div>	
</section>


			


</body>
</html>