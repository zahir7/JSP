<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <h2> request ���ΰ�ü!! </h2>

    <%
    	String id = request.getRemoteAddr();
    	StringBuffer url = request.getRequestURL();
    	String uri = request.getRequestURI();
    	String path = request.getContextPath();
    	String method = request.getMethod();
    %>
    	
    <font size="5">
    	Ŭ���̾�Ʈ IP => <%=id %> <br/>
    	��û URL => <%=url %> <br/>
    	��û URI => <%=uri %> <br/>
    	��û ContextPath => <%=path %> <br/>
    	���ӹ��  => <%=method %> <br/>
    </font>