<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${result>0}">
	<script>
		alert("이벤트가 등록되었습니다.");
		location.href="<%=request.getContextPath()%>/admin/eventManage.do";
	</script>
</c:if>
<c:if test="${result<=0}">
	<script>
		alert("이벤트 등록실패 하였습니다.");
		history.go(-1);
	</script>
</c:if>