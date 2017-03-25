<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <h2> c.jsp ют╢о╢ы..!!</h2>
    <%
    	String msg = request.getParameter("msg");
    	String id = request.getParameter("id");
    %>
    
    <font size="5">
    	msg => <%=msg %>
    	id => <%=id %>
    </font>