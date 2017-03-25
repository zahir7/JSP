<%@page import="test.dto.MemDTO"%>
<%@page import="test.dao.MemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update.jsp</title>
</head>
<body> 
<%
	//파라미터로 전달되는 글번호를 이용해서 DB 에서 회원정보를 얻어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	MemDAO dao=MemDAO.getInstance();
	MemDTO dto=dao.getData(num);
%>
<!-- 수정할 폼을 제공한다. -->
<form method="post" action="updateCommit.jsp">
	<!-- 폼전송 했을때 번호값도 전송되도록 하기 위해서 -->
	<input type="hidden" value="<%=dto.getNum() %>" name="num"/>
	
	<table border="2" cellspacing="0" width="300">
		<tr>
			<th>번호</th>
			<td><%=dto.getNum() %></td>
		</tr>
		<tr>
			<th>이름</th>
			<td>
			<input type="text" value="<%=dto.getName()%>" name="name"/>
			</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>
			<input type="text" value="<%=dto.getAddr()%>" name="addr"/>
			</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정"/></td>
		</tr>
	</table>
</form>
</body>
</html>













