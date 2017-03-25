<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <h2> request 내부객체!! </h2>

    <%
    	String id = request.getRemoteAddr();
    	StringBuffer url = request.getRequestURL();
    	String uri = request.getRequestURI();
    	String path = request.getContextPath();
    	String method = request.getMethod();
    %>
    	
    <font size="5">
    	클라이언트 IP => <%=id %> <br/>
    	요청 URL => <%=url %> <br/>
    	요청 URI => <%=uri %> <br/>
    	요청 ContextPath => <%=path %> <br/>
    	접속방식  => <%=method %> <br/>
    </font>