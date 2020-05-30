<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 수정되었을때 -->
<c:if test="${result>0}">
	<script>
		alert("이벤트 글이 수정되었습니다. 글 내용 보기로 이동합니다.");
		location.href="<%=request.getContextPath()%>/admin/eventView.do?no=${no}";
	</script>
</c:if>
<!-- 수정 실패시 -->
<c:if test="${result<=0}">
	<script>
		alert("이벤트 글이 수정 실패하였습니다. 수정 페이지로 이동합니다.");
		location.href="<%=request.getContextPath()%>/admin/eventEdit.do?no=${no}";
	</script>
</c:if>