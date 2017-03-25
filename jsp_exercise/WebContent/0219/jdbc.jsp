<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="test.db.*"  %>
<%@ page import="java.util.*" %>
<%
	DAO dao = new DAO();
	ArrayList<DTO> list = dao.select();
	for(DTO dto : list){
	%> <%=dto.getId() %>
		<%=dto.getPw() %>
		<%=dto.getAge() %>
		<%=dto.getReg() %> <br/>
   <%} %>


