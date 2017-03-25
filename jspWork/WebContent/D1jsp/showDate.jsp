<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>showDate.jsp</title>
</head>
<body>
<% 
	//날짜 객체 생성하기
	Date d=new Date();
	out.println("오늘 날짜:"+d);
	int num=1;
	String name="홍길동";
	
%>
<table border="1">
	<tr>
		<td>번호</td><td>이름</td>
	</tr>
	<tr>
		<td><%=num %></td><td><%=name %></td>
	</tr>
</table>	

</body>
</html>










