<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${result>0}">
 	<script>
 		alert("객실타입이 삭제되었습니다.");
 		lacation.href="<%=ctx%>/admin/rTypeManage.do"
 	</script>
</c:if>
<c:if test="${result<=0}">
	<script>
 		alert("객실타입 삭제 실패하였습니다.");
 		history.back();
 	</script>
</c:if>