<%@page import="java.util.ArrayList"%>
<%@page import="test.dto.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstl5.jsp</title>
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
	//request 에 배열을 담는다.
	request.setAttribute("myList",list );
	//forward 로 이동한다.
	pageContext.forward("showMember.jsp");
%>

</body>
</html>










