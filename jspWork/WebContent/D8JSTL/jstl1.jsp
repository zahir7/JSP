<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstl1.jsp</title>
</head>
<body>
<%
	request.setAttribute("id", "taeho");
%>
request 영역에 저장된 값 : ${id }<br/>

<!-- jstl 에서 변수 선언하고 값 넣기 -->
<c:set var="name" value="김태호"></c:set>
변수에 저장된 name : ${name }<br/>

<c:set var="num1" value="10"></c:set>
<c:set var="num2" value="10"></c:set>
num1 + num2 = ${num1+num2 }<br/>

<!-- jstl 을 이용한 출력 -->
<c:out value="나야나!!"></c:out><br/>
<c:out value="${name }"></c:out><br/>

<!-- 자바 객체를 jstl 변수에 넣기 -->
<%
	Date date=new Date();
%>

<c:set var="today" value="<%=date %>"></c:set>

오늘 날짜: <c:out value="${today }"></c:out>
</body>
</html>











