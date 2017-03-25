<%@page import="test.dao.MemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//삭제할 글번호를 읽어온다.
	int num = Integer.parseInt(request.getParameter("num"));
	//DAO 객체를 이용해서 해당글을 삭제하고 성공여부를 boolean 형태로 받는다.
	MemDAO dao=MemDAO.getInstance();
	boolean isSuccess=dao.delete(num);
	//결과 값에 따라 다른 alert 창을 띄운다.
	if(isSuccess){%>
		<script type="text/javascript">
			alert("삭제 성공!");
			location.href="showList.jsp";
		</script>
	<%}else{%>
		<script type="text/javascript">
			alert("삭제 실패!");
			location.href="showList.jsp";
		</script>
	<%}%>
	
	
	
	
	
	
	