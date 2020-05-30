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
<script>
	function questionDelCheck(no){
		if(confirm("게시물을 삭제하시겠습니까?")){
			location.href="<%=request.getContextPath()%>/question/questionDel.do?no="+no;
		};
	}
</script>
</head>
<body>
<section>

	<div id="menuText">
	
	<div id="menuTop">
		<span>
			<a href="#">
				<b>질문리스트</b>
			</a> 
		</span>
		<span>></span>
		<span style="color:black">
			<a href="#">홈</a>
		</span>
	</div>
	
		<div id="profileLine"><h2>FQA</h2></div>
	
	<div id="buttonText">
		고객문의
		<hr/>
		<div class="question"><button><a href="cstlnqFqa.jsp"><span class="span_font">자주하는질문</span></a></button></div>
		<div class="question"><button><a href="<%=request.getContextPath()%>/question/questionList.do"><span class="span_font">질문 리스트</span></a></button></div>
		<div class="question"><button><a href="questionForm.jsp"><span class="span_font">고객문의</span></a></button></div>
	</div>

	
	<div id="contentView">
	<div>
	번호 :${vo.no }<br/>
	질문유형 :${vo.questionType }<br/>
	작성자 : ${vo.user_id }<br/>
	등록일: ${vo.writeDate }<br/>
	제목 : ${vo.subject }<br/>
	글내용 : ${vo.content }<br/>
	
	</div>
	<div>
		<a href="<%=request.getContextPath()%>/question/questionList.do?pageNum=${pVo.pageNum}<c:if test='${pVo.searchKey!=null && pVo.searchWord!=null}'>&searchKey=${pVo.searchKey}&searchWord=${pVo.searchWord}</c:if>">문의내역 리스트</a>
			<c:if test="${vo.user_id==user_id}"> <!-- vo에 잇는 이름이랑 리스트에 있는 이름이랑 같을떄-->
			<a href='<%=request.getContextPath()%>/question/questionEdit.do?no=${vo.no}&pageNum=${pVo.pageNum}<c:if test='${pVo.searchKey!=null && pVo.searchWord!=null}'>&searchKey=${pVo.searchKey}&searchWord=${pVo.searchWord}</c:if>'>수정</a>
			<a href="javascript:questionDelCheck(${vo.no})">삭제</a>
			</c:if>
	</div>
		
	<div>
		  <c:if test="${pnVo.leadSubject!='이전글' }">
		  	이전글 :
			<a href="<%=request.getContextPath()%>/question/view.do?no=${pnVo.leadNo}&pageNum=${pVo.pageNum}<c:if test='${pVo.searchKey!=null && pVo.searchWord!=null}'>&searchKey=${pVo.searchKey}&searchWord=${pVo.searchWord}</c:if>">${pnVo.leadSubject }</a><br/>
		  </c:if>
		  <c:if test="${pnVo.lagSubject!='다음글' }">
		  	다음글 : 
			<a href="<%=request.getContextPath()%>/question/view.do?no=${pnVo.lagNo }&pageNum=${pVo.pageNum}<c:if test='${pVo.searchKey!=null && pVo.searchWord!=null}'>&searchKey=${pVo.searchKey}&searchWord=${pVo.searchWord}</c:if>">${pnVo.lagSubject }</a>
		  </c:if>
	</div>	
</div>
</section>
</body>

</html>