<%@page import="test.dao.LoginDAO"%>
<%@page import="test.dto.LoginDTO"%>
<%@ page pageEncoding="UTF-8"%>
<%
	//폼 전송되서 넘어오는 값을 읽어온다.
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd1");
	System.out.println("아이디:"+id+"비밀번호:"+pwd);
	//읽어온 값을 이용해서 DTO 객체를 생성한다
	LoginDTO dto = new LoginDTO(id,pwd);
	//DAO 객체의 참조값을 얻어와서 DB 에 저장한다.
	LoginDAO dao = LoginDAO.getInstance();
	boolean isSuccess = dao.insert(dto);
	
	//결과 값에 따라 다른 작업을 한다.
	if(isSuccess){%>
		<script type="text/javascript">
			alert("회원가입 성공! 로그인 페이지로 이동합니다.");
			location.href="../login/loginForm.html";
		</script>
	<%}else{%>
		<script type="text/javascript">
			alert("회원가입 실패");
			location.href="memberForm.html";
		</script>
	<%}%>









