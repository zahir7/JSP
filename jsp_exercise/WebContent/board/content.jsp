<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "board.BoardDataBean" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ include file="/view/color.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="${bodyback_c}">  
<center><b>�۳��� ����</b>
<br>
<form>
<table width="500" border="1" cellspacing="0" cellpadding="0"  bgcolor="${bodyback_c}" align="center">  
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">�۹�ȣ</td>
    <td align="center" width="125" align="center">
	     ${article.num}</td>
    <td align="center" width="125" bgcolor="${value_c}">��ȸ��</td>
    <td align="center" width="125" align="center">
	     ${article.readcount}</td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">�ۼ���</td>
    <td align="center" width="125" align="center">
	     ${article.writer}</td>
    <td align="center" width="125" bgcolor="${alue_c}" >�ۼ���</td>
    <td align="center" width="125" align="center">
	     ${article.reg_date}</td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="${value_c}">������</td>
    <td align="center" width="375" align="center" colspan="3">
	     ${article.subject}</td>
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="${value_c}">�۳���</td>
    <td align="left" width="375" colspan="3"><pre>${article.content}</pre></td>
  </tr>
  
  <c:if test="${memId==null}">
  <tr height="30">      
    <td colspan="4" bgcolor="${value_c}" align="right" > 
	  
       <input type="button" value="�۸��" 
       onclick="document.location.href='/jsp/board/list.wo?pageNum=${pageNum}'">
    </td>
  </tr>
</table>  
</c:if>  
<c:if test="${memId==null}">
 <tr height="30">      
    <td colspan="4" bgcolor="${value_c}" align="right" > 
      <input type="button" value="�ۼ���" 
       onclick="document.location.href='/jsp/board/updateForm.wo?num=${article.num}&pageNum=${pageNum}'">
	   &nbsp;&nbsp;&nbsp;&nbsp; <!-- ������ ��ĭ -->
	  <input type="button" value="�ۻ���" 
       onclick="document.location.href='/jsp/board/deleteForm.wo?num=${article.num}&pageNum=${pageNum}'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	   
	  <c:set var="id" value="${sessionScope.memId}"/>
	  
	   
	   <c:if test="${id==admin }">
      <input type="button" value="��۾���" 
       onclick="document.location.href='/jsp/board/writeForm.wo?num=${num}&ref=${ref}&re_step=${re_step}&re_level=${re_level}'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	   </c:if>
	    <input type="button" value="�۸��" 
       onclick="document.location.href='/jsp/board/list.wo?pageNum=${pageNum}'">
    </td>
  </tr>
</table>   
</c:if>


</form>      
</body>
</html>      