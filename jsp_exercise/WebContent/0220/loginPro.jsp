<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	// DB ���� id, pw üũ
	
	session.setAttribute("sessId", id);
	session.setAttribute("sessPw", pw);
	out.println("���� ���� �Ϸ�");
	
%>
   