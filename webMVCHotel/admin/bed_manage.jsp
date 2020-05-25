<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	//침대 데이터 삭제
	function delBed(bed_code){
		
		if(confirm("삭제하시겠습니까?")){
			location.href="<%=ctx%>/admin/bedDel.do?bed_code="+bed_code;
		}
	}
</script>
</head>
<body>
<section>
<div class="container">
<div><h2>침대 관리 페이지</h2></div>
<h2>침대 목록</h2>
	<div class="btn">
		<a href="${HOME}/admin/main.do">메인</a>
	</div>
	<div class="btn">
		<a href="${HOME}/admin/bedAdd.do">침대 등록</a>
	</div>
	<ul id="bedList">
		<li>침대코드</li>
		<li>침대타입</li>
		<li>추가요금</li>
		<li></li>
		<li></li>
		<c:forEach var="bVo" items="${lst}">
			<li>${bVo.bed_code}</li>
			<li>${bVo.bed_type}</li>
			<li><fmt:formatNumber value="${bVo.bed_rate}" pattern="#,###"/>&nbsp;&nbsp;원</li>
			<li><a href="<%=ctx%>/admin/bedEdit.do?bed_code=${bVo.bed_code}">수정</a></li>
					<!-- 문자일떄 : ('') , 숫자일떄 : ()-->
			<li><a href="javascript:delBed(${bVo.bed_code})">삭제</a></li>
		</c:forEach>	
	</ul>
	
</div>
</section>
</body>
</html>