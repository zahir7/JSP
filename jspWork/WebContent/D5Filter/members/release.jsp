<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>release.jsp</title>
</head>
<body>
<%	
	//세션에 담긴 아이디 값을 읽어온다.
	String id=(String)session.getAttribute("id");
	if(id==null){ //로그인 하지 않은 회원이라면%>
		<script type="text/javascript">
			alert("회원 전용 공간입니다. 로그인 페이지로 이동합니다.");
			location.href="/Day05_Filter/login/loginForm.html";
		</script>
	<%}%>
<div>
	<%=id %>회원님! 쉬어 가는 페이지 입니다.<br/>
	<a href="/Day05_Filter/login/logout.jsp">로그아웃하기</a>
</div>
</body>
</html>













