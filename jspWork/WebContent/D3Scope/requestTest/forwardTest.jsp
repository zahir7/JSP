<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forwardTest.jsp</title>
</head>
<body>
<%
	//request 영역에 있는 값 읽어오기
	String w=(String)request.getAttribute("weather");
%>
오늘 날씨 : <%=w %><br/>
<a href="../index.html">인덱스 페이지로 가기(상대경로)</a><br/>
<a href="/Day03_Scope/index.html">인덱스 페이지로 가기(절대경로)</a>
</body>
</html>