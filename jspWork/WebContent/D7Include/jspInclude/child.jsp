<%@ page pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//파라미터로 전송되는 값 읽어오기
	String msg=request.getParameter("msg");
%>
<div>
	<p>여기는 child.jsp 입니다.</p>
	<p>파라미터로 전달된 값 : <%=msg %></p>
</div>