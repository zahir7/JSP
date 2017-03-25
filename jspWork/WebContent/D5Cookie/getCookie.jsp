<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getCookie.jsp</title>
</head>
<body>
<%
	//클라이언트에 심어 놓은 쿠키 읽어오기
	Cookie[] cookies=request.getCookies();
	if(cookies!=null){
		//반복문 돌면서 배열에 있는 내용 읽어와서 출력하기
		for(Cookie tmp: cookies){
			//쿠키 이름 (key 값)
			String cookName=tmp.getName();
			//쿠키 값 (value 값)
			String cookValue=tmp.getValue();
			out.println("쿠키이름:"+cookName+" 값:"+cookValue+"<br/>");
		}
	}else{
		out.println("쿠키가 존재하지 않아요!");
	}
%>
</body>
</html>













