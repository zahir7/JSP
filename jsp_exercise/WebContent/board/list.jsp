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
<title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="${bodyback_c}">
<center><b>�۸��(��ü ��:${count})</b>





<c:if test="${memId==null}">
<table width="700">
<tr>
    <td align="left" bgcolor="${value_c}">
    <a href="../0220ex/loginForm.jsp">�α���</a>
    </td>
    </tr>
    </table>
</c:if>
    

<c:if test="${memId!=null}">
 <table width="700">
<tr>
    <td align="left" bgcolor="${value_c}">
    <a href="/jsp/board/list.wo?writer="${memId}">���� �ۼ��� �ۺ���</a>
    <td align="right" bgcolor="${value_c}">
    <a href="/jsp/board/writeForm.wo">�۾���</a>
    <td align="right" bgcolor="${value_c }">
    <a href="../0220ex/logout.jsp">�α׾ƿ�</a>
    </td>
</table>
</c:if>

<c:if test="${count == 0}">
<table width="700" border="1" cellpadding="0" cellspacing="0">
<tr>
    <td align="center">
    �Խ��ǿ� ����� ���� �����ϴ�.
    </td>
</table>             <!--�Խ��ǿ� ����� ���� �����ϴٸ� ������.  --> 
</c:if>


<c:if test="${count > 0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
    <tr height="30" bgcolor="${value_c }"> 
      <td align="center"  width="50"  >�� ȣ</td> 
      <td align="center"  width="250" >��   ��</td> 
      <td align="center"  width="100" >�ۼ���</td>
      <td align="center"  width="150" >�ۼ���</td> 
      <td align="center"  width="50" >�� ȸ</td> 
      <td align="center"  width="100" >IP</td>    <!-- ��ȣ, ����, �ۼ���, �ۼ���, ��ȸ, IP�� ���η� ������ -->
    </tr>   

  <c:forEach var="article" items="${articleList}"> <!--   //�� ��ü ������ŭ for���� ���鼭 
                                                    // DBBean���� �޾ƿ� ���ڵ尪�� DataBean�� �־���.(DAo->DTO) -->
   <tr height="30">
    <td align="center"  width="50" >
    <c:out value="${number}"/>
    <c:set var="number" value="${number - 1}"/>
    </td> <!--�۹�ȣ�� ��������  --> 
    <td  width="250" >
	 <c:if test="${article.re_level > 0}">
	  	<img src="images/level.gif" width="${5 * article.re_level}" height="16">
	    <img src="images/re.gif">
	  </c:if>
	  <c:if test="${article.re_level == 0}">
	    <img src="images/level.gif" width="${5 * article.re_level}" height="16">
	  </c:if>
	
	
	
		<a href="pw.wo?num=${article.num}&pageNum=${currentPage}">  <!-- ���� ������ ������ get�������  content.jsp�� �Ѿ�� ��ũ -->
          ${article.subject}</a> 
          <c:if test="${article.readcount >= 20}">
         <img src="images/hot.gif" border="0"  height="16">
         </c:if> 
         </td> <!-- ��ȸ���� 20�� ������ hot �̹��� �߰� -->
         
    <td align="center"  width="100"> 
    <a href="mailto:${article.email}">${article.writer}</a>
	</td>
    <td align="center"  width="150">${article.reg_date}
	</td><!-- ��¥�� sdf �������� �ٲ㼭 ������-->
    <td align="center"  width="50">${article.readcount}</td>
    <td align="center" width="100" >${article.ip}</td>
  </tr>  <!-- �ۼ���, ��¥, ��ȸ��, IP�� ������ -->
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
        <a href="/jsp/board/list.wo?pageNum=${startPage - 10 }">[����]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/jsp/board/list.wo?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/jsp/board/list.wo?pageNum=${startPage + 10}">[����]</a>
   </c:if>
</c:if>

<form method="get" action="list.wo" >
<tr>
<td>���̵� �˻�
<input type="text" name="writer">
<input type="submit"  value="�˻�">
</td>
</tr>
</form>


</center>
</body>
</html>


	