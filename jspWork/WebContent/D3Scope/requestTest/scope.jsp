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
	//폼 전송된 값을 읽어온다.
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//request 영역에 값 담기
	request.setAttribute("weather", "오늘 날씨는 추워요!");
%>
<script type="text/javascript">
	alert("<%=id%> 회원님 반갑습니다.");
</script>
<%
	//페이지 이동하기
	//1.redirect 방식으로 이동하기
	//response.sendRedirect("redirectTest.jsp");
	//2.forward 방식으로 이동하기
	pageContext.forward("forwardTest.jsp");
%>
</body>
</html>















