<%@page import="java.util.Arrays"%>
<%@page import="java.util.Locale"%>
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
<title>triangle.jsp</title>
</head>
<body>
<!--  
1.		2. 		3.		 4.	
*		*****	*****	 	*	
**		 ****	****	   **
***		  ***	***	   	  ***
****	   **	**	  	 ****
*****	    *	*	 	*****
-->
<hr>
<h1> 1. </h1>
<table>
	<c:forEach var="i" begin="0" end="4">
		<tr>
			<c:forEach var="j" begin="0" end="${i}">
				<c:choose>
                    <c:when test="${i >= j}">
                        <td>*</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
			</c:forEach>
		</tr>
	</c:forEach>
</table>
<hr>
<h1> 2. </h1>
<table>
	<c:forEach var="i" begin="0" end="4">
		<tr>
			<c:forEach var="j" begin="0" end="4">
				<c:choose>
                    <c:when test="${i <= j}">
                        <td>*</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
			</c:forEach>
		</tr>
	</c:forEach>
</table>
<hr>
<h1> 3. </h1>
<table>
	<c:forEach var="i" begin="0" end="4">
		<tr>
			<c:forEach var="j" begin="0" end="4">
				<c:choose>
                    <c:when test="${i + j <= 4}">
                        <td>*</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
			</c:forEach>
		</tr>
	</c:forEach>
</table>
<hr>
<h1> 4. </h1>
<table>
	<c:forEach var="i" begin="0" end="4">
		<tr>
			<c:forEach var="j" begin="0" end="4">
				<c:choose>
                    <c:when test="${i + j >=  4}">
                        <td>*</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
			</c:forEach>
		</tr>
	</c:forEach>
</table>
<hr>


</body>
</html>