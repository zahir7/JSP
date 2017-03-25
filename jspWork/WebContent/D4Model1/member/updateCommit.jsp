<%@page import="test.dao.MemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");//인코딩 설정 %>   

<!-- 파라미터로 넘어오는 값을 읽어와서 MemDTO 객체에 담는다. --> 
<jsp:useBean id="dto" class="test.dto.MemDTO"/>
<jsp:setProperty property="*" name="dto"/>

<% 
	//MemDAO 객체를 이용해서 DB에 저장한다.
	MemDAO dao=MemDAO.getInstance();
	boolean isSuccess=dao.update(dto);
	//결과 값에 따라 다른 동작을 하게 한다.
	if(isSuccess){%>
		<script type="text/javascript">
			alert("수정성공!");
			location.href="showList.jsp";
		</script>
	<%}else{%>
		<script type="text/javascript">
			alert("수정실패!");
			location.href="showList.jsp";
		</script>
	<%}%>
	
	
	
	