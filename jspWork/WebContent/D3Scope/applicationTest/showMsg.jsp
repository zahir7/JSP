<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>showMsg.jsp</title>
</head>
<body>
<%
	//application 영역에 저장된 값 읽어오기
	String msg=(String)application.getAttribute("msg");
%>
application  영역에 저장된 메세지: <%=msg %><br/>
<a href="removeMsg.jsp">메세지 삭제하기</a>
</body>
</html>