<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstlTest.jsp</title>
</head>
<body>
<%
	if(100 > 50){
		out.print("100 은 50보다 커요!");
	}
%>
<c:if test="${100 > 50 }">
	100 은 50 보다 커요
</c:if>
<c:if test="${100 < 50 }">
	100 은 50 보다 작아요
</c:if>
<br/>
<%
	for(int i=1 ; i <= 100; i=i+10){
		out.print(i+" ");
	}
%>
<br/>
<!-- 반복문 사용하기. -->
<c:forEach var="i" begin="1" end="100" step="10">
	${i }
</c:forEach>
</body>
</html>








