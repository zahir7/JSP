<%@page import="test.dao.MemDAO"%>
<%@page import="test.dto.MemDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>showList.jsp</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body> 
<%
	//DB 작업 하기 위해서
	MemDAO dao=MemDAO.getInstance();
	//회원 목록 얻어오기.
	ArrayList<MemDTO> list=dao.getList();
%>
<button>토글 버튼</button>
<div>
<table border="1" width="500" cellpadding="0">
	<caption>회원 목록입니다.</caption>
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>주소</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<%for(MemDTO dto:list){ %>
	<tr>
		<td><%=dto.getNum() %></td>
		<td><%=dto.getName() %></td>
		<td><%=dto.getAddr() %></td>
		<td><a href="update.jsp?num=<%=dto.getNum() %>">수정</a></td>
		<td><a href="delete.jsp?num=<%=dto.getNum() %>">삭제</a></td>
	</tr>	
	<%}%>
	<%! public void test(){
		//테스트 메소드 입니다.
		System.out.println("테스트");
	} %>
</table>
</div>
<script>
	$("button").click(function () {
		$("div").slideToggle("slow");
	});    
</script>
</body>
</html>

























