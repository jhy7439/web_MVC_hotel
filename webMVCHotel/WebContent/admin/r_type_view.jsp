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
<script src="${HOME}/js/admin.js"></script>
<script>
<%-- function rtypeDelCheck(room_type_code){
	//자바스크립트에서 예 아니오를 선택할 수 있는 대화상자
	if(confirm("게시물을 삭제하시겠습니까?")){
		location.href="<%=ctx%>/admin/rTypeDelete.do?room_type_code="+room_type_code;
	};
} --%>
</script>
</head>
<body>
<section>
<div class="container">
<div><h2>객실 타입 상세 페이지</h2></div>
   <hr/>
   <div>객실타입 : ${vo.room_type}</div>
   <hr/>
   <div>전망 : ${vo.view}
   </div>
   <hr/>
   <div>위치 : ${vo.room_loc }</div>
   <hr/>
   <div>객실 크기 : ${vo.room_size }</div>
   <hr/>
   <div>메인컨텐츠<br/>
	   <div>
	  	 ${vo.mainCont}
	   </div>
   </div>
   <hr/>
   <div>서브컨텐츠<br/>
   	   <div>
	  	 ${vo.subCont}
	   </div>
   </div>
   <hr/>
   <div>
   		<p>옵션</p>
   		<div id="option">
	   		${vo.chkBox1}&nbsp;${vo.chkBox2}&nbsp;${vo.chkBox3}&nbsp;${vo.chkBox4}&nbsp;${vo.chkBox5}&nbsp;<br/>
	   		${vo.chkBox6}&nbsp;${vo.chkBox7}&nbsp;${vo.chkBox8}&nbsp;${vo.chkBox9}&nbsp;${vo.chkBox10}&nbsp;<br/>
	   		${vo.chkBox11}&nbsp;<br/>
   		</div>
   </div>
   <hr/>
   <div><h4>메인 이미지</h4></div>
   <div>
      <div class ="img_box">
      	<c:if test="${vo.roomImgList.size>0} ">
         <img id="mainImg" alt="메인 이미지" src="<%=ctx%>/upload/${vo.roomImgList[0]}"/>
      	</c:if>
      	<c:if test="${vo.img eq null} ">
         <img alt="이미지  없음" src="<%=ctx%>/img/no_img.png"/>
      	</c:if>
      </div>
   </div>
   <hr/>
   <div><h4>서브 이미지</h4></div>
   <div id="inpWrap" style="display: block">
   <c:if test="${vo.roomImgList>0} ">
   		<c:forEach var="img" items="${vo.roomImgList}" varStatus="vs" >
   			<c:if test="${vs.index!=0 }">
	   			<div class="img_wrap">
	   				<img src="<%=ctx%>/upload/${img}" alt="서브이미지">
	   			</div>
   			</c:if>
   		</c:forEach>
   </c:if>
   <c:if test="${vo.img eq null} ">
		<div class="img_wrap">
			<img src="<%=ctx%>/img/no_img.png" alt="이미지 없음">
		</div>
   </c:if>
   </div>
   <hr/>
   <div class="btn">
		<a href="${HOME}/admin/main.do">메인으로 이동</a>
	</div>
	<div class="btn">
		<a href="<%=ctx%>/admin/rTypeEdit.do?room_type_code=${vo.room_type_code}">수정하기</a>
	</div>
</div>
</section>
</body>
</html>