<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "board.BoardDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/view/color.jspf"%>


<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="${bodyback_c}">
<center><b>글목록(전체 글:${count})</b>





<c:if test="${memId==null}">
<table width="700">
<tr>
    <td align="left" bgcolor="${value_c}">
    <a href="../0220ex/loginForm.jsp">로그인</a>
    </td>
    </tr>
    </table>
</c:if>
    

<c:if test="${memId!=null}">
 <table width="700">
<tr>
    <td align="left" bgcolor="${value_c}">
    <a href="/jsp/board/list.wo?writer="${memId}">내가 작성한 글보기</a>
    <td align="right" bgcolor="${value_c}">
    <a href="/jsp/board/writeForm.wo">글쓰기</a>
    <td align="right" bgcolor="${value_c }">
    <a href="../0220ex/logout.jsp">로그아웃</a>
    </td>
</table>
</c:if>

<c:if test="${count == 0}">
<table width="700" border="1" cellpadding="0" cellspacing="0">
<tr>
    <td align="center">
    게시판에 저장된 글이 없습니다.
    </td>
</table>             <!--게시판에 저장된 글이 없습니다를 보여줌.  --> 
</c:if>


<c:if test="${count > 0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
    <tr height="30" bgcolor="${value_c }"> 
      <td align="center"  width="50"  >번 호</td> 
      <td align="center"  width="250" >제   목</td> 
      <td align="center"  width="100" >작성자</td>
      <td align="center"  width="150" >작성일</td> 
      <td align="center"  width="50" >조 회</td> 
      <td align="center"  width="100" >IP</td>    <!-- 번호, 제목, 작성자, 작성일, 조회, IP를 가로로 보여줌 -->
    </tr>   

  <c:forEach var="article" items="${articleList}"> <!--   //글 전체 개수만큼 for문이 돌면서 
                                                    // DBBean에서 받아온 레코드값을 DataBean에 넣어줌.(DAo->DTO) -->
   <tr height="30">
    <td align="center"  width="50" >
    <c:out value="${number}"/>
    <c:set var="number" value="${number - 1}"/>
    </td> <!--글번호를 역순으로  --> 
    <td  width="250" >
	 <c:if test="${article.re_level > 0}">
	  	<img src="images/level.gif" width="${5 * article.re_level}" height="16">
	    <img src="images/re.gif">
	  </c:if>
	  <c:if test="${article.re_level == 0}">
	    <img src="images/level.gif" width="${5 * article.re_level}" height="16">
	  </c:if>
	
	
	
		<a href="pw.wo?num=${article.num}&pageNum=${currentPage}">  <!-- 글을 누르면 정보를 get방식으로  content.jsp로 넘어가게 링크 -->
          ${article.subject}</a> 
          <c:if test="${article.readcount >= 20}">
         <img src="images/hot.gif" border="0"  height="16">
         </c:if> 
         </td> <!-- 조회수가 20이 넘으면 hot 이미지 추가 -->
         
    <td align="center"  width="100"> 
    <a href="mailto:${article.email}">${article.writer}</a>
	</td>
    <td align="center"  width="150">${article.reg_date}
	</td><!-- 날짜를 sdf 포맷으로 바꿔서 보여줌-->
    <td align="center"  width="50">${article.readcount}</td>
    <td align="center" width="100" >${article.ip}</td>
  </tr>  <!-- 작성자, 날짜, 조회수, IP를 보여줌 -->
  </c:forEach>
</table>
</c:if>

<c:if test="${count > 0}">
   <c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}"/>
   <c:set var="pageBlock" value="${10}"/>
   <fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />
   <c:set var="startPage" value="${result * 10 + 1}" />
   <c:set var="endPage" value="${startPage + pageBlock-1}"/>
   <c:if test="${endPage > pageCount}">
        <c:set var="endPage" value="${pageCount}"/>
   </c:if> 
          
   <c:if test="${startPage > 10}">
        <a href="/jsp/board/list.wo?pageNum=${startPage - 10 }">[이전]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/jsp/board/list.wo?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/jsp/board/list.wo?pageNum=${startPage + 10}">[다음]</a>
   </c:if>
</c:if>

<form method="get" action="list.wo" >
<tr>
<td>아이디 검색
<input type="text" name="writer">
<input type="submit"  value="검색">
</td>
</tr>
</form>


</center>
</body>
</html>


	