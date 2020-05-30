<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="${HOME}/css/admin.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="${HOME}/js/admin.js"></script>
</head>
<body>
<section>
<div class="container">
	<div><h2>객실 관리 페이지</h2></div>
	<div>객실 리스트</div>
		<ul id="roomList">
			<li>번호</li>
			<li>객실호수</li>
			<li>객실타입</li>
			<li>입장인원</li>
			<li>객실요금</li>
			<li>객실상태</li>
			<li>체크인</li>
			<li>체크아웃</li>
			<li>이벤트</li>
			<li></li>
			<li>1</li>
			<li>1001</li>
			<li>Standard</li>
			<li>2명</li>
			<li>100,000원</li>
			<li>사용가능</li>
			<li>2020.05.19</li>
			<li>2020.05.24</li>
			<li class="wordCnt">여름시즌이벤트</li>
			<li>수정</li>
			<li>2</li>
			<li>1003</li>
			<li>Deluxe</li>
			<li>3명</li>
			<li>110,000원</li>
			<li>사용가능</li>
			<li>2020.05.19</li>
			<li>2020.05.24</li>
			<li class="wordCnt">여름시즌이벤트</li>
			<li>수정</li>
			<li>3</li>
			<li>2001</li>
			<li>Suite</li>
			<li>4명</li>
			<li>200,000원</li>
			<li>사용중</li>
			<li>2020.05.19</li>
			<li>2020.05.24</li>
			<li class="wordCnt">여름시즌이벤트</li>
			<li>수정</li>
		</ul>
		<div>
			<!-- 페이징 -->
			<c:if test="">
				prev
			</c:if>
			<!-- 현재 페이지가 1페이지 일때 -->
			<c:if test="">
			</c:if>
			<!-- 페이지 -->
			<c:forEach var="i" begin="" end="">
				<c:if test="">
				</c:if>
			</c:forEach>
			<!-- 현재 페이지가 마지막 일때 -->
			<c:if test="">
			</c:if>
		</div>
		<div>
			<!-- 검색 -->
			<form id="searchFrm" action="">
				<select name="searchKey">
					<option value="room_Num">객실호수</option>
					<option value="room_type">객실타입</option>
					<option value="room_status">객실상태</option>			
				</select>
				<input type="text" name="searchWord" id="searchWord"/>
				<input type="submit" value="검색"/>
			</form>
		</div>
		<div>
			<!-- 침대등록 -->
			<a class="btn" href="${HOME}/admin/rTypeManage.do">메인으로</a>
			<!-- 객실등록 -->
			<a  class="btn" href="${HOME}/admin/roomAdd.do">객실 등록</a>
		
		</div>
		</div>
	</section>
</body>
</html>