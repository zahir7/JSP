<%@ page pageEncoding="UTF-8"%>
<%
	//비동기로 전송된 값을 읽어온다.
	request.setCharacterEncoding("utf-8");
	String num=request.getParameter("num");
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	//출력해보기
	System.out.println("비동기 전송된 정보:"+num+"/"+name+"/"+addr);
%>