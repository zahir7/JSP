<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstl4.jsp</title>
</head>
<body>
<!-- 배열에 있는 내용을 반복문 돌면서 출력해보기 -->
<%
	String[] str={"치즈버거","와퍼","불고기버거","새우버거","치킨버거"};
	request.setAttribute("hamburgers", str);
	
	for(String tmp: str){
		out.print(tmp+" ");
	}
%>
<br/>
<!-- jstl 반복문을 이용해서 출력하기 -->
<c:forEach var="tmp" items="${hamburgers }">
	${tmp }
</c:forEach>
<br/>
</body>
</html>














