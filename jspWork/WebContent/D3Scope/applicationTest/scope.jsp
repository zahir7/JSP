<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	//폼전송된 값을 읽어온다.
	String msg=request.getParameter("content");
	//application 영역에 담는다.
	application.setAttribute("msg", msg);
%>
<script type="text/javascript">
	alert("application 영역에 <%=msg%> 가 저장되었습니다.");
</script>
</body>
</html>











