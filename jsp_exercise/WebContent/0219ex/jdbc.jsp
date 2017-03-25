<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="testex.*"  %>
<%@ page import="java.util.*" %>
<%
	DAO dao = new DAO();
	ArrayList<DTO> list = dao.select();
	for(DTO dto : list){
	%> <%=dto.getId() %>
		<%=dto.getPw() %>
		<%=dto.getName() %>
		<%=dto.getJumin1() %>
		<%=dto.getJumin2() %>
		<%=dto.getAddr() %>
		<%=dto.getBirth1() %>
		<%=dto.getBirth2() %>
		<%=dto.getPhone1() %>
		<%=dto.getPhone2() %>
		<%=dto.getPhone3() %>
		<%=dto.getGender() %>
		<%=dto.getEmail1() %>
		<%=dto.getEmail2() %>
		<%=dto.getEmailox() %>
		<%=dto.getReg() %> <br/>
   <%} %>


