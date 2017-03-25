<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	// DB 楷搬 id, pw 眉农
	
	session.setAttribute("sessId", id);
	session.setAttribute("sessPw", pw);
	out.println("技记 积己 肯丰");
	
%>
   