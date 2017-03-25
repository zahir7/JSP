<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>receive.jsp</title>
</head>
<body>
<!-- request 영역에서 dto 객체를 읽어와서 출력하기 -->
<div>
	<p>번호:${requestScope.dto.num }</p>
	<p>이름:${requestScope.dto.name }</p>
	<p>주소:${requestScope.dto.addr }</p>
</div>
<!-- 세션 영역에 담긴 아이디값 읽어오기. -->
<div>
	<p>아이디: ${sessionScope.id }</p>
</div>

<!-- pageScope,requestScope,sessionScope,appliactionScope 생략가능 -->
<div>
	<p>번호:${dto.num }</p>
	<p>이름:${dto.name }</p>
	<p>주소:${dto.addr }</p>
</div>
<div>
	<p>아이디: ${id }</p>
</div>
</body>
</html>






