<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 글수정 성공 -->
<c:if test="${result>0}">
	<script>
		alert("침대 수정되었습니다.");
		location.href="<%=request.getContextPath()%>/admin/bedManage.do";
	</script>
</c:if>
<!-- 글수정 실패 -->
<c:if test="${result<=0}">
	<script>
		alert("침대 수정 실패하였습니다.");
		history.go(-1);
	</script>
</c:if>