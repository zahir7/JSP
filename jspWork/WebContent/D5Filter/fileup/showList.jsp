<%@page import="test.dto.FileupDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.dao.FileupDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 목록보기</title>
</head>
<body> 
<%	
	//DAO 객체의 참조값 얻어오기.
	FileupDAO dao=FileupDAO.getInstance();
	//파일 목록얻어오기.
	ArrayList<FileupDTO> list=dao.getList();
%>
<div>
<table border="1" width="800" cellspacing="0">
	<caption>파일 목록입니다.</caption>
	<tr>
		<th>파일번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>내용</th>
		<th>원본파일명</th>
		<th>다운로드</th>
		<th>삭제</th>
	</tr>
	<%for(FileupDTO tmp: list){%>
	<tr>
		<td><%=tmp.getNum() %></td>
		<td><%=tmp.getWriter() %></td>
		<td><%=tmp.getTitle() %></td>
		<td><%=tmp.getContent() %></td>
		<td><%=tmp.getOrgFileName() %></td>
		<td><a href="download.jsp?filenum=<%=tmp.getNum()%>">다운</a></td>
		<td><a href="delete.jsp?filenum=<%=tmp.getNum()%>">삭제</a></td>
	</tr>
	<%}%>
</table>
</div>
</body>
</html>


















