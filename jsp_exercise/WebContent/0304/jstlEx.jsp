<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core" %>
	
<c:forEach var="head" items="${headerValues}">
	param: <c:out value="${head.key}" /> <br>
</c:forEach>

<c:forEach var="a" begin="1" end="10" step="1">
	${a} <br />
</c:forEach>