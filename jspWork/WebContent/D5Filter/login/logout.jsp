<%@ page pageEncoding="UTF-8"%>
<%
	//로그 아웃 처리 하기 
	//1. 세션에서 id 값을 제거한다.
	session.removeAttribute("id");
	//2. 세션을 초기화 한다.
	//session.invalidate();
%>
<script type="text/javascript">
	alert("로그아웃 되었습니다. 인덱스로 이동합니다.");
	location.herf="/Day05_Filter/index.html";
</script>