<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="testex.*" %>

<jsp:useBean id="dto" class="testex.DTO" />
<jsp:setProperty property="*" name="dto" />

<%
	DAO dao = new DAO();
	dao.insert(dto);
	out.println("insert Success");
%>