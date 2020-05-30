<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${result>0}">
	<script>
		alert("객실타입이 등록되었습니다.");
		location.href="<%=ctx%>/admin/rTypeManage.do";
	</script>
</c:if>
<c:if test="${result<=0}">
	<script>
		alert("객실타입 등록에 실패하였습니다.");
		history.go(-1);
	</script>
</c:if>