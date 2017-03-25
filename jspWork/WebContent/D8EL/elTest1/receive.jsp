<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>receive.jsp</title>
</head>
<body>
<!-- 표현언어(Expression Language) 
	새로운 스크립트 언어로서 JSP 기본문법을 보완하는 역활을 한다. 
	표현 언어는 다음과 같은 기능을 제공한다.
	
	1.JSP 의 4가지 기본객체(page,request,session,application)가 
	제공하는 영역의 속성사용
	2.집합 객체에 대한 접근 방법 제공
	3.수치연산,관계연산,논리연산자 제공
	4.자바클래스 메서드 호출기능 제공
	5.표현 언어만의 기본 객체 제공	
	
	형태 =>  
 -->
 <%
 	String num=request.getParameter("num");
 %>
 폼 전송된 번호: <%=num %>
 <div>
 	<p>폼 전송된 번호: ${param.num }</p>
 	<p>폼 전송된 이름: ${param.name }</p>
 	<p>폼 전송된 주소: ${param.addr }</p>
 </div>
</body>
</html>








