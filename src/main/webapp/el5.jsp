<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el5.jsp</title>
</head>
<!-- 

1. pageScope
2. requestScope
3. sessionScope
4. applicationScope

 -->
<body>
<c:forEach var = "i" begin = "0" end = "10">
	${i}<br>
	${pageScope.i} <br>
	<%=pageContext.getAttribute("i") %>
</c:forEach>

</body>
</html>