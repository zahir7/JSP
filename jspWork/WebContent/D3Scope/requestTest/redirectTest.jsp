<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>redirectTest.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	System.out.println("id :"+id);
	//request 영역에 저장된 값 읽어오기.
	String w=(String)request.getAttribute("weather");
%>
<script type="text/javascript">
	alert("오늘 날씨 :<%=w %>");
</script>
</body>
</html>