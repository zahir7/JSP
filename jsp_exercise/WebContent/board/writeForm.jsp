<%@ page contentType="text/html; charset=euc-kr" %>
<%@ include file="/view/color.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<c:if test="${memId==null }">
�α����� �۾��Ⱑ �����մϴ�
<br>
<a href="/jsp/0220ex/main.jsp"></a>
</c:if>




   
<body bgcolor="${bodyback_c}">  
<center><b>�۾���</b>
<br>
<form method="post" name="writeform" action="/jsp/board/writePro.wo" onsubmit="return writeSave()">  <!-- �۾��� �ϸ� writePro�� �̵�,   -->
<input type="hidden" name="num" value="${num}">
<input type="hidden" name="ref" value="${ref}">
<input type="hidden" name="re_step" value="${re_step}">
<input type="hidden" name="re_level" value="${re_level}">

<table width="400" border="1" cellspacing="0" cellpadding="0"  bgcolor="${bodyback_c}" align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="${value_c}">
	    <a href="/jsp/board/list.wo"> �۸��</a> 
   </td>
   </tr>
   <tr>
    <td  width="70"  bgcolor="${value_c}" align="center">�� ��</td>
    <td  width="330">
    
    	
    	
   	    <input type="hidden" name="writer" value="${memId}" />   
   </td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center" >�� ��</td>
    <td  width="330">
    
    <c:if test="${num==null}">
       <input type="text" size="40" maxlength="50" name="subject"></td>
     </c:if>
	<c:if test="${num!=null}">
	   <input type="text" size="40" maxlength="50" name="subject" value="[�亯]">
	
  </tr>
  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center">Email</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="email" ></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >�� ��</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="${value_c}" align="center" >��й�ȣ</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" name="passwd"> 
	 </td>
  </tr>
<tr>      
 <td colspan=2 bgcolor="${value_c}" align="center"> 
  <input type="submit" value="�۾���" >  
  <input type="reset" value="�ٽ��ۼ�">
  <input type="button" value="��Ϻ���" OnClick="window.location='/jsp/board/list.wo'">
</td></tr></table>    
 </c:if>
</form>      
</body>
</html>      
