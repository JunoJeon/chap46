<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan.jsp</title>
</head>
<body>
<c:forEach var="i" begin="1" end="9">
	<h3>${i}단</h3>
	<ul>
	<c:forEach var="j" begin="1" end="9">
		<c:choose>
			<c:when test="${i*j%3==0}">
				<li style = "color : red;">${i} X ${j} = ${i*j} <br></li>
			</c:when>
			<c:when test="${i*j%5==0}">
				<li style = "color : blue;">${i} X ${j} = ${i*j} <br></li>
			</c:when>
			<c:otherwise>
				<li>${i} X ${j} = ${i*j} <br></li>
			</c:otherwise>
		</c:choose>	
	</c:forEach>
	</ul>
	<hr>
</c:forEach>

</body>
</html>