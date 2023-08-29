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
<title>el7.jsp</title>
</head>
<!-- 

1. pageScope
2. requestScope
3. sessionScope
4. applicationScope

 -->
<body>

<h1>EL 산술연산</h1>
1 + 2 = ${ 1 + 2 }<br>
1 - 2 = ${ 1 - 2 }<br>
1 * 2 = ${ 1 * 2 }<br>
1 / 2 = ${ 1 / 2 }<br>

<h1>EL 관계연산</h1>
3 < 5 = ${ 3 < 5 }<br>
3 <= 5 = ${ 3 <= 5 }<br>
3 >= 5 = ${ 3 >= 5 }<br>
3 > 5 = ${ 3 > 5 }<br>
3 == 5 = ${ 3 == 5 } ${ 3 eq 5 }<br>
3 != 5 = ${ 3 != 5 } <%-- ${ 3 ne 5 } --%><br>

<h1>EL 논리연산</h1>
true &&	true = ${ true && true } ${ true and true }<br>
false || true = ${ false || true } ${ true or ture }<br>
!true = ${ !true } ${ not true } <br>
true ? "참" : "거짓" =  ${ 10>5 ? "참" : "거짓" } <br>

<h1>배열, 리스트</h1>
<%
	String[] lang = {"java", "python", "sql"};
	pageContext.setAttribute("lang", lang);
	
	var list = new ArrayList<Integer>();
	list.add(500);
	list.add(300);
	list.add(700);
	pageContext.setAttribute("list", list);
	
	var map = new HashMap();
	map.put("java", 20000);
	map.put("python", 10000);
	map.put("sql", 30000);
	
	pageContext.setAttribute("map", map);
%>
lang[0] = ${lang[0]}<br>
lang[1] = ${lang[1]}<br>
lang[2] = ${lang[2]}<br>
list[0] = ${list[0]}<br>
list[1] = ${list[1]}<br>
list[2] = ${list[2]}<br>
map[1] = ${map.put[1]}	<br>


</body>
</html>