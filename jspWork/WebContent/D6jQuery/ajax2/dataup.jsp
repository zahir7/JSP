<%@ page pageEncoding="UTF-8"%>
<%
	//클라이언트가 비동기 방식으로 post 전송한 데이터를 읽어와서 확인해본다.
	
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String msg=request.getParameter("msg");
	System.out.println("이름:"+name+" msg: "+msg);
	//클라이언트에 데이타 보내기
	out.print("<p>클라이언트야 메세지 잘받았어</p>");
%>