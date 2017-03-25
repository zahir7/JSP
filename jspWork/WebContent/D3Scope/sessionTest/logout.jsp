<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>logout.jsp</title>
</head>
<body>
<%
	//세션에서 값을 지우는 방법
	//1.저장한 키값 을 이용해서 지운다.
	session.removeAttribute("id");
	//2.또 다른 방법은 세션을 초기화 한다.
	session.invalidate();
%>
<script type="text/javascript">
	alert("로그아웃 되었습니다.");
</script>
</body>
</html>





