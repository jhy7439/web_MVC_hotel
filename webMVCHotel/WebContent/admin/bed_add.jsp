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
	<div><h2>침대 등록 페이지</h2></div>
	<form method="post" id="bedFrm" action="${HOME}/admin/bedAddOk.do">
	<div>
		침대타입 : <input type="text" name="bed_type" id="bed_type" maxlength="30"style="text-align:right"/>
	</div>
	<hr/>
	<div>
		추가가격 : <input type="text" name="bed_rate" id ="bed_rate" value="0" style="text-align:right"/>원
	</div>
	<hr/>
	<div>
		<input type="submit" value="침대등록"/>
		<input type="reset" value="Reset"/>
	</div>
	</form>
</div>
</section>
</body>
</html>