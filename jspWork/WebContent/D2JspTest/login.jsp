<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<%-- 
	[[ jsp 페이지의 요소 ]]
	1.HTML 영역  => 정적인 영역이다.
	2.지시어 영역 => 디렉티브 <%@ .... %>
	3.스크립트 요소 =>  자바 코드와 관련된 영역
	-표현식 => 값을 출력할때 <%=변수명 %>
	-스크립트릿 => 서블릿의 service() 메소드 내부 영역이라고 생각하면 됨  <% ..... %>
	-선언부 => 전역변수 혹은 맴버 메소드를 추가할때 <%! .... %> 
	선언부는  클래스 내부라고 생각하면됨
 --%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
</head>
<body>
<%
	//폼 전송된 파라미터를 읽어온다.
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	//DB 에 해당정보가 있는지 확인 하고 메세지를 출력한다.
	
	if(id.equals("song") && pwd.equals("1234")){
		//회원이 맞는 경우
%>
	<script type="text/javascript">
		alert("회원님 반갑습니다.");
	</script>
<%
	}else{
		//회원이 아닌경우
%>
	<script type="text/javascript">
		alert("아이디 혹은 비밀번호가 틀려요!");
	</script>
<% 		
	}
%>
</body>
</html>



















