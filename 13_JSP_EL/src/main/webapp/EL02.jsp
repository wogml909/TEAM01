<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL에서 사용하는 내장 객체</title>
</head>
<body>
  <h1>EL에서 사용하는 내장객체</h1>
  <h2>request Scope 속성 : ${requestScope.name }</h2>
  <% 
     pageContext.setAttribute("pname", "페이지");
     request.setAttribute("name","김조은"); 
     request.getRequestDispatcher("EL02_pro.jsp").forward(request, response);  
  %>
  
</body>
</html>