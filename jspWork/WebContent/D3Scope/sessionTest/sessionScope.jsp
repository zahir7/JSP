<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sessionScope.jsp</title>
</head>
<body>
<%
	//세션에 담긴 정보 읽어오기
	String id=(String)session.getAttribute("id");
%>
<%=id %> 회원님 반갑습니다.<br/>
<a href="../index.html">인덱스 페이지로 이동</a><br/>
<a href="logout.jsp">로그아웃</a>
</body>
</html>












