<%@page import="test.dao.MemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insert.jsp</title>
</head>
<body>
<!-- 한글 깨지지 않도록 인코딩 설정한다. -->
<% request.setCharacterEncoding("utf-8"); %>
<!-- jsp 테그를 이용해서 폼 전송 되는 값을 DTO 에 저장한다. -->
<jsp:useBean id="dto" class="test.dto.MemDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	//MemDAO 객체의 참조값을 얻어온다.
	MemDAO dao=MemDAO.getInstance(); 
	//DB 에 저장하고 결과 값을  boolean 형태로 받는다.
	boolean isSuccess=dao.insert(dto);
%>
<script type="text/javascript">
	if(<%=isSuccess%>){
		alert("가입성공!");
		//자바 스크립트에서 페이지 이동방법
		location.href="showList.jsp";
	}else{
		alert("가입실패!");
		location.href="insertForm.html";
	}
</script>
</body>
</html>












