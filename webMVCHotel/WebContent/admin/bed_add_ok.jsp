<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${result>0}">
	<script>
		alert("침대가 등록되었습니다.");
		location.href="<%=request.getContextPath()%>/admin/bedManage.do"	
	</script>
</c:if>
<c:if test="${result<=0 }">
	<script>
		alert("침대등록 실패하였습니다.");
		history.back();
	</script>
</c:if>