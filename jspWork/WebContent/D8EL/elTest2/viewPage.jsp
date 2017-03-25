<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>viewPage.jsp</title>
</head>
<body>
<!-- request 영역에 담긴 내용 출력해보기 -->
<div>
	<p>번호: ${requestScope.dto1.num }</p>
	<p>이름: ${requestScope.dto1.name }</p>
	<p>주소: ${requestScope.dto1.addr }</p>
</div>
<div>
	<p>번호: ${dto1.num }</p>
	<p>이름: ${dto1.name }</p>
	<p>주소: ${dto1.addr }</p>
</div>
</body>
</html>







