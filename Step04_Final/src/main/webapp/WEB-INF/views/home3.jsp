<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<div class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Home</a>
			<a class="navbar-text pull-center" href="file/list.do">자료실</a>
			<a class="navbar-text pull-center" href="cafe/list.do">카페 글</a>
		</div>
		<c:choose>
			<c:when test="${empty id }">
				<a class="navbar-text navbar-link pull-right" href="users/loginform.do">로그인</a>
				<p class="navbar-text pull-right"><a class="navbar-link" href="users/signup_form.do">회원가입</a></p>
			</c:when>
			<c:otherwise>
				<a class="btn btn-warning btn-xs navbar-btn pull-right" href="users/logout.do">로그아웃</a>
				<p class="navbar-text pull-right"><a class="navbar-link" href="users/info.do"><strong>${id }</strong></a>님 로그인중... </p>
			</c:otherwise>
		</c:choose>
	</div>
</div>
</body>
</html>








