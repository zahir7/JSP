<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstl3.jsp</title>
</head>
<body>
<!-- 파라미터로 전송되는 값을 읽어와서 num 이라는 jstl 변수에 담는다. -->
<c:set var="num" value="${param.num }"></c:set> 
<c:choose>
	<c:when test="${num == 0 }">
		입력한 수는 0 입니다.
	</c:when>
	<c:when test="${num%2 == 0 }">
		입력한 수는 짝수 입니다.
	</c:when>
	<c:otherwise>
		입력한 수는 홀수 입니다.
	</c:otherwise>
</c:choose>
<br/>
<%	//위의 표현을 자바 코드로 바꾼다면 아래와 같다.
	int num=Integer.parseInt(request.getParameter("num"));
	
	if(num==0){
		out.print("입력한 수는 0입니다.");
	}else if(num%2 == 0){
		out.print("입력한 수는 짝수입니다.");
	}else{
		out.print("입력한 수는 홀수 입니다.");
	}

%>
</body>
</html>
















