<%@page import="test.dto.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register.jsp</title>
</head>
<body>
<%	//인코딩 설정하기
	request.setCharacterEncoding("utf-8");
%>
<!-- 아래의 코드는 자바 코드의  MemDTO dto=new MemDTO(); 와 같다 -->
<jsp:useBean id="dto" class="test.dto.MemDTO"/>

<!-- 빈 객체에 모든 필드값을 다 넣어줄때 -->
<jsp:setProperty property="*" name="dto"/>

[[전송된 회원정보 출력해보기]]<br/>
번호 : <%=dto.getNum() %><br/>
이름 : <%=dto.getName() %><br/>
주소 : <%=dto.getAddr() %>
</body>
</html>











