<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:if test="${cnt != 0 }">

<script>
alert("회원등록완료.. 로그인페이지로이동..");
location.href="<%=request.getContextPath()%>/member/login.do";
</script>
</c:if>
<c:if test="${cnt <=0 }">
<script>
alert("회원가입실패... 회원가입페이지로이동");
history.back();

</script>



</c:if>