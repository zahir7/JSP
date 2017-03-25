<%@page import="test.dto.MemDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.dao.MemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>showMember.jsp</title>
</head>
<body>
<%
	//회원 목록을 읽어오기 위해 MemDAO 객체를 생성한다.
	MemDAO dao= MemDAO.getInstance();
	//dao 객체를 이용해서 회원목록을 얻어온다.
	ArrayList<MemDTO> list=dao.getList();
	//반복문 돌면서 클라이언트의 웹브라우저에 출력한다.
	/*
	for(MemDTO tmp : list){
		out.println("번호:"+tmp.getNum()+"이름:"
		+tmp.getName()+"주소:"+tmp.getAddr()+"<br/>");
	}
	*/
%>
	<table border="1" cellspacing="0">
		<caption>회원 목록 입니다.</caption>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주소</th>
		</tr>
<%
	//반복문 돌면서 row 를 만들기 위해
	for(MemDTO tmp : list){
%>
		<tr>
			<td><%=tmp.getNum() %></td>
			<td><%=tmp.getName() %></td>
			<td><%=tmp.getAddr() %></td>
		</tr>
<% 		
	}
%>		
</table>

</body>
</html>













