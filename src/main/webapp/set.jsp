<%@page import="java.util.HashSet"%>
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
<title>set.jsp</title>
</head>
<body>

<c:set var="i" value="100"/>
<c:set var="i" value="${ i+200 }"/>
i = ${i} <br>
<c:remove var="i"/>
i = ${empty i ? "없음" : "있음"} <br>
i = ${i} <br>

</body>
</html>