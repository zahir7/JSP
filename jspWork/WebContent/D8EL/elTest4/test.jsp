<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test.jsp</title>
</head>
<body>
<div>
	<h1>EL 표현식으로 연산하기.</h1>
	<p>100 + 50 = ${100+50 }</p>
	<p>100 - 50 = ${100-50 }</p>
	<p>5 * 5 = ${5*5 }</p>
	<p>5 / 5 = ${5/5 }</p>
	<p>100 &gt; 50 ? ${100 gt 50 } 입니다.</p>
	<p>100 &lt; 50 ? ${100 lt 50 } 입니다.</p>
	<p>100 &gt; 50 ? ${100 > 50 } 입니다.</p>
	<p>100 &lt; 50 ? ${100 < 50 } 입니다.</p>
	<p>1 과 2 는 다른가요 ? ${1 != 2 }</p>
	<p>1 과 2 는 같은가요 ? ${1 == 2 }</p>
	<p>10 을 3으로 나눈 나머지는 ? ${10 % 3 }</p>
</div>
</body>
</html>





