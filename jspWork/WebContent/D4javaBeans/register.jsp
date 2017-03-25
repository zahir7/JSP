<%@page import="test.dto.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register.jsp</title>
</head>
<body>
<%
	//폼 전송된 값을 읽어온다.
	request.setCharacterEncoding("utf-8");

	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	
	//전송된 내용 
	System.out.println(num+"/"+name+"/"+addr);
	
	//DTO 객체 생성
	MemDTO dto=new MemDTO();
	dto.setNum(num);
	dto.setName(name);
	dto.setAddr(addr);
	
	//dto 객체를 인자로 전달하고 DB 에 저장하는 작업을 한다.
%>
[[전송된 회원정보 출력해보기]]<br/>
번호 : <%=dto.getNum() %><br/>
이름 : <%=dto.getName() %><br/>
주소 : <%=dto.getAddr() %>
</body>
</html>











