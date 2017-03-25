<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include 지시어</title>
</head>
<body>
<%-- 다른 페이지를 포함 시키는 지시어 (포함 시키면 child.jsp 에 있는 변수를 사용할수 
	있습니다.--%>
<%@include file="child2.jsp" %>
<div>
	<p>
		여기는 parent.jsp 입니다.
	</p>
	<p>
		주인장: <%=name %>
	</p>
</div>
</body>
</html>