<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope.jsp</title>
</head>
<body>
<%
	//인코딩 설정하기
	request.setCharacterEncoding("utf-8");
	
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	//DB 에서 로그인 정보를 확인 했다고 가정하고
	//회원의 아이디를 session 영역에 담는다.
	session.setAttribute("id", id); //간단한 로그인 처리
	//페이지 이동을 한다.
	response.sendRedirect("sessionScope.jsp");
%>
</body>
</html>















