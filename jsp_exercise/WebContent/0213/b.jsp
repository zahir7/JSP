<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <h2> b.jsp ют╢о╢ы..!!</h2>
    
    <%  //response.sendRedirect("c.jsp");	%>
    <jsp:forward page ="c.jsp" >
    	<jsp:param value="java" name="id"/>
    </jsp:forward>
    	