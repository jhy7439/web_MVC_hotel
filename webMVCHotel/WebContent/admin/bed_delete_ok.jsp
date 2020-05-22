<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${result > 0}">
	<script>
		alert("침대 데이터를 삭제했습니다.");
		location.href="<%=ctx%>/admin/bedManage.do"
	</script>
</c:if>
<c:if test="${result <= 0}">
	<script>
		alert("침대 데이터 삭제 실패했습니다.");
		history.back();
	</script>
</c:if>