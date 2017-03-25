<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main.jsp</title>
</head>
<body>
<script type="text/javascript">
	//윈도우 로딩이 끝났을때 호출되는 함수
	window.onload=function(){
		showPopup(); //팝업창을 띄우는 함수를 호출한다.
	};
	
	function showPopup(){
		//팝업창을 무조건 띄우는 것이 아니고 쿠키에 popup 이라는 쿠키가 있으면 띄우지 말고
		//쿠키가 없을때는 팝업창을 띄우기로 한다.
		//쿠키값 읽어오기
		<%
			Cookie[] cookies=request.getCookies();
			boolean isShow = true; //팝업창을 띄울지에 대한 여부
			if(cookies!=null){
				for(Cookie tmp: cookies){
					String name=tmp.getName();
					String value=tmp.getValue();
					if(name.equals("popup") && value.equals("no")){
						isShow=false;
						break;
					}//if
				}//for
			}//if
			//팝업창 띄우기
			if(isShow){%>
				//자바 스크립트 기본 객체 window 객체의 함수를 이용해서 팝업창을 띄운다.
				window.open("popup.jsp", "쇼핑정보", "width=300, height=300");	
			<%}%>
			
	}
</script>
<div>
	<h1>우리우리 홈쇼핑</h1>
	<p>미리 봄을 준비 하세요</p>
</div>
</body>
</html>













