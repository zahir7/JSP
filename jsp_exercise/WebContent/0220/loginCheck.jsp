<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String sId = (String)session.getAttribute("sessId");
	String sPw = (String)session.getAttribute("sessPw");
%>
���� => <%=sId %> <br />
���� => <%=sPw %> <br />
	
