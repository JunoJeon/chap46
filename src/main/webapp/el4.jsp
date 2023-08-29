<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el4.jsp</title>
</head>
<!-- 

1. pageScope
2. requestScope
3. sessionScope
4. applicationScope

 -->
<body>

<jsp:useBean id="alpha" class = "util.Alpha"/>
<jsp:useBean id="alpha2" class = "util.Alpha" scope="request"/>
<hr>
alpha 				= ${alpha} <br>
alpha 				= ${alpha2} <br>
pageScope.alpha 	= ${pageScope.alpha} <br>
pageScope.alpha		= <%=pageContext.getAttribute("alpha") %> <br>
requestScope.alpha2	 = <%=request.getAttribute("alpha2") %>
</body>
</html>