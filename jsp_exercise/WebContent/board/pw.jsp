<%@ page contentType="text/html;charset=euc-kr" %>
<%@ include file="/view/color.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



	<c:if test="${memId!=null}">
	<c:if test="${id==admin}">
	<jsp:forward page="/jsp/board/content.wo" />
	</c:if>
	</c:if>



 
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script language="JavaScript">      
<!--      
  function deleteSave(){	
	if(document.delForm.passwd.value==''){
	alert("비밀번호를 입력하십시요.");
	document.delForm.passwd.focus();
	return false;
 }
}    
// -->      
</script>
</head>

<body bgcolor="${bodyback_c}">
<center><b>비밀번호 입력</b>
<br>
<form method="POST" name="delForm"  action="/jsp/board/pwPro.wo?pageNum=${pageNum}" 
   onsubmit="return deleteSave()"> 
 <table border="1" align="center" cellspacing="0" cellpadding="0" width="360">
  <tr height="30">
     <td align=center  bgcolor="${value_c}">
       <b>비밀번호를 입력해 주세요.</b></td>
  </tr>
  <tr height="30">
     <td align=center >비밀번호 :   
       <input type="password" name="passwd" size="8" maxlength="12">
	   <input type="hidden" name="num" value="${num}"></td>	   
 </tr>
 <tr height="30">
    <td align=center bgcolor="${value_c}">
      <input type="submit" value="글읽기" >
      <input type="button" value="글목록" 
       onclick="document.location.href='list.wo?pageNum=${pageNum}'">     
   </td>
 </tr>  
</table> 
</form>
</body>
</html> 
