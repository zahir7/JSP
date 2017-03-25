<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>removeMsg.jsp</title>
</head>
<body>
<%
	//application 영역에 저장된값 삭제하기
	application.removeAttribute("msg");
%>
<script type="text/javascript">
	alert("삭제 되었습니다.");
	location.href="../index.html"; //자바스크립트에서 페이지 이동방법
</script>
</body>
</html>