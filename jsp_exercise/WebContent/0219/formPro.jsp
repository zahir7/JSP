<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="test.db.*" %>

<jsp:useBean id="dto" class="test.db.DTO" />
<jsp:setProperty property="*" name="dto" />

<%
	DAO dao = new DAO();
	dao.insert(dto);
	out.println("insert Success");
%>