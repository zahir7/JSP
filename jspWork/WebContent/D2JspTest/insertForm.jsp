<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insertForm.jsp</title>
</head>
<body>
<%
	//클라이언트가 form 전송한 값을 읽어온다.
	request.setCharacterEncoding("utf-8"); //인코딩 설정(한글)
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	//동일한 변수명으로 여러개의 value 값이 전송되면 배열로 받아야한다.
	String[] hobby=request.getParameterValues("hobby");
	
	String age=request.getParameter("age");
	String job=request.getParameter("job");
	
	//전송이 잘되는지 콘솔창에 출력해서 확인해보기.
	System.out.println("아이디:"+id);
	System.out.println("비밀번호:"+pwd);
	System.out.println("취미:");
	//반복문 돌면서 모든 취미를 출력해보기.
	for(String tmp: hobby){
		System.out.println(tmp +" / ");
	}
	
	System.out.println("연령대:"+age);
	System.out.println("직업:"+job);
%>
</body>
</html>
















