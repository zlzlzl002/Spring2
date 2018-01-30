<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file/insertform.jsp</title>
</head>
<body>
<h3>파일 업로드 폼 입니다.</h3>
<form action="insert.do" method="post" 
			enctype="multipart/form-data">
	<label for="writer">작성자</label>
	<input type="text" id="writer" value="${id }" disabled/><br/>
	<label for="title">제목</label>
	<input type="text" name="title" id="title"/><br/>
	<label for="file">첨부파일</label>
	<input type="file" name="file" id="file" /><br/>
	<button type="submit">업로드</button>
</form>
</body>
</html>


















