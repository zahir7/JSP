<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:forTokens var="car" items="a,b,c,d,e" delims=",">
	�̸� : <c:out value="${car}" /> <br>
</c:forTokens>
