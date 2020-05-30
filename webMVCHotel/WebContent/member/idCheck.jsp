<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/idCheck.css" type="text/css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>아이디 중복검사</title>
<script>

$(function(){
	$("#idSet").click(function(){
		opener.document.getElementById("user_id").value= $("#idSearch").text() ;
		opener.document.getElementById("idStatus").value= "Y";
		self.close();
	});
});

</script>
</head>

<body>
<div class="container" id="container">

<span id="idSearch">${user_id}</span>는
<c:if test="${idresult==0 }">

 사용가능한 아이디입니다.

<input type="button" value="아이디 사용하기" id="idSet"/>
 </c:if>
<c:if test="${idresult==1 }">
 사용불가능 아이디입니다.
</c:if>
<hr/>
<h3>아이디를 입력후 중복검사버튼 누르세요.</h3>
<form method="post" action="<%=request.getContextPath()%>/member/idCheck.do">
<br/>
	<label>
		아이디
	</label>
<br/>	
<input type="text" name="user_id" id="user_id" placeholder="영문, 숫자, 특수기호(_),(-) 조합  5~20자 이내"/>
<input type="submit" value="중복검사하기" id="idCheck"/>

</form>


</div>
</body>
</html>