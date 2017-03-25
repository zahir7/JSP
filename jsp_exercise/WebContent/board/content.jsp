<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "board.BoardDataBean" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ include file="/view/color.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="${bodyback_c}">  
<center><b>글내용 보기</b>
<br>
<form>
<table width="500" border="1" cellspacing="0" cellpadding="0"  bgcolor="${bodyback_c}" align="center">  
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">글번호</td>
    <td align="center" width="125" align="center">
	     ${article.num}</td>
    <td align="center" width="125" bgcolor="${value_c}">조회수</td>
    <td align="center" width="125" align="center">
	     ${article.readcount}</td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">작성자</td>
    <td align="center" width="125" align="center">
	     ${article.writer}</td>
    <td align="center" width="125" bgcolor="${alue_c}" >작성일</td>
    <td align="center" width="125" align="center">
	     ${article.reg_date}</td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">글제목</td>
    <td align="center" width="375" align="center" colspan="3">
	     ${article.subject}</td>
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="${value_c}">글내용</td>
    <td align="left" width="375" colspan="3"><pre>${article.content}</pre></td>
  </tr>
  
  <c:if test="${memId==null}">
  <tr height="30">      
    <td colspan="4" bgcolor="${value_c}" align="right" > 
	  
       <input type="button" value="글목록" 
       onclick="document.location.href='/jsp/board/list.wo?pageNum=${pageNum}'">
    </td>
  </tr>
</table>  
</c:if>  
<c:if test="${memId==null}">
 <tr height="30">      
    <td colspan="4" bgcolor="${value_c}" align="right" > 
      <input type="button" value="글수정" 
       onclick="document.location.href='/jsp/board/updateForm.wo?num=${article.num}&pageNum=${pageNum}'">
	   &nbsp;&nbsp;&nbsp;&nbsp; <!-- 옆으로 한칸 -->
	  <input type="button" value="글삭제" 
       onclick="document.location.href='/jsp/board/deleteForm.wo?num=${article.num}&pageNum=${pageNum}'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	   
	  <c:set var="id" value="${sessionScope.memId}"/>
	  
	   
	   <c:if test="${id==admin }">
      <input type="button" value="답글쓰기" 
       onclick="document.location.href='/jsp/board/writeForm.wo?num=${num}&ref=${ref}&re_step=${re_step}&re_level=${re_level}'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	   </c:if>
	    <input type="button" value="글목록" 
       onclick="document.location.href='/jsp/board/list.wo?pageNum=${pageNum}'">
    </td>
  </tr>
</table>   
</c:if>


</form>      
</body>
</html>      