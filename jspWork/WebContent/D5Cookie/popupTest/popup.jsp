<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>popup.jsp</title>
<script type="text/javascript">
	//창닫는 함수
	function closeWindow(){
		//폼전송하기
		document.myForm.submit();
	}
</script>
</head>
<body>
<%
	//파라미터로 전송되는 값 읽어오기
	String chk=request.getParameter("chk");
	System.out.println(chk);
	//체크 박스를 체크를 했다면
	if(chk!=null){ 
		//팝업창을 띄우기를 원하지 않는다면 쿠키를 만들어서 심어 놓는다.
		Cookie cook=new Cookie("popup","no");
		cook.setMaxAge(60); //쿠키 유효 시간 1분으로
		//쿠키 심기
		response.addCookie(cook);%>
		<script type="text/javascript">
			//창닫기.
			self.close();
		</script>
	<%}%>    
<div>
	<p>저렴하고 좋은 상품 있어요</p>
	<p>나이키 운동화 1만원(짝퉁일지도 모름)</p>
	<p>나이키 운동복 1만원</p>
	<p>똥가방 12만원</p>
<form method="post" action="popup.jsp" name="myForm">
	<input type="checkbox" name="chk" value="no"/>1분동안 보이지 않기<br/>
	<a href="javascript:closeWindow()">닫기</a>
</form>
</div>
</body>
</html>


