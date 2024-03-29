<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>requestScope name 속성</title>
</head>
<body>
  <h1>EL에서 사용하는 내장객체</h1>
  <% pageContext.setAttribute("pname","123"); %>
  <h2>page Scope 속성 : ${pname}</h2>
  <h2>request Scope 속성 : ${requestScope.name }</h2>
</body>
</html>