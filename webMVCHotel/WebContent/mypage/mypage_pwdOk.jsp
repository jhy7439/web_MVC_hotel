<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${logStatus==null || logStatus=='N' }">
<script>

	alert("로그인후 접속이 가능합니다.");
	location.href="<%=request.getContextPath()%>/member/login.do";

</script>
</c:if>
<c:if test="${pwdStatus==null || pwdStatus=='N' }">
<script>

	alert("현재 비밀번호가 일치하지 않습니다.");
	location.href="<%=request.getContextPath()%>/mypage/mypage_pwd.do";

</script>
</c:if>
<c:if test="${ result <=0 }">
<script>
	alert("비밀번호 수정에 실패하였습니다... 수정페이지로 이동");
	location.href="<%=request.getContextPath()%>/mypage/mypage_remake.do";
</script>
</c:if>
<c:if test="${result >0 }">

<script>
alert("비밀번호가 수정되었습니다.");
location.href="<%=request.getContextPath()%>/mypage/mypage_remake.do";

</script>

</c:if>
