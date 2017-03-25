<%@page import="test.dto.LoginDTO"%>
<%@page import="test.dao.LoginDAO"%>
<%@ page pageEncoding="UTF-8"%>
<%
	//파라미터로 전송된 값을 읽어온다.
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	//전송된 정보로 DTO 객체를 생성한다.
	LoginDTO dto=new LoginDTO(id, pwd);
	//DB 에 실제 id,pwd 정보가 있는지 확인한다.
	LoginDAO dao=LoginDAO.getInstance();
	//회원인지 아닌지 판단해서 boolean 형 변수에 담는다.
	boolean isMember = dao.isMember(dto);
	
	//가상의 로그인 처리를 해준다.
	if( isMember ){
		//세션에 아이디 정보를 담아준다.
		session.setAttribute("id", id);
	%>
		<script type="text/javascript">
			alert("<%=id %> 회원님 반갑습네다. 회원전용페이지로 이동합니다.");
			location.href="../members/target.html";
		</script>
	<%}else{%>
		<script type="text/javascript">
			alert("<%=id %>님 아이디 혹은 비밀 번호가 틀려요!");
			location.href="loginForm.html";
		</script>
	<%}%>