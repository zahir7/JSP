<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>parent.jsp</title>
</head>
<body>
<div>
	<p>여기는 parent.jsp 입니다.</p>
</div>
<jsp:include page="child.jsp">
	<jsp:param value="안녕 child야!" name="msg"/>
</jsp:include>
</body>
</html>