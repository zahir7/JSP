<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파라미터로 넘어오는 값 읽어오기
	String name=request.getParameter("name");
	String owner=request.getParameter("owner");
	//쿠키 굽기
	Cookie cookieName=new Cookie("name",name);
	Cookie cookieOwner=new Cookie("owner",owner);
	//쿠키 유통기한 정하기
	cookieName.setMaxAge(60*3);//3분
	cookieOwner.setMaxAge(60*3); //3분
	//쿠키를 클라이언트의 웹브라우저에 심기
	response.addCookie(cookieName);
	response.addCookie(cookieOwner);
%>
<script type="text/javascript">
	alert("쿠키를 심었습니다.<%=name%> / <%=owner%>");
</script>