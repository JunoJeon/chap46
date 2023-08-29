<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el.jsp</title>
</head>
<body>
<%
	var a = new Alpha();
	pageContext.setAttribute("alpha", a);
	
	var b = pageContext.getAttribute("alpha");
%>
${alpha}
<hr>
<%
	/*
	 *	Scope Object	
	 */
// 	pageContext.setAttribute("num", 100);
// 	request.setAttribute("num", 200);
// 	session.setAttribute("num" , 300);
	application.setAttribute("num", 400);
%>

num = ${num}<br>
<hr>

</body>
</html>