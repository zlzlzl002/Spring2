<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정 확인 page</title>
</head>
<body>
<script>
	alert("${num} 번 글을 수정하였습니다.");
	location.href="${pageContext.request.contextPath}/cafe/detail.do?num=${num}";
</script>
</body>
</html>