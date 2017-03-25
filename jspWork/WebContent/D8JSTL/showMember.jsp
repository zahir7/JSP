<%@page import="test.dto.MemDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>showMember.jsp</title>
</head>
<body>
<%
	/*
	//request 영역에 담긴 내용을 얻어온다.
	ArrayList<MemDTO> list=
		(ArrayList<MemDTO>)request.getAttribute("myList");
	//반복문 돌면서 출력한다.
	for(MemDTO tmp : list){
		out.print("번호:"+tmp.getNum());
		out.print("이름:"+tmp.getName());
		out.print("주소:"+tmp.getAddr()+"<br/>");
	}
	*/
%>
<!-- 위의 작업을 jstl 과 el 로 한다면. -->
<c:forEach var="tmp" items="${myList }">
	번호 :${tmp.num }
	이름 :${tmp.name }
	주소 :${tmp.addr }<br/>
</c:forEach>
</body>
</html>













