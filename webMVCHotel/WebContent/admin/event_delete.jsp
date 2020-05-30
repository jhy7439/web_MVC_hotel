<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${cnt>0}">
 	<script>
 		alert("이벤트 글이 삭제되었습니다.");
 		location.href="<%=request.getContextPath()%>/admin/eventManage.do"
 	</script>
</c:if>
<c:if test="${cnt<=0}">
	<script>
 		alert("이벤트 글을 삭제 실패하였습니다. 글 내용 보기로 이동합니다.");
 		history.back();
 	</script>
</c:if>