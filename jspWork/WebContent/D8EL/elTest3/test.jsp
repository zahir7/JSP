<%@page import="test.dto.MemDTO"%>
<%@ page pageEncoding="UTF-8"%>
<%
	//세션에 아이디 담기
	session.setAttribute("id", "myID");

	MemDTO dto=new MemDTO(1, "김태호", "노량진");
	//request 영역에 담는다.
	request.setAttribute("dto", dto);
	//forword 혹은 redirect 로 이동해본다.
	
	//1.forword 이동
	//pageContext.forward("receive.jsp");
	//2.redirect 이동
	response.sendRedirect("receive.jsp");
%>
