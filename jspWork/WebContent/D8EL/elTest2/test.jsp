<%@page import="java.util.ArrayList"%>
<%@page import="test.dto.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test.jsp</title>
</head>
<body>
<%
	//회원정보를 DB 에서 받아왔다고 가정
	MemDTO dto1=new MemDTO(1,"김태호","노량진");
	MemDTO dto2=new MemDTO(2,"이현진","당구장");
	MemDTO dto3=new MemDTO(3,"주용군","한게임?");
	ArrayList<MemDTO> list=new ArrayList<MemDTO>();
	list.add(dto1);
	list.add(dto2);
	list.add(dto3);
	//request 영역에 dto1 객체를 담고 뷰페이지로 이동!
	request.setAttribute("dto1", dto1);
	pageContext.forward("viewPage.jsp");

%>
<div>
	<h1>el 표현 식으로 자바 변수에 있는 값 접근하기.</h1>
	<p>번호 :${dto1.num }</p>
	<p>이름 :${dto1.name }</p>
	<p>주소 :${dto1.addr }</p>
</div>
</body>
</html>


















